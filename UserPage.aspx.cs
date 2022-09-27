using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
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
        if (!IsPostBack)
        {
            getYear();
            salary.Text = "";
            bonus.Text = "";
            ot.Text = "";
            eta.Text = "";
            leave.Text = "";
            pg.Text = "";
            pof.Text = "";
            da.Text = "";
            cla.Text = "";
            ra.Text = "";
            drpc.Text = "";
            pace.Text = "";
            prlte.Text = "";
            rcrp.Text = "";
            fbvf.Text = "";
            fbhf.Text = "";
            fbhcgoda.Text = "";
            fbmre.Text = "";
            fbdwetsu.Text = "";
            daimrs.Text = "";
            oair.Text = "";
            others.Text = "";
            epf.Text = "";
            cfi.Text = "";
            Insurance.Text = "";
            ame.Text = "";
            AssessableIncome.Text = "";
            MedicalTax.Text = "";
            NetTaxLiability.Text = "";

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
            year.DataValueField = "yid";
            year.DataBind();
        }

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
    public static Single getAlltaxrateandAmountSingle(int year)
    {
        string CS = ConfigurationManager.ConnectionStrings["signupdatabaseConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(("Select * from Taxsingles where year='" + year + "'"), con);
            {
                SqlDataReader _Reader = cmd.ExecuteReader();
                _Reader.Read();
                Single s = new Single();

                s.Firstts = double.Parse(((_Reader["Firstts"].ToString())));
                s.Secondts = double.Parse(((_Reader["Secondts"].ToString())));
                s.Thirdts = double.Parse(((_Reader["Thirdts"].ToString())));
                s.Fourthts = double.Parse(((_Reader["Fourthts"].ToString())));
                s.famount = Int32.Parse(((_Reader["famount"].ToString())));
                s.samount = Int32.Parse(((_Reader["samount"].ToString())));
                s.tamount = Int32.Parse(((_Reader["tamount"].ToString())));
                return s;
            }

        }
    }
    public static Married getAlltaxrateandAmountMarried(int year)
    {
        string CS = ConfigurationManager.ConnectionStrings["signupdatabaseConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(("Select * from Taxmarried where year='" + year + "'"), con);
            {
                SqlDataReader _Reader = cmd.ExecuteReader();
                _Reader.Read();
                Married s1 = new Married();

                s1.Firstts = double.Parse(((_Reader["Firstts"].ToString())));
                s1.Secondts = double.Parse(((_Reader["Secondts"].ToString())));
                s1.Thirdts = double.Parse(((_Reader["Thirdts"].ToString())));
                s1.Fourthts = double.Parse(((_Reader["Fourthts"].ToString())));
                s1.famount = Int32.Parse(((_Reader["famount"].ToString())));
                s1.samount = Int32.Parse(((_Reader["samount"].ToString())));
                s1.tamount = Int32.Parse(((_Reader["tamount"].ToString())));
                return s1;
            }

        }
    }
    public static Divorced getAlltaxrateandAmountDivorced(int year)
    {
        string CS = ConfigurationManager.ConnectionStrings["signupdatabaseConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(("Select * from Taxdivorced where year='" + year + "'"), con);

            {
                SqlDataReader _Reader = cmd.ExecuteReader();
                _Reader.Read();
                Divorced s2 = new Divorced();

                s2.Firstts = double.Parse(((_Reader["Firstts"].ToString())));
                s2.Secondts = double.Parse(((_Reader["Secondts"].ToString())));
                s2.Thirdts = double.Parse(((_Reader["Thirdts"].ToString())));
                s2.Fourthts = double.Parse(((_Reader["Fourthts"].ToString())));
                s2.famount = Int32.Parse(((_Reader["famount"].ToString())));
                s2.samount = Int32.Parse(((_Reader["samount"].ToString())));
                s2.tamount = Int32.Parse(((_Reader["tamount"].ToString())));
                return s2;




            }

        }
    }
    public static Dsingle getAlltaxrateandAmountDsingle(int year)
    {
        string CS = ConfigurationManager.ConnectionStrings["signupdatabaseConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(("Select * from Taxdisablesingle where year='" + year + "'"), con);

            {
                SqlDataReader _Reader = cmd.ExecuteReader();
                _Reader.Read();
                Dsingle s3 = new Dsingle();

                s3.Firstts = double.Parse(((_Reader["Firstts"].ToString())));

                s3.Secondts = double.Parse(((_Reader["Secondts"].ToString())));
                s3.Thirdts = double.Parse(((_Reader["Thirdts"].ToString())));
                s3.Fourthts = double.Parse(((_Reader["Fourthts"].ToString())));
                s3.famount = Int32.Parse(((_Reader["famount"].ToString())));
                s3.samount = Int32.Parse(((_Reader["samount"].ToString())));
                s3.tamount = Int32.Parse(((_Reader["tamount"].ToString())));
                return s3;




            }

        }
    }
    public static Dmarried getAlltaxrateandAmountDmarried(int year)
    {
        string CS = ConfigurationManager.ConnectionStrings["signupdatabaseConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(("Select * from Taxdisablemarried where year='" + year + "'"), con);

            {
                SqlDataReader _Reader = cmd.ExecuteReader();
                _Reader.Read();
                Dmarried s4 = new Dmarried();

                s4.Firstts = double.Parse(((_Reader["Firstts"].ToString())));

                s4.Secondts = double.Parse(((_Reader["Secondts"].ToString())));
                s4.Thirdts = double.Parse(((_Reader["Thirdts"].ToString())));
                s4.Fourthts = double.Parse(((_Reader["Fourthts"].ToString())));
                s4.famount = Int32.Parse(((_Reader["famount"].ToString())));
                s4.samount = Int32.Parse(((_Reader["samount"].ToString())));
                s4.tamount = Int32.Parse(((_Reader["tamount"].ToString())));
                return s4;




            }

        }
    }

    protected void calculate_Click(object sender, EventArgs e)
    {

        if (drpfilingstatus.SelectedValue == "0")
        {

            Single gettax = getAlltaxrateandAmountSingle(Int32.Parse(year.SelectedValue));
            double a, b, c, d, dd, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z;
            if (salary.Text == "")
            {
                a = 0;
            }
            else
            {

                a = Convert.ToDouble(salary.Text);


            }


            if (bonus.Text == "")
            {

                b = 0;

            }


            else
            {


                b = Convert.ToDouble(bonus.Text);
            }

            if (ot.Text == "")
            {

                c = 0;

            }


            else
            {
                c = Convert.ToDouble(ot.Text);
            }
            if (leave.Text == "")
            {

                d = 0;

            }


            else
            {

                d = Convert.ToDouble(leave.Text);
            }
            if (pg.Text == "")
            {

                dd = 0;

            }


            else
            {
                dd = Convert.ToDouble(pg.Text);
            }

            if (pof.Text == "")
            {

                f = 0;

            }


            else
            {
                f = Convert.ToDouble(pof.Text);
            }

            if (eta.Text == "")
            {

                g = 0;

            }


            else
            {
                g = Convert.ToDouble(eta.Text);
            }
            if (da.Text == "")
            {

                h = 0;

            }


            else
            {
                h = Convert.ToDouble(da.Text);
            }
            if (cla.Text == "")
            {

                i = 0;

            }


            else
            {
                i = Convert.ToDouble(cla.Text);
            }

            if (ra.Text == "")
            {

                j = 0;

            }


            else
            {
                j = Convert.ToDouble(ra.Text);
            }
            if (drpc.Text == "")
            {

                k = 0;

            }


            else
            {
                k = Convert.ToDouble(drpc.Text);
            }
            if (prlte.Text == "")
            {

                l = 0;

            }


            else
            {
                l = Convert.ToDouble(prlte.Text);
            }
            if (rcrp.Text == "")
            {

                m = 0;

            }


            else
            {
                m = Convert.ToDouble(rcrp.Text);
            }
            if (pace.Text == "")
            {

                n = 0;

            }


            else
            {

                n = Convert.ToDouble(pace.Text);
            }
            if (fbvf.Text == "")
            {

                o = 0;

            }


            else
            {
                o = Convert.ToDouble(fbvf.Text);
            }
            if (fbhf.Text == "")
            {

                p = 0;

            }


            else
            {
                p = Convert.ToDouble(fbhf.Text);
            }
            if (fbhcgoda.Text == "")
            {

                q = 0;

            }


            else
            {
                q = Convert.ToDouble(fbhcgoda.Text);
            }

            if (fbmre.Text == "")
            {

                r = 0;

            }


            else
            {
                r = Convert.ToDouble(fbmre.Text);
            }
            if (fbdwetsu.Text == "")
            {

                s = 0;

            }


            else
            {

                s = Convert.ToDouble(fbdwetsu.Text);
            }
            if (daimrs.Text == "")
            {

                t = 0;

            }


            else
            {
                t = Convert.ToDouble(daimrs.Text);
            }
            if (oair.Text == "")
            {

                u = 0;

            }


            else
            {
                u = Convert.ToDouble(oair.Text);
            }
            if (others.Text == "")
            {

                v = 0;

            }


            else
            {
                v = Convert.ToDouble(others.Text);
            }
            if (epf.Text == "")
            {

                w = 0;

            }


            else
            {
                w = Convert.ToDouble(epf.Text);
            }
            if (cfi.Text == "")
            {

                x = 0;

            }


            else
            {
                x = Convert.ToDouble(cfi.Text);
            }
            if (Insurance.Text == "")
            {

                y = 0;

            }


            else
            {
                y = Convert.ToDouble(Insurance.Text);
            }

            if (ame.Text == "")
            {

                z = 0;

            }


            else
            {
                z = Convert.ToDouble(ame.Text);
            }
            double medical = z * 0.15;

            double added = a + b + c + d + dd + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t + u + v - w - x - y;
            if (added <= gettax.famount && added != 0)
            {
                double Tax = added * (gettax.Firstts / 100);
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }

            else if (added > gettax.famount && added <= gettax.samount && added != 0)
            {
                double Tax = ((added - gettax.famount) * (gettax.Secondts / 100)) + (gettax.famount * (gettax.Firstts / 100));
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }
            else if (added > gettax.samount && added <= gettax.tamount && added != 0)
            {
                double Tax = ((added - gettax.samount) * (gettax.Thirdts / 100)) + ((gettax.famount * (gettax.Firstts / 100)) + ((gettax.samount - gettax.famount) * (gettax.Secondts / 100)));
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }
            else if (added > gettax.tamount && added != 0)
            {
                double Tax = (gettax.famount * (gettax.Firstts / 100)) + ((gettax.samount - gettax.famount) * (gettax.Secondts / 100)) + ((gettax.tamount - gettax.samount) * (gettax.Thirdts / 100)) + ((added - gettax.tamount) * (gettax.Fourthts / 100));
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }
            else
            {

                Panelcalculation.Visible = false;
                LabelSave.Visible = false;
                Labeltxt.Visible = true;
                Labeltxt.Text = "Invalid Net Assessable!!!";
            }
        }




        if (drpfilingstatus.SelectedValue == "1")
        {

            Married gettax = getAlltaxrateandAmountMarried(Int32.Parse(year.SelectedValue));

            double a, b, c, d, dd, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z;
            if (salary.Text == "")
            {

                a = 0;

            }

            else
            {

                a = Convert.ToDouble(salary.Text);


            }


            if (bonus.Text == "")
            {

                b = 0;

            }


            else
            {


                b = Convert.ToDouble(bonus.Text);
            }

            if (ot.Text == "")
            {

                c = 0;

            }


            else
            {
                c = Convert.ToDouble(ot.Text);
            }
            if (leave.Text == "")
            {

                d = 0;

            }


            else
            {

                d = Convert.ToDouble(leave.Text);
            }
            if (pg.Text == "")
            {

                dd = 0;

            }


            else
            {
                dd = Convert.ToDouble(pg.Text);
            }

            if (pof.Text == "")
            {

                f = 0;

            }


            else
            {
                f = Convert.ToDouble(pof.Text);
            }

            if (eta.Text == "")
            {

                g = 0;

            }


            else
            {
                g = Convert.ToDouble(eta.Text);
            }
            if (da.Text == "")
            {

                h = 0;

            }


            else
            {
                h = Convert.ToDouble(da.Text);
            }
            if (cla.Text == "")
            {

                i = 0;

            }


            else
            {
                i = Convert.ToDouble(cla.Text);
            }

            if (ra.Text == "")
            {

                j = 0;

            }


            else
            {
                j = Convert.ToDouble(ra.Text);
            }
            if (drpc.Text == "")
            {

                k = 0;

            }


            else
            {
                k = Convert.ToDouble(drpc.Text);
            }
            if (prlte.Text == "")
            {

                l = 0;

            }


            else
            {
                l = Convert.ToDouble(prlte.Text);
            }
            if (rcrp.Text == "")
            {

                m = 0;

            }


            else
            {
                m = Convert.ToDouble(rcrp.Text);
            }
            if (pace.Text == "")
            {

                n = 0;

            }


            else
            {

                n = Convert.ToDouble(pace.Text);
            }
            if (fbvf.Text == "")
            {

                o = 0;

            }


            else
            {
                o = Convert.ToDouble(fbvf.Text);
            }
            if (fbhf.Text == "")
            {

                p = 0;

            }


            else
            {
                p = Convert.ToDouble(fbhf.Text);
            }
            if (fbhcgoda.Text == "")
            {

                q = 0;

            }


            else
            {
                q = Convert.ToDouble(fbhcgoda.Text);
            }

            if (fbmre.Text == "")
            {

                r = 0;

            }


            else
            {
                r = Convert.ToDouble(fbmre.Text);
            }
            if (fbdwetsu.Text == "")
            {

                s = 0;

            }


            else
            {

                s = Convert.ToDouble(fbdwetsu.Text);
            }
            if (daimrs.Text == "")
            {

                t = 0;

            }


            else
            {
                t = Convert.ToDouble(daimrs.Text);
            }
            if (oair.Text == "")
            {

                u = 0;

            }


            else
            {
                u = Convert.ToDouble(oair.Text);
            }
            if (others.Text == "")
            {

                v = 0;

            }


            else
            {
                v = Convert.ToDouble(others.Text);
            }
            if (epf.Text == "")
            {

                w = 0;

            }


            else
            {
                w = Convert.ToDouble(epf.Text);
            }
            if (cfi.Text == "")
            {

                x = 0;

            }


            else
            {
                x = Convert.ToDouble(cfi.Text);
            }
            if (Insurance.Text == "")
            {

                y = 0;

            }


            else
            {
                y = Convert.ToDouble(Insurance.Text);
            }

            if (ame.Text == "")
            {

                z = 0;

            }


            else
            {
                z = Convert.ToDouble(ame.Text);
            }
            double medical = z * 0.15;

            double added = a + b + c + d + dd + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t + u + v - w - x - y;
            if (added <= gettax.famount && added != 0)
            {

                double Tax = added * (gettax.Firstts / 100);
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }

            else if (added > gettax.famount && added <= gettax.samount && added != 0)
            {
                double Tax = ((added - gettax.famount) * (gettax.Secondts / 100)) + (gettax.famount * (gettax.Firstts / 100));
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }
            else if (added > gettax.samount && added <= gettax.tamount && added != 0)
            {
                double Tax = ((added - gettax.samount) * (gettax.Thirdts / 100)) + ((gettax.famount * (gettax.Firstts / 100)) + ((gettax.samount - gettax.famount) * (gettax.Secondts / 100)));
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }
            else if (added > gettax.tamount && added != 0)
            {
                double Tax = (gettax.famount * (gettax.Firstts / 100)) + ((gettax.samount - gettax.famount) * (gettax.Secondts / 100)) + ((gettax.tamount - gettax.samount) * (gettax.Thirdts / 100)) + ((added - gettax.tamount) * (gettax.Fourthts / 100));
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }
            else
            {
                Panelcalculation.Visible = false;
                LabelSave.Visible = false;
                Labeltxt.Visible = true;
                Labeltxt.Text = "Invalid Net Assessable!!!";
            }
        }

        if (drpfilingstatus.SelectedValue == "2")
        {
            Divorced gettax = getAlltaxrateandAmountDivorced(Int32.Parse(year.SelectedValue));
            double a, b, c, d, dd, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z;
            if (salary.Text == "")
            {

                a = 0;

            }

            else
            {

                a = Convert.ToDouble(salary.Text);


            }


            if (bonus.Text == "")
            {

                b = 0;

            }


            else
            {


                b = Convert.ToDouble(bonus.Text);
            }

            if (ot.Text == "")
            {

                c = 0;

            }


            else
            {
                c = Convert.ToDouble(ot.Text);
            }
            if (leave.Text == "")
            {

                d = 0;

            }


            else
            {

                d = Convert.ToDouble(leave.Text);
            }
            if (pg.Text == "")
            {

                dd = 0;

            }


            else
            {
                dd = Convert.ToDouble(pg.Text);
            }

            if (pof.Text == "")
            {

                f = 0;

            }


            else
            {
                f = Convert.ToDouble(pof.Text);
            }

            if (eta.Text == "")
            {

                g = 0;

            }


            else
            {
                g = Convert.ToDouble(eta.Text);
            }
            if (da.Text == "")
            {

                h = 0;

            }


            else
            {
                h = Convert.ToDouble(da.Text);
            }
            if (cla.Text == "")
            {

                i = 0;

            }


            else
            {
                i = Convert.ToDouble(cla.Text);
            }

            if (ra.Text == "")
            {

                j = 0;

            }


            else
            {
                j = Convert.ToDouble(ra.Text);
            }
            if (drpc.Text == "")
            {

                k = 0;

            }


            else
            {
                k = Convert.ToDouble(drpc.Text);
            }
            if (prlte.Text == "")
            {

                l = 0;

            }


            else
            {
                l = Convert.ToDouble(prlte.Text);
            }
            if (rcrp.Text == "")
            {

                m = 0;

            }


            else
            {
                m = Convert.ToDouble(rcrp.Text);
            }
            if (pace.Text == "")
            {

                n = 0;

            }


            else
            {

                n = Convert.ToDouble(pace.Text);
            }
            if (fbvf.Text == "")
            {

                o = 0;

            }


            else
            {
                o = Convert.ToDouble(fbvf.Text);
            }
            if (fbhf.Text == "")
            {

                p = 0;

            }


            else
            {
                p = Convert.ToDouble(fbhf.Text);
            }
            if (fbhcgoda.Text == "")
            {

                q = 0;

            }


            else
            {
                q = Convert.ToDouble(fbhcgoda.Text);
            }

            if (fbmre.Text == "")
            {

                r = 0;

            }


            else
            {
                r = Convert.ToDouble(fbmre.Text);
            }
            if (fbdwetsu.Text == "")
            {

                s = 0;

            }


            else
            {

                s = Convert.ToDouble(fbdwetsu.Text);
            }
            if (daimrs.Text == "")
            {

                t = 0;

            }


            else
            {
                t = Convert.ToDouble(daimrs.Text);
            }
            if (oair.Text == "")
            {

                u = 0;

            }


            else
            {
                u = Convert.ToDouble(oair.Text);
            }
            if (others.Text == "")
            {

                v = 0;

            }


            else
            {
                v = Convert.ToDouble(others.Text);
            }
            if (epf.Text == "")
            {

                w = 0;

            }


            else
            {
                w = Convert.ToDouble(epf.Text);
            }
            if (cfi.Text == "")
            {

                x = 0;

            }


            else
            {
                x = Convert.ToDouble(cfi.Text);
            }
            if (Insurance.Text == "")
            {

                y = 0;

            }


            else
            {
                y = Convert.ToDouble(Insurance.Text);
            }

            if (ame.Text == "")
            {

                z = 0;

            }


            else
            {
                z = Convert.ToDouble(ame.Text);
            }
            double medical = z * 0.15;

            double added = a + b + c + d + dd + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t + u + v - w - x - y;

            if (added <= gettax.famount && added != 0)
            {

                double Tax = added * (gettax.Firstts / 100);
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }

            else if (added > gettax.famount && added <= gettax.samount && added != 0)
            {
                double Tax = ((added - gettax.famount) * (gettax.Secondts / 100)) + (gettax.famount * (gettax.Firstts / 100));
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }
            else if (added > gettax.samount && added <= gettax.tamount && added != 0)
            {
                double Tax = ((added - gettax.samount) * (gettax.Thirdts / 100)) + ((gettax.famount * (gettax.Firstts / 100)) + ((gettax.samount - gettax.famount) * (gettax.Secondts / 100)));
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }
            else if (added > gettax.tamount && added != 0)
            {
                double Tax = (gettax.famount * (gettax.Firstts / 100)) + ((gettax.samount - gettax.famount) * (gettax.Secondts / 100)) + ((gettax.tamount - gettax.samount) * (gettax.Thirdts / 100)) + ((added - gettax.tamount) * (gettax.Fourthts / 100));
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }
            else
            {
                Panelcalculation.Visible = false;
                LabelSave.Visible = false;
                Labeltxt.Visible = true;
                Labeltxt.Text = "Invalid Net Assessable!!!";
            }
        }

        if (drpfilingstatus.SelectedValue == "3")
        {

            Dsingle gettax = getAlltaxrateandAmountDsingle(Int32.Parse(year.SelectedValue));
            double a, b, c, d, dd, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z;
            if (salary.Text == "")
            {

                a = 0;

            }

            else
            {

                a = Convert.ToDouble(salary.Text);


            }


            if (bonus.Text == "")
            {

                b = 0;

            }


            else
            {


                b = Convert.ToDouble(bonus.Text);
            }

            if (ot.Text == "")
            {

                c = 0;

            }


            else
            {
                c = Convert.ToDouble(ot.Text);
            }
            if (leave.Text == "")
            {

                d = 0;

            }


            else
            {

                d = Convert.ToDouble(leave.Text);
            }
            if (pg.Text == "")
            {

                dd = 0;

            }


            else
            {
                dd = Convert.ToDouble(pg.Text);
            }

            if (pof.Text == "")
            {

                f = 0;

            }


            else
            {
                f = Convert.ToDouble(pof.Text);
            }

            if (eta.Text == "")
            {

                g = 0;

            }


            else
            {
                g = Convert.ToDouble(eta.Text);
            }
            if (da.Text == "")
            {

                h = 0;

            }


            else
            {
                h = Convert.ToDouble(da.Text);
            }
            if (cla.Text == "")
            {

                i = 0;

            }


            else
            {
                i = Convert.ToDouble(cla.Text);
            }

            if (ra.Text == "")
            {

                j = 0;

            }


            else
            {
                j = Convert.ToDouble(ra.Text);
            }
            if (drpc.Text == "")
            {

                k = 0;

            }


            else
            {
                k = Convert.ToDouble(drpc.Text);
            }
            if (prlte.Text == "")
            {

                l = 0;

            }


            else
            {
                l = Convert.ToDouble(prlte.Text);
            }
            if (rcrp.Text == "")
            {

                m = 0;

            }


            else
            {
                m = Convert.ToDouble(rcrp.Text);
            }
            if (pace.Text == "")
            {

                n = 0;

            }


            else
            {

                n = Convert.ToDouble(pace.Text);
            }
            if (fbvf.Text == "")
            {

                o = 0;

            }


            else
            {
                o = Convert.ToDouble(fbvf.Text);
            }
            if (fbhf.Text == "")
            {

                p = 0;

            }


            else
            {
                p = Convert.ToDouble(fbhf.Text);
            }
            if (fbhcgoda.Text == "")
            {

                q = 0;

            }


            else
            {
                q = Convert.ToDouble(fbhcgoda.Text);
            }

            if (fbmre.Text == "")
            {

                r = 0;

            }


            else
            {
                r = Convert.ToDouble(fbmre.Text);
            }
            if (fbdwetsu.Text == "")
            {

                s = 0;

            }


            else
            {

                s = Convert.ToDouble(fbdwetsu.Text);
            }
            if (daimrs.Text == "")
            {

                t = 0;

            }


            else
            {
                t = Convert.ToDouble(daimrs.Text);
            }
            if (oair.Text == "")
            {

                u = 0;

            }


            else
            {
                u = Convert.ToDouble(oair.Text);
            }
            if (others.Text == "")
            {

                v = 0;

            }


            else
            {
                v = Convert.ToDouble(others.Text);
            }
            if (epf.Text == "")
            {

                w = 0;

            }


            else
            {
                w = Convert.ToDouble(epf.Text);
            }
            if (cfi.Text == "")
            {

                x = 0;

            }


            else
            {
                x = Convert.ToDouble(cfi.Text);
            }
            if (Insurance.Text == "")
            {

                y = 0;

            }


            else
            {
                y = Convert.ToDouble(Insurance.Text);
            }

            if (ame.Text == "")
            {

                z = 0;

            }


            else
            {
                z = Convert.ToDouble(ame.Text);
            }
            double medical = z * 0.15;

            double added = a + b + c + d + dd + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t + u + v - w - x - y;

            if (added <= gettax.famount && added != 0)
            {

                double Tax = added * (gettax.Firstts / 100);
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }

            else if (added > gettax.famount && added <= gettax.samount && added != 0)
            {
                double Tax = ((added - gettax.famount) * (gettax.Secondts / 100)) + (gettax.famount * (gettax.Firstts / 100));
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }
            else if (added > gettax.samount && added <= gettax.tamount && added != 0)
            {
                double Tax = ((added - gettax.samount) * (gettax.Thirdts / 100)) + ((gettax.famount * (gettax.Firstts / 100)) + ((gettax.samount - gettax.famount) * (gettax.Secondts / 100)));
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }
            else if (added > gettax.tamount && added != 0)
            {
                double Tax = (gettax.famount * (gettax.Firstts / 100)) + ((gettax.samount - gettax.famount) * (gettax.Secondts / 100)) + ((gettax.tamount - gettax.samount) * (gettax.Thirdts / 100)) + ((added - gettax.tamount) * (gettax.Fourthts / 100));
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }
            else
            {
                Panelcalculation.Visible = false;
                LabelSave.Visible = false;
                Labeltxt.Visible = true;
                Labeltxt.Text = "Invalid Net Assessable!!!";
            }
        }

        if (drpfilingstatus.SelectedValue == "4")
        {
            Dmarried gettax = getAlltaxrateandAmountDmarried(Int32.Parse(year.SelectedValue));
            double a, b, c, d, dd, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z;
            if (salary.Text == "")
            {

                a = 0;

            }

            else
            {

                a = Convert.ToDouble(salary.Text);


            }


            if (bonus.Text == "")
            {

                b = 0;

            }


            else
            {


                b = Convert.ToDouble(bonus.Text);
            }

            if (ot.Text == "")
            {

                c = 0;

            }


            else
            {
                c = Convert.ToDouble(ot.Text);
            }
            if (leave.Text == "")
            {

                d = 0;

            }


            else
            {

                d = Convert.ToDouble(leave.Text);
            }
            if (pg.Text == "")
            {

                dd = 0;

            }


            else
            {
                dd = Convert.ToDouble(pg.Text);
            }

            if (pof.Text == "")
            {

                f = 0;

            }


            else
            {
                f = Convert.ToDouble(pof.Text);
            }

            if (eta.Text == "")
            {

                g = 0;

            }


            else
            {
                g = Convert.ToDouble(eta.Text);
            }
            if (da.Text == "")
            {

                h = 0;

            }


            else
            {
                h = Convert.ToDouble(da.Text);
            }
            if (cla.Text == "")
            {

                i = 0;

            }


            else
            {
                i = Convert.ToDouble(cla.Text);
            }

            if (ra.Text == "")
            {

                j = 0;

            }


            else
            {
                j = Convert.ToDouble(ra.Text);
            }
            if (drpc.Text == "")
            {

                k = 0;

            }


            else
            {
                k = Convert.ToDouble(drpc.Text);
            }
            if (prlte.Text == "")
            {

                l = 0;

            }


            else
            {
                l = Convert.ToDouble(prlte.Text);
            }
            if (rcrp.Text == "")
            {

                m = 0;

            }


            else
            {
                m = Convert.ToDouble(rcrp.Text);
            }
            if (pace.Text == "")
            {

                n = 0;

            }


            else
            {

                n = Convert.ToDouble(pace.Text);
            }
            if (fbvf.Text == "")
            {

                o = 0;

            }


            else
            {
                o = Convert.ToDouble(fbvf.Text);
            }
            if (fbhf.Text == "")
            {

                p = 0;

            }


            else
            {
                p = Convert.ToDouble(fbhf.Text);
            }
            if (fbhcgoda.Text == "")
            {

                q = 0;

            }


            else
            {
                q = Convert.ToDouble(fbhcgoda.Text);
            }

            if (fbmre.Text == "")
            {

                r = 0;

            }


            else
            {
                r = Convert.ToDouble(fbmre.Text);
            }
            if (fbdwetsu.Text == "")
            {

                s = 0;

            }


            else
            {

                s = Convert.ToDouble(fbdwetsu.Text);
            }
            if (daimrs.Text == "")
            {

                t = 0;

            }


            else
            {
                t = Convert.ToDouble(daimrs.Text);
            }
            if (oair.Text == "")
            {

                u = 0;

            }


            else
            {
                u = Convert.ToDouble(oair.Text);
            }
            if (others.Text == "")
            {

                v = 0;

            }


            else
            {
                v = Convert.ToDouble(others.Text);
            }
            if (epf.Text == "")
            {

                w = 0;

            }


            else
            {
                w = Convert.ToDouble(epf.Text);
            }
            if (cfi.Text == "")
            {

                x = 0;

            }


            else
            {
                x = Convert.ToDouble(cfi.Text);
            }
            if (Insurance.Text == "")
            {

                y = 0;

            }


            else
            {
                y = Convert.ToDouble(Insurance.Text);
            }

            if (ame.Text == "")
            {

                z = 0;

            }


            else
            {
                z = Convert.ToDouble(ame.Text);
            }
            double medical = z * 0.15;

            double added = a + b + c + d + dd + f + g + h + i + j + k + l + m + n + o + p + q + r + s + t + u + v - w - x - y;
            if (added <= gettax.famount && added != 0)
            {

                double Tax = added * (gettax.Firstts / 100);
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }

            else if (added > gettax.famount && added <= gettax.samount && added != 0)
            {
                double Tax = ((added - gettax.famount) * (gettax.Secondts / 100)) + (gettax.famount * (gettax.Firstts / 100));
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }
            else if (added > gettax.samount && added <= gettax.tamount && added != 0)
            {
                double Tax = ((added - gettax.samount) * (gettax.Thirdts / 100)) + ((gettax.famount * (gettax.Firstts / 100)) + ((gettax.samount - gettax.famount) * (gettax.Secondts / 100)));
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }
            else if (added > gettax.tamount && added != 0)
            {
                double Tax = (gettax.famount * (gettax.Firstts / 100)) + ((gettax.samount - gettax.famount) * (gettax.Secondts / 100)) + ((gettax.tamount - gettax.samount) * (gettax.Thirdts / 100)) + ((added - gettax.tamount) * (gettax.Fourthts / 100));
                double finaltax = Tax - medical;
                AssessableIncome.Text = added.ToString();
                MedicalTax.Text = medical.ToString();
                NetTaxLiability.Text = finaltax.ToString();
                Panelcalculation.Visible = true;
                Labeltxt.Visible = false;
                LabelSave.Visible = false;
            }
            else
            {
                LabelSave.Visible = false;
                Panelcalculation.Visible = false;
                Labeltxt.Visible = true;
                Labeltxt.Text = "Invalid Net Assessable!!!";
            }
        }




    }
    public static bool checkyear(int year)
    {
        string CS = ConfigurationManager.ConnectionStrings["signupdatabaseConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(("Select * From tax Where yid = '" + year + "'"), con);
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

    protected void Save_Click(object sender, EventArgs e)
    {
        if (checkyear(Int32.Parse(year.SelectedValue)) == true)
        {
            string name = Session["new"].ToString();


            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter();
            SqlConnection con = ConnectionHelper.GetConnection();
            SqlCommand com = new SqlCommand("USP_InsertTax", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@sid", GetIDByUsername(name));
            com.Parameters.AddWithValue("@yid", Int32.Parse(year.SelectedValue));
            com.Parameters.AddWithValue("@salary", (salary.Text));
            com.Parameters.AddWithValue("@bonus", (bonus.Text));
            com.Parameters.AddWithValue("@ot", (ot.Text));
            com.Parameters.AddWithValue("@eta", (eta.Text));
            com.Parameters.AddWithValue("@leave", (leave.Text));
            com.Parameters.AddWithValue("@pg", (pg.Text));
            com.Parameters.AddWithValue("@pof", (pof.Text));
            com.Parameters.AddWithValue("@da", (da.Text));
            com.Parameters.AddWithValue("@cla", (cla.Text));
            com.Parameters.AddWithValue("@ra", (ra.Text));
            com.Parameters.AddWithValue("@drpc", (drpc.Text));
            com.Parameters.AddWithValue("@prlte", (prlte.Text));
            com.Parameters.AddWithValue("@rcrp", (rcrp.Text));
            com.Parameters.AddWithValue("@pace", (pace.Text));
            com.Parameters.AddWithValue("@fbvf", (fbvf.Text));
            com.Parameters.AddWithValue("@fbhf", (fbhf.Text));
            com.Parameters.AddWithValue("@fbhcgoda", (fbhcgoda.Text));
            com.Parameters.AddWithValue("@fbmre", (fbmre.Text));
            com.Parameters.AddWithValue("@fbdwetsu", (fbdwetsu.Text));
            com.Parameters.AddWithValue("@daimrs", (daimrs.Text));
            com.Parameters.AddWithValue("@oair", (oair.Text));
            com.Parameters.AddWithValue("@others", (others.Text));
            com.Parameters.AddWithValue("@epf", (epf.Text));
            com.Parameters.AddWithValue("@cfi", (cfi.Text));
            com.Parameters.AddWithValue("@Insurance", (Insurance.Text));
            com.Parameters.AddWithValue("@ame", (ame.Text));
            com.Parameters.AddWithValue("@ameded", (MedicalTax.Text));
            com.Parameters.AddWithValue("@tax", (NetTaxLiability.Text));
            com.ExecuteNonQuery();
            Session["yid"]=Int32.Parse(year.SelectedValue);
            Response.Redirect("TaxRecord.aspx");

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record of this year already exists,Please change year for adding record')", true); ;

        }

    }

}





