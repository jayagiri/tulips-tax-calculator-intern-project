using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Net.Mail;
using System.Net;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_send_Click(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["signupdatabaseConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from signup where Email = '"+Email.Text+"'",con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                string myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand cmd1 = new SqlCommand("insert into ForgotPasswordRequest values('" + myGUID + "','" + Uid + "',getdate())", con);
                cmd1.ExecuteNonQuery();

                //send mail
                string ToEmailAddress = dt.Rows[0][5].ToString();
                string Username = dt.Rows[0][4].ToString();
                string EmailBody = "Hi '"+Username+"', <br/><br/> Click the link below to reset your Password.<br/><br/> http://localhost:58899/RecoverPassword.aspx?Uid=" + myGUID;
                MailMessage PassRecMail = new MailMessage("subashghimireedu@gmail.com", ToEmailAddress);
                PassRecMail.Body = EmailBody;
                PassRecMail.IsBodyHtml = true;
                PassRecMail.Subject = "Reset Email";

                SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                SMTP.Credentials = new NetworkCredential()
                {
                    UserName = "subashghimireedu@gmail.com",
                    Password = "roshan9808074287"
                };
                SMTP.EnableSsl = true;
                SMTP.Send(PassRecMail);
               
                LabelSent.Visible = true;
                LabelSent.Text = "Check your email to reset your Password.";
                LabelSent.ForeColor = Color.Green;

            }
            else {
                LabelSent.Visible = true;
                LabelSent.Text = "Opps! This Email Id DOES NOT exists in our Database.";
                LabelSent.ForeColor = Color.Red;
            }

        }
    }
    protected void Sign_in_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["signupdatabaseConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("Select * from signup where UserName ='" + TextBoxUserName.Text + "' and Password ='" + TextBoxPassWord.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                if (CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value = TextBoxUserName.Text;
                    Response.Cookies["PWD"].Value = TextBoxPassWord.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);
                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                }

                string Utype;
                Utype = dt.Rows[0][7].ToString().Trim();
                if (Utype == "U")
                {
                    Session["new"] = TextBoxUserName.Text;
                    Response.Redirect("UserPage.aspx");
                }
                if (Utype == "A")
                {
                    Session["new"] = TextBoxUserName.Text;
                    Response.Redirect("Admin.aspx");
                }

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid Username or Password.');</script>");
            }
        }
    }
}