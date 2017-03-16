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
using OnlineExamSystem.AppCode;

namespace OnlineExamSystem
{
	public partial class QuestionsPage : System.Web.UI.Page
	{
		string strcon = ConfigurationManager.ConnectionStrings["CnnStr"].ConnectionString;
		clsConn objCon = new clsConn();
		DataAccess objdata = new DataAccess();
		DropDownBind ddb = new DropDownBind();
		DataTable dt = new DataTable();
		DataSet ds = new DataSet();
		string strSQL = string.Empty;
		protected void Page_Load(object sender, EventArgs e)
		{
			lblUser.Text = "Welcome : " + Convert.ToString(Session["userName"]); 
			if(Page.IsPostBack==false)
			{
				this.BindData();
				this.PopulateSubject();
			}
           
		}

		private void BindData()
		{
			string SubId = Convert.ToString(ddlSub.SelectedValue);
			DataTable dt = objdata.GetDataTable("select Qid,Qn,Options1,Options2,Options3,Options4 from qnopts where SubId='" + SubId + "'");
			Gridview1.DataSource = dt;
			Gridview1.DataBind();
			
		}

		private void PopulateSubject()
		{
			strSQL = "SELECT [SubId],[SubName] FROM [tblSubject]";
			ddb.BindDropDownList(ddlSub, strSQL, "SubName", "SubId");
        
		}


		protected void btnNxt_Click(object sender, EventArgs e)
		{
            
			DataTable dataTable = new DataTable();
			string userId = Convert.ToString(Session["uid"]);

            int i = Gridview1.PageIndex + 1;
            if (i <= Gridview1.PageCount)
            {
                RadioButton option1 = (RadioButton)Gridview1.Rows[0].FindControl("rbOption1");
                RadioButton option2 = (RadioButton)Gridview1.Rows[0].FindControl("rbOption2");
                RadioButton option3 = (RadioButton)Gridview1.Rows[0].FindControl("rbOption3");
                RadioButton option4 = (RadioButton)Gridview1.Rows[0].FindControl("rbOption4");


                Label lblQuestionId = (Label)(Gridview1).Rows[0].FindControl("lblQuestionId");

                string strQuestionId = string.Empty;
                string strAns = string.Empty;

                if (option1.Checked == true)
                {
                    strAns = option1.Text;
                    strQuestionId = lblQuestionId.Text;
                }
                if (option2.Checked == true)
                {
                    strAns = option2.Text;
                    strQuestionId = lblQuestionId.Text;
                }
                if (option3.Checked == true)
                {
                    strAns = option3.Text;
                    strQuestionId = lblQuestionId.Text;
                }
                if (option4.Checked == true)
                {
                    strAns = option4.Text;
                    strQuestionId = lblQuestionId.Text;
                }

                /*  answer */
                String SqlQry = "insert into studentAnswers(Qid,Answers,UserId) values('" + strQuestionId + "','" + strAns + "','" + userId + "')";
                objdata.ExecuteQuery(SqlQry);
                Gridview1.PageIndex = i;
                this.BindData();
            }
		}

		protected void btnPrev_Click(object sender, EventArgs e)
		{
            DataTable dataTable = new DataTable();
            string userId = Convert.ToString(Session["uid"]);

           int i = Gridview1.PageCount;

           if (Gridview1.PageIndex > 0)
           {
               RadioButton option1 = (RadioButton)Gridview1.Rows[0].FindControl("rbOption1");
               RadioButton option2 = (RadioButton)Gridview1.Rows[0].FindControl("rbOption2");
               RadioButton option3 = (RadioButton)Gridview1.Rows[0].FindControl("rbOption3");
               RadioButton option4 = (RadioButton)Gridview1.Rows[0].FindControl("rbOption4");


               Label lblQuestionId = (Label)(Gridview1).Rows[0].FindControl("lblQuestionId");

               string strQuestionId = string.Empty;
               string strAns = string.Empty;

               if (option1.Checked == true)
               {
                   strAns = option1.Text;
                   strQuestionId = lblQuestionId.Text;
               }
               if (option2.Checked == true)
               {
                   strAns = option2.Text;
                   strQuestionId = lblQuestionId.Text;
               }
               if (option3.Checked == true)
               {
                   strAns = option3.Text;
                   strQuestionId = lblQuestionId.Text;
               }
               if (option4.Checked == true)
               {
                   strAns = option4.Text;
                   strQuestionId = lblQuestionId.Text;
               }
               /*  answer */
               String SqlQry = "insert into studentAnswers(Qid,Answers,UserId) values('" + strQuestionId + "','" + strAns + "','" + userId + "')";
               objdata.ExecuteQuery(SqlQry);
               Gridview1.PageIndex = Gridview1.PageIndex - 1;
               this.BindData();
           }
		}

		protected void ddlSub_SelectedIndexChanged(object sender, EventArgs e)
		{
			this.BindData();
		}

		protected void btnSubmit_Click(object sender, EventArgs e)
		{
			Response.Redirect("~/OPBasedscore.aspx", true);
		}

		
	}
}