using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    public static bool checkuser(string user)
    {
        string CS = ConfigurationManager.ConnectionStrings["signupdatabaseConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(("Select * From signup Where UserName = '" + user + "'"),con);
            DataTable dt = new DataTable();
            SqlDataAdapter ads = new SqlDataAdapter(cmd);
            ads.Fill(dt);

            if (dt.Rows.Count == 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
    protected void BtSignUp_Click(object sender, EventArgs e)
    {
        if (checkuser(tbUname.Text) == true)
        {

            SqlConnection conn = ConnectionHelper.GetConnection();

            string insertQuery = "insert into signup(Name,Gender,MarritalStatus,UserName,Email,Password,Usertype) values(@Name,@Gender,@MarritalStatus,@UserName,@Email,@Password,'U')";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@Name", tbName.Text);
            com.Parameters.AddWithValue("@Gender", DropDownListGender.SelectedItem.ToString());
            com.Parameters.AddWithValue("@MarritalStatus", DropDownListMStatus.SelectedItem.ToString());
            com.Parameters.AddWithValue("@UserName", tbUname.Text);
            com.Parameters.AddWithValue("@Email", tbEmail.Text);
            com.Parameters.AddWithValue("@Password", tbPassword.Text);

            com.ExecuteNonQuery();

            String CS = ConfigurationManager.ConnectionStrings["signupdatabaseConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Select * from signup where UserName ='" + tbUname.Text + "' and Password ='" + tbPassword.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {

                    
                    
                        Session["new"] = tbUname.Text;
                        Response.Redirect("UserPage.aspx");
                    
                    

                }

            }
        }
        else
        {
            Label7.Visible = true;
            Label7.Text = "Username already exists";
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