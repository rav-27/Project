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
    public partial class StudentDetailsInstructor : System.Web.UI.Page
    {
        DataAccess objdata = new DataAccess();
        SqlConnection cnn = new SqlConnection("Data Source=SB3T04;Initial Catalog=OnlineExamination;uid=sa;Password=sb3soft");
        protected void Page_Load(object sender, EventArgs e)
        {
            cnn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from Registration where utype='Student'", cnn);
            DataSet ds = new DataSet();
            da.Fill(ds, "registration");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}