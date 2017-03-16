using System;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineExamSystem
{
    public partial class ForgotPwd : System.Web.UI.Page
    {
        DataAccess objdata = new DataAccess();
        SqlConnection cnn = new SqlConnection("Data Source=SB3T04;Initial Catalog=OnlineExamination;uid=sa;Password=sb3soft");
        protected void Page_Load(object sender, EventArgs e)
        {
            cnn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s1 = "select pwd from Registration where que='" + DropDownList1.SelectedItem.Text + "' and ans='" + TextBox2.Text + "' and uid='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(s1, cnn);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
                Label4.Text = dr[0].ToString();
            else
                Label4.Text = "try again";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            DropDownList1.SelectedItem.Text = DropDownList1.Items[0].Text;
            TextBox2.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}