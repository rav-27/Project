using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace OnlineExamSystem
{
    public partial class scorepage : System.Web.UI.Page
    {
        DataAccess objdata = new DataAccess();
        SqlConnection cnn = new SqlConnection("Data Source=SB3T04;Initial Catalog=OnlineExamination;uid=sa;Password=sb3soft");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string userId = Convert.ToString(Session["uid"]);
            cnn.Open();
            SqlCommand cmd4 = new SqlCommand("select id from Registration where uid='" + Session["uid"].ToString() + "'", cnn);
            SqlDataReader dr;
         
            dr = cmd4.ExecuteReader();

            if (dr.Read())
            {
                Session["sids1"] = dr[0].ToString();
                dr.Close();
            }
            dr.Close();

            lbltotal.Text = Request.QueryString["Score"];
          


        }
               
    

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentHome.aspx");
        }
       
    }
}