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
    public partial class RegAck : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("Data Source=SB3T04;Initial Catalog=OnlineExamination;uid=sa;Password=sb3soft");
        protected void Page_Load(object sender, EventArgs e)
        {
            cnn.Open();
            string userId = Convert.ToString(Session["uid"]);
            Label2.Text = userId;
            string StrSql = "select id from Registration where uid='" + Session["sid"] + "'";
            SqlCommand cmd = new SqlCommand(StrSql, cnn);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label2.Text = dr[0].ToString();
                dr.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx", true);
        }
    }
}



