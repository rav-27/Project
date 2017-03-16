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
    public partial class questionupds : System.Web.UI.Page
    {
        DataAccess objdata = new DataAccess();
        SqlConnection cnn = new SqlConnection("Data Source=SB3T04;Initial Catalog=OnlineExamination;uid=sa;Password=sb3soft");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                this.BindData();

            }
        }

        private void BindData()
        {

            cnn.Open();
            SqlCommand cmd = new SqlCommand("select Qid,Qn,Options1,Options2,Options3,Options4,ActualAnswers from qnopts", cnn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cnn.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }

        }


        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindData();
        }

        protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            this.BindData();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

                cnn.Open();
                SqlCommand cmd = new SqlCommand("delete FROM qnopts where Qid='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", cnn);
                cmd.ExecuteNonQuery();
                cnn.Close();
                BindData();
                lblID.Text = "Successfully Deleted";
            }
            catch (Exception ex)
            {
                lblID.Text = ex.Message.ToString();
            }
        }

        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindData();
        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                int Qid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
                GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

                TextBox Qn = (TextBox)row.Cells[0].Controls[0];
                TextBox Options1 = (TextBox)row.Cells[1].Controls[0];
                TextBox Options2 = (TextBox)row.Cells[2].Controls[0];
                TextBox Options3 = (TextBox)row.Cells[3].Controls[0];
                TextBox Options4 = (TextBox)row.Cells[4].Controls[0];
                TextBox ActualAnswers = (TextBox)row.Cells[5].Controls[0];

                GridView1.EditIndex = -1;
                cnn.Open();
                SqlCommand cmd = new SqlCommand("update qnopts set Qn='" + Qn.Text + "',Options1='" + Options1.Text + "',Options2='" + Options2.Text + "',Options3 = '" + Options3.Text + "',Options4 = '" + Options4.Text + "',ActualAnswers = '" + ActualAnswers.Text + "'    where Qid='" + Qid + "'", cnn);
                cmd.ExecuteNonQuery();
                lblID.Text = "Successfully Updated";
                cnn.Close();
                BindData();
            }

            catch (Exception ex)
            {
                lblID.Text = ex.Message.ToString();

            }

        }
    }
}