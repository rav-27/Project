using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using OnlineExamSystem.AppCode;

namespace OnlineExamSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        string strcon = ConfigurationManager.ConnectionStrings["OwnConn"].ConnectionString;
        clsConn objConn = new clsConn();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable t = objConn.GetDtlFromSql("SELECT [id]      ,[que]      ,[aw]  FROM [OnlineExamination].[dbo].[questions]", strcon);
            GridView1.DataSource = t;
            GridView1.DataBind();
        }
    }
}