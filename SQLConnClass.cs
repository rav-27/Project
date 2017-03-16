using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace OnlineExamSystem
{
    public class SQLConnClass
    {
        SqlConnection SQLConn = new SqlConnection();
        public DataTable SQLTable = new DataTable();

        public SQLConnClass()
            {
            SQLConn.ConnectionString = ConfigurationManager.ConnectionStrings["CnnStr"].ConnectionString;
            }

        public void retriveData(string command)
        {
            try
            {
                SQLConn.Open();
                SqlDataAdapter da = new SqlDataAdapter(command, SQLConn);
                da.Fill(SQLTable);
            }
            catch (Exception ex)
            {
               HttpContext.Current.Response.Write("<script>alert('something goes wrong" + "in connecting to DB with error : "+ ex.Message +"');</script>");
            }
            finally
            {
                SQLConn.Close();
            }
        }
        public void retrieveData(string command)
        {
            try
            {
                SQLConn.Open();
                SqlDataAdapter da = new SqlDataAdapter(command, SQLConn);
                da.Fill(SQLTable);
            }
            catch(Exception ex)
            {
                HttpContext.Current.Response.Write("<script>alert('something goes wrong in DB, try again');</script>");
            }
            finally
            {
                SQLConn.Close();
            }
        }

    }
}