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
    public partial class Toproceed : System.Web.UI.Page
    {
        DataAccess objdata = new DataAccess();
        SqlConnection cnn = new SqlConnection("Data Source=SB3T04;Initial Catalog=OnlineExamination;uid=sa;Password=sb3soft");
        string s1;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            cnn.Open();           
            s1 = Session["desg"].ToString();
            lblUserId.Text = "Welcome : " + Convert.ToString(Session["userName"]);

            cnn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (s1 == "Student")
            {

                Response.Redirect("StudentHome.aspx", true);
            }
            else if (s1 == "Admin")
                Response.Redirect("AdminHome.aspx", true);
            else
                Response.Redirect("InstructorHome.aspx", true);
        }
    }
}