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
    public partial class ResultsInstructor : System.Web.UI.Page
    {
        DataAccess objdata = new DataAccess();
        SqlConnection cnn = new SqlConnection("Data Source=SB3T04;Initial Catalog=OnlineExamination;uid=sa;Password=sb3soft");
        protected void Page_Load(object sender, EventArgs e)
        {
            this.GvBind();
           
        }
        private void GvBind()
        {
            DataTable dt = objdata.GetDataTable("SELECT Registration.name, allstsmarks.Score FROM allstsmarks INNER JOIN Registration ON allstsmarks.UserID = Registration.uid");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}