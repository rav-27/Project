using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using OnlineExamSystem.AppCode;

namespace OnlineExamSystem
{
    public partial class OPBasedscore : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["CnnStr"].ConnectionString;
        clsConn objConn = new clsConn();

        DataAccess objdata = new DataAccess();
        SqlConnection cnn = new SqlConnection("Data Source=SB3T04;Initial Catalog=OnlineExamination;uid=sa;Password=sb3soft");
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUser.Text = "Welcome : " + Convert.ToString(Session["userName"]);
            this.GetScore();     
               
        }
       
        private void GetScore()
        {
            DataTable dtScore = new DataTable();
            SqlParameter[] peram = new SqlParameter[1];
            peram[0] = new SqlParameter("@UserId", SqlDbType.Int);
            peram[0].Value = Convert.ToInt32(Session["uid"]);
            dtScore = objdata.GetDataTable("spGetScore", peram);
            if (dtScore.Rows.Count > 0)
            {
                GridView1.DataSource = dtScore;
                GridView1.DataBind();
            }

            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
            }

        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/StudentHome.aspx", true);
        }

       
    }
}