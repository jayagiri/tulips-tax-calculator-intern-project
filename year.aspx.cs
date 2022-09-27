using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Drawing;

public partial class year : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["new"] != null)
        {
            Label_welcome.Text += Session["new"].ToString();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void B_logout_Click(object sender, EventArgs e)
    {
        Session["new"] = null;
        Response.Redirect("Default.aspx");
    }

    public static bool checkdate(string date)
    {
        string CS = ConfigurationManager.ConnectionStrings["signupdatabaseConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(("select * from year where year = '" + date + "'"), con);
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
    protected void addyear_Click(object sender, EventArgs e)
    {
        if (checkdate(txtyear.Text) == true)
        {
            if (txtyear.Text != "")
            {
                SqlConnection conn = ConnectionHelper.GetConnection();

                string insertQuery = "insert into year values(@year)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@year", txtyear.Text);

                com.ExecuteNonQuery();

                Response.Redirect("Admin.aspx");
            }
            else
            {
                Labeldate.Visible = false;
                Labeldate1.Visible=true;
                Labeldate1.Text = "Please insert a date.";
                Labeldate1.ForeColor = Color.Red;
            }
        }
        else
        {
            Labeldate1.Visible = false;
            Labeldate.Visible = true;
            Labeldate.Text = "This date already exists.";
            Labeldate.ForeColor = Color.Red;
        }

     
    }
}