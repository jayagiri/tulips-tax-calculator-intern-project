using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class RecoverPassword : System.Web.UI.Page
{
    string CS = ConfigurationManager.ConnectionStrings["signupdatabaseConnectionString"].ConnectionString;
    string GUIDvalue;
    DataTable dt = new DataTable();
    int Uid;

    protected void Page_Load(object sender, EventArgs e)
    {
        using(SqlConnection con = new SqlConnection(CS))
        {
            GUIDvalue = Request.QueryString["Uid"];
            if (GUIDvalue != null)
            {
                SqlCommand cmd = new SqlCommand("select * from ForgotPasswordRequest where id = '" + GUIDvalue + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    Uid = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {
                    lblmsg.Text = "Your Password reset link is expired or invalid !";
                    lblmsg.ForeColor = Color.Red; 
                }
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
        if (!IsPostBack)
        {
            tbNewPass.Visible = true;
            tbConfirmPass.Visible = true;
            lblRetypePass.Visible = true;
            lblPassword.Visible = true;
            Button_RePass.Visible = true;
        }
        else
        {
            lblmsg.Text = "Your Password reset link is expired or invalid !";
            lblmsg.ForeColor = Color.Red;
        }
    }
    protected void Button_RePass_Click(object sender, EventArgs e)
    {
        if (tbNewPass.Text != "" && tbConfirmPass.Text != "" && tbNewPass.Text == tbConfirmPass.Text)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("update signup set Password= '" + tbNewPass.Text + "'where Uid='" + Uid + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                SqlCommand cmd2 = new SqlCommand("delete from ForgotPasswordRequest where Uid = '" + Uid + "'", con);
                cmd2.ExecuteNonQuery();
                Response.Redirect("Default.aspx");
            }
        }
    }
}