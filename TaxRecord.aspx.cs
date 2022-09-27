using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            getYear();
        }
        if (Session["new"] != null)
        {
            string name1 = Session["new"].ToString();
            SqlConnection con = ConnectionHelper.GetConnection();
            string sp = "USP_GetTax";
            SqlCommand cmd = new SqlCommand(sp, con);
            cmd.CommandType = CommandType.StoredProcedure;
            int yid = int.Parse(Session["yid"].ToString());
            cmd.Parameters.AddWithValue("@Uid", GetIDByUsername(name1));
            cmd.Parameters.AddWithValue("@Year",yid);



            SqlDataReader _Reader = cmd.ExecuteReader();
            _Reader.Read();


            salary.Text = ((_Reader["salary"].ToString()));
            bonus.Text = ((_Reader["bonus"].ToString()));
            ot.Text = ((_Reader["ot"].ToString()));
            eta.Text = ((_Reader["eta"].ToString()));
            leave.Text = ((_Reader["leave"].ToString()));
            pg.Text = ((_Reader["pg"].ToString()));
            pof.Text = ((_Reader["pof"].ToString()));
            da.Text = ((_Reader["da"].ToString()));
            cla.Text = ((_Reader["cla"].ToString()));
            ra.Text = ((_Reader["ra"].ToString()));
            drpc.Text = ((_Reader["drpc"].ToString()));
            prlte.Text = ((_Reader["prlte"].ToString()));
            rcrp.Text = ((_Reader["rcrp"].ToString()));
            pace.Text = ((_Reader["pace"].ToString()));
            fbvf.Text = ((_Reader["fbvf"].ToString()));
            fbhf.Text = ((_Reader["fbhf"].ToString()));
            fbhcgoda.Text = ((_Reader["fbhcgoda"].ToString()));
            fbmre.Text = ((_Reader["fbmre"].ToString()));
            fbdwetsu.Text = ((_Reader["fbdwetsu"].ToString()));
            daimrs.Text = ((_Reader["daimrs"].ToString()));
            oair.Text = ((_Reader["oair"].ToString()));
            others.Text = ((_Reader["others"].ToString()));
            epf.Text = ((_Reader["epf"].ToString()));
            cfi.Text = ((_Reader["cfi"].ToString()));
            Insurance.Text = ((_Reader["Insurance"].ToString()));
            ame.Text = ((_Reader["ame"].ToString()));
            amep.Text = ((_Reader["ameded"].ToString()));
            tax.Text = ((_Reader["tax"].ToString()));

        }
        else
        {
            Response.Redirect("signup.aspx");
        }

      


    }


    protected void sighout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
        Session["new"] = null;
    }

    public static int GetIDByUsername(String UserName)
    {
        int CategoryName;
        SqlConnection con = ConnectionHelper.GetConnection();
        string sp = "USP_GetUserID";
        SqlCommand cmd = new SqlCommand(sp, con);
        cmd.Parameters.Add(new SqlParameter("@Username", UserName));
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            SqlDataReader _Reader = cmd.ExecuteReader();
            _Reader.Read();

            CategoryName = (int.Parse(_Reader["Uid"].ToString()));
            return CategoryName;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    public void getYear()
    {
        string name1 = Session["new"].ToString();
        int id = GetIDByUsername(name1);
        string CS = ConfigurationManager.ConnectionStrings["signupdatabaseConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(("SELECT year.year, Tax.sid, Tax.yid FROM Tax INNER JOIN year ON Tax.yid = year.yid where Tax.sid='" + id + "' order by year desc"), con);
            DataTable dt = new DataTable();
            SqlDataAdapter ads = new SqlDataAdapter(cmd);
            ads.Fill(dt);
            year.DataSource = dt;
            year.DataTextField = "year";
            year.DataValueField = "yid";
            year.DataBind();
        }
    }

    protected void year_SelectedIndexChanged(object sender, EventArgs e)
    {
        string name1 = Session["new"].ToString();
        SqlConnection con = ConnectionHelper.GetConnection();
        string sp = "USP_GetTax";
        SqlCommand cmd = new SqlCommand(sp, con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@uid", GetIDByUsername(name1));
        cmd.Parameters.AddWithValue("@year", decimal.Parse(year.SelectedValue));
       
            SqlDataReader _Reader = cmd.ExecuteReader();
            _Reader.Read();
            salary.Text = ((_Reader["salary"].ToString()));
            bonus.Text = ((_Reader["bonus"].ToString()));
            ot.Text = ((_Reader["ot"].ToString()));
            eta.Text = ((_Reader["eta"].ToString()));
            leave.Text = ((_Reader["leave"].ToString()));
            pg.Text = ((_Reader["pg"].ToString()));
            pof.Text = ((_Reader["pof"].ToString()));
            da.Text = ((_Reader["da"].ToString()));
            cla.Text = ((_Reader["cla"].ToString()));
            ra.Text = ((_Reader["ra"].ToString()));
            drpc.Text = ((_Reader["drpc"].ToString()));
            prlte.Text = ((_Reader["prlte"].ToString()));
            rcrp.Text = ((_Reader["rcrp"].ToString()));
            pace.Text = ((_Reader["pace"].ToString()));
            fbvf.Text = ((_Reader["fbvf"].ToString()));
            fbhf.Text = ((_Reader["fbhf"].ToString()));
            fbhcgoda.Text = ((_Reader["fbhcgoda"].ToString()));
            fbmre.Text = ((_Reader["fbmre"].ToString()));
            fbdwetsu.Text = ((_Reader["fbdwetsu"].ToString()));
            daimrs.Text = ((_Reader["daimrs"].ToString()));
            oair.Text = ((_Reader["oair"].ToString()));
            others.Text = ((_Reader["others"].ToString()));
            epf.Text = ((_Reader["epf"].ToString()));
            cfi.Text = ((_Reader["cfi"].ToString()));
            Insurance.Text = ((_Reader["Insurance"].ToString()));
            ame.Text = ((_Reader["ame"].ToString()));
            amep.Text = ((_Reader["ameded"].ToString()));
            tax.Text = ((_Reader["tax"].ToString()));
        

    }
}








