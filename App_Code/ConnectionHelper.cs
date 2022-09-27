using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ConnectionHelper
/// </summary>
public class ConnectionHelper
{
    public ConnectionHelper()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static String GetConnectionString()
    {
        String constr = ConfigurationManager.ConnectionStrings["signupdatabaseConnectionString"].ConnectionString;
        return constr;

    }
    public static SqlConnection GetConnection()
    {
        SqlConnection sqlC = new SqlConnection();
        sqlC.ConnectionString = ConnectionHelper.GetConnectionString();
        sqlC.Open();
        return sqlC;
    }
}