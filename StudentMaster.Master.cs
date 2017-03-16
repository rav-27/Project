using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace OnlineExamSystem
{
    public partial class StudentMaster : System.Web.UI.MasterPage
    {
        DataAccess objData = new DataAccess();
        DataTable objDt = new DataTable();
        DropDownBind ddb = new DropDownBind();
        string strSQL = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        

        protected void btnTest_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/QuestionsPage.aspx", true);
        }

        
    }
}