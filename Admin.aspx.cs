using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
        if (!IsPostBack)
        {
            getYear();
        }
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
    public void getYear()
    {
        string CS = ConfigurationManager.ConnectionStrings["signupdatabaseConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(("Select * from year"), con);
            DataTable dt = new DataTable();
            SqlDataAdapter ads = new SqlDataAdapter(cmd);
            ads.Fill(dt);
            year.DataSource = dt;
            year.DataTextField = "year";
            year.DataValueField = "id";
            year.DataBind();
        }
    }
 
   protected void Taxsingle_Click(object sender, EventArgs e)
    {
            SqlConnection conn = ConnectionHelper.GetConnection();
            string insertQuery = "insert into Taxsingles(year,Firstts,Secondts,Thirdts,Fourthts,famount,samount,tamount) values(@year,@Firstts,@Secondts,@Thirdts,@Fourthts,@famount,@samount,@tamount)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@Firstts", SFirstts.Text);
            com.Parameters.AddWithValue("@Secondts", SSecondts.Text);
            com.Parameters.AddWithValue("@Thirdts", SThirsts.Text);
            com.Parameters.AddWithValue("@Fourthts", SFourthts.Text);
            com.Parameters.AddWithValue("@famount", ss1.Text);
            com.Parameters.AddWithValue("@samount", ss2.Text);
            com.Parameters.AddWithValue("@tamount", ss3.Text);
            com.Parameters.AddWithValue("@year", Int32.Parse(year.SelectedValue));
            com.ExecuteNonQuery();
          
            SFirstts.Text = "";
            SSecondts.Text = "";
            SThirsts.Text = "";
            SFourthts.Text = "";
            ss1.Text = "";
            ss2.Text = "";
            ss3.Text = "";
            Paneldmarried.Visible = false;
            Paneldivorced.Visible = false;
            Panelmarried.Visible = false;
            Paneldsingle.Visible = false;
            Panelsingle.Visible = true;
    }
    protected void Taxmarried_Click(object sender, EventArgs e)
    {

        SqlConnection conn = ConnectionHelper.GetConnection();

        string insertQuery = "insert into Taxmarried(year,Firstts,Secondts,Thirdts,Fourthts,famount,samount,tamount) values(@year,@Firstts,@Secondts,@Thirdts,@Fourthts,@famount,@samount,@tamount)";
        SqlCommand com = new SqlCommand(insertQuery, conn);
        com.Parameters.AddWithValue("@year", Int32.Parse(year.SelectedValue));   
        com.Parameters.AddWithValue("@Firstts", MFirstts.Text);
        com.Parameters.AddWithValue("@Secondts", MSecondts.Text);
        com.Parameters.AddWithValue("@Thirdts", MThirsts.Text);
        com.Parameters.AddWithValue("@Fourthts", MFourthts.Text);
        com.Parameters.AddWithValue("@famount", ms1.Text);
        com.Parameters.AddWithValue("@samount", ms2.Text);
        com.Parameters.AddWithValue("@tamount", ms3.Text);
        com.ExecuteNonQuery();
        MFirstts.Text = "";
        MSecondts.Text = "";
        MThirsts.Text = "";
        MFourthts.Text = "";
        ms1.Text = "";
        ms2.Text = "";
        ms3.Text = "";
        Paneldmarried.Visible = false;
        Paneldivorced.Visible = false;
        Panelmarried.Visible = true;
        Paneldsingle.Visible = false;
        Panelsingle.Visible = false;
     
    }
    protected void Taxdivorced_Click(object sender, EventArgs e)
    {

        SqlConnection conn = ConnectionHelper.GetConnection();
        string insertQuery = "insert into Taxdivorced(year,Firstts,Secondts,Thirdts,Fourthts,famount,samount,tamount) values(@year,@Firstts,@Secondts,@Thirdts,@Fourthts,@famount,@samount,@tamount)";
        SqlCommand com = new SqlCommand(insertQuery, conn);
        com.Parameters.AddWithValue("@year", Int32.Parse(year.SelectedValue));   
        com.Parameters.AddWithValue("@Firstts", DFirstts.Text);
        com.Parameters.AddWithValue("@Secondts", DSecondts.Text);
        com.Parameters.AddWithValue("@Thirdts", DThirsts.Text);
        com.Parameters.AddWithValue("@Fourthts", DFourthts.Text);
        com.Parameters.AddWithValue("@famount", ds1.Text);
        com.Parameters.AddWithValue("@samount", ds2.Text);
        com.Parameters.AddWithValue("@tamount", ds3.Text);
        com.ExecuteNonQuery();
        DFirstts.Text = "";
        DSecondts.Text = "";
        DThirsts.Text = "";
        DFourthts.Text = "";
        ds1.Text = "";
        ds2.Text = "";
        ds3.Text = "";
        GridView11.DataBind();
        Paneldmarried.Visible = false;
        Paneldivorced.Visible = true;
        Panelmarried.Visible = false;
        Paneldsingle.Visible = false;
        Panelsingle.Visible = false;

        
    }
    protected void Taxdisablesingle_Click(object sender, EventArgs e)
    {

        SqlConnection conn = ConnectionHelper.GetConnection();
        string insertQuery = "insert into Taxdisablesingle(year,Firstts,Secondts,Thirdts,Fourthts,famount,samount,tamount) values(@year,@Firstts,@Secondts,@Thirdts,@Fourthts,@famount,@samount,@tamount)";
        SqlCommand com = new SqlCommand(insertQuery, conn);
        com.Parameters.AddWithValue("@year", Int32.Parse(year.SelectedValue));   
        com.Parameters.AddWithValue("@Firstts", DSFirstts.Text);
        com.Parameters.AddWithValue("@Secondts", DSSecondts.Text);
        com.Parameters.AddWithValue("@Thirdts", DSThirsts.Text);
        com.Parameters.AddWithValue("@Fourthts", DSFourthts.Text);
        com.Parameters.AddWithValue("@famount", dss1.Text);
        com.Parameters.AddWithValue("@samount", dss2.Text);
        com.Parameters.AddWithValue("@tamount", dss3.Text);
        com.ExecuteNonQuery();
        DSFirstts.Text = "";
        DSSecondts.Text = "";
        DSThirsts.Text = "";
        DSFourthts.Text = "";
        dss1.Text = "";
        dss2.Text = "";
        dss3.Text = "";
        Paneldmarried.Visible = false;
        Paneldivorced.Visible = false;
        Panelmarried.Visible = false;
        Paneldsingle.Visible = true;
        Panelsingle.Visible = false;
        
    }
    protected void Taxdisablemarried_Click(object sender, EventArgs e)
    {

        SqlConnection conn = ConnectionHelper.GetConnection();

        string insertQuery = "insert into Taxdisablemarried (year,Firstts,Secondts,Thirdts,Fourthts,famount,samount,tamount) values(@year,@Firstts,@Secondts,@Thirdts,@Fourthts,@famount,@samount,@tamount)";
        SqlCommand com = new SqlCommand(insertQuery, conn);
        com.Parameters.AddWithValue("@year", Int32.Parse(year.SelectedValue));   
        com.Parameters.AddWithValue("@Firstts", DMFirstts.Text);
        com.Parameters.AddWithValue("@Secondts", DMSecondts.Text);
        com.Parameters.AddWithValue("@Thirdts", DMThirsts.Text);
        com.Parameters.AddWithValue("@Fourthts", DMFourthts.Text);
        com.Parameters.AddWithValue("@famount", dms1.Text);
        com.Parameters.AddWithValue("@samount", dms2.Text);
        com.Parameters.AddWithValue("@tamount", dms3.Text);
        com.ExecuteNonQuery();
        DMFirstts.Text = "";
        DMSecondts.Text = "";
        DMThirsts.Text = "";
        DMFourthts.Text = "";
        dms1.Text = "";
        dms2.Text = "";
        dms3.Text = "";
        Paneldmarried.Visible = true;
        Paneldivorced.Visible = false;
        Panelmarried.Visible = false;
        Paneldsingle.Visible = false;
        Panelsingle.Visible = false;

        
    }


    

    protected void drpfilingstatus_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drpfilingstatus.SelectedValue == "single")
        {
            Panelsingle.Visible = true;
            Panelmarried.Visible = false;
            Paneldivorced.Visible = false;
            Paneldmarried.Visible = false;
            Paneldsingle.Visible = false;

        }
        else if (drpfilingstatus.SelectedValue == "married")
        {
            Panelsingle.Visible = false;
            Panelmarried.Visible = true;
            Paneldivorced.Visible = false;
            Paneldmarried.Visible = false;
            Paneldsingle.Visible = false;
        }
        else if (drpfilingstatus.SelectedValue == "divorced")
        {
            Panelsingle.Visible = false;
            Panelmarried.Visible = false;
            Paneldivorced.Visible = true;
            Paneldmarried.Visible = false;
            Paneldsingle.Visible = false;
        }
        else if (drpfilingstatus.SelectedValue == "dmarried")
        {
            Panelsingle.Visible = false;
            Panelmarried.Visible = false;
            Paneldivorced.Visible = false;
            Paneldmarried.Visible = true;
            Paneldsingle.Visible = false;
        }
        else
        {
            Panelsingle.Visible = false;
            Panelmarried.Visible = false;
            Paneldivorced.Visible = false;
            Paneldmarried.Visible = false;
            Paneldsingle.Visible = true;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("year.aspx");
    }
    public void BindGridView()
    {
        SqlConnection conn = ConnectionHelper.GetConnection();
        string Query = "SELECT Taxsingles.Firstts, Taxsingles.Secondts, Taxsingles.Thirdts, Taxsingles.Fourthts, Taxsingles.famount, Taxsingles.samount, Taxsingles.tamount, year.year FROM Taxsingles INNER JOIN year ON Taxsingles.year = year.id";
        SqlCommand cmd = new SqlCommand(Query, conn);
        SqlDataAdapter dt = new SqlDataAdapter(cmd);
        DataTable sda = new DataTable();
        dt.Fill(sda);
        GridView6.DataSource = sda;
        GridView6.DataBind();
    }

}










