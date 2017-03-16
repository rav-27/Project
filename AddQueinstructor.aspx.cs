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
    public partial class AddQueinstructor : System.Web.UI.Page
    {

        DataAccess objData = new DataAccess();
        DataTable objDt = new DataTable();
        DropDownBind ddb = new DropDownBind();
        string strSQL = string.Empty;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

                this.PopulateSubject();

            }
        }



        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string SubId = string.Empty;
                string Question = string.Empty;
                string Options1 = string.Empty;
                string Options2 = string.Empty;
                string Options3 = string.Empty;
                string Options4 = string.Empty;
                string ActualAnswers = string.Empty;

                SubId = ddlsub.SelectedValue;
                Question = txtAdd.Text;
                Options1 = txtOption1.Text;
                Options2 = txtOption2.Text;
                Options3 = txtOption3.Text;
                Options4 = txtOption4.Text;
                ActualAnswers = txtAnswer.Text;
                string SqlQuery = "insert into qnopts (SubId,Qn,Options1,Options2,Options3,Options4,ActualAnswers) values ('" + SubId + "','" + Question + "','" + Options2 + "','" + Options2 + "','" + Options3 + "','" + Options4 + "','" + ActualAnswers + "')";
                objData.ExecuteQuery(SqlQuery);

                lblMessage1.Text = "Successfully Added";
                lblMessage2.Text = "Please Try agian!!";


                {
                    ddlsub.ClearSelection();
                    txtAdd.Text = "";
                    txtOption1.Text = "";
                    txtOption2.Text = "";
                    txtOption3.Text = "";
                    txtOption4.Text = "";
                    txtAnswer.Text = "";
                }
            }

            catch (Exception Ex)
            {
                lblMessage2.Text = Ex.Message.ToString();

            }
        }

        private void PopulateSubject()
        {
            strSQL = "SELECT [SubId],[SubName] FROM [tblSubject]";
            ddb.BindDropDownList(ddlsub, strSQL, "SubName", "SubId");
        }
        private void PopulateGrid()
        {
            int SubId = Convert.ToInt32(ddlsub.SelectedValue);
            strSQL = "SELECT Qid,Qn,Options1,Options2,Options3,Options4,ActualAnswers FROM qnopts where SubId = " + SubId + "";
            objDt = objData.GetDataTable(strSQL);
            if (objDt.Rows.Count > 0)
            {
                GridView1.DataSource = objDt;
                GridView1.DataBind();
            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
        }



        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddQueinstructor.aspx", true);
        }

        protected void ddlsub_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.PopulateGrid();
            lblSubName.Text = "You have selected : " + ddlsub.SelectedItem.ToString();
        }
    }
}