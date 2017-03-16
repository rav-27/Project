using System;
using System.Data;
using System.Data.SqlClient;


namespace OnlineExamSystem
{
    public partial class ChangePwd : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("Data Source=SB3T04;Initial Catalog=OnlineExamination;uid=sa;Password=sb3soft");
        string strSQL = string.Empty;
        DataAccess objData = new DataAccess();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s1 = "update Registration set pwd='" + TextBox3.Text + "' where uid='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'";
           objData.ExecuteQuery(s1);
            Response.Write("Successfully changed");
            Panel1.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}