using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace OnlineExamSystem
{
    public partial class Index : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        DataAccess objdata = new DataAccess();
        DropDownBind ddb = new DropDownBind();
        SqlConnection cnn = new SqlConnection("Data Source=SB3T04;Initial Catalog=OnlineExamination;uid=sa;Password=sb3soft");
        protected void Page_Load(object sender, EventArgs e)
        {
            cnn.Open();
          
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            if (DropDownList1.SelectedItem.Text == "Student")
            Session["uid"] = TextBox1.Text;
            Session["desg"] = DropDownList1.SelectedItem.Text;
            string Name  = "select [name] from Registration where uid = '" + Session["uid"] + "'";
            DataTable dtName = objdata.GetDataTable(Name);
            if(dtName.Rows.Count>0)
            {
                Session["userName"] = Convert.ToString(dtName.Rows[0]["name"]);
            }
            
            string s1 = "select * from Registration where utype='" + DropDownList1.SelectedItem.Text + "' and uid='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'";

            SqlCommand cmd = new SqlCommand(s1, cnn);
            SqlDataReader da;
            da = cmd.ExecuteReader();
            if (da.Read())
                Response.Redirect("Toproceed.aspx");
            else
                //Response.Write("Not authenticated");
                lblError.Text = ("Not Authenticated");
                
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Index.aspx", true);
            cnn.Close();
        }   
        

    }    
}