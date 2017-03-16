using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace OnlineExamSystem
{
    public partial class StudentHome : System.Web.UI.Page
    {
        DataAccess objdata = new DataAccess();
        DataTable dt = new DataTable();

        SqlConnection cnn = new SqlConnection("Data Source=SB3T04;Initial Catalog=OnlineExamination;uid=sa;Password=sb3soft");
        protected void Page_Load(object sender, EventArgs e)
        {
            cnn.Open();
            SqlCommand cmd = new SqlCommand("select id from Registration where uid='" + Session["uid"].ToString() + "'", cnn);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["sids"] = dr[0].ToString();
                dr.Close();
            }
            dr.Close();
        }
    }
}