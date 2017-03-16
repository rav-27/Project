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
    public partial class OPBasedQP : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["CnnStr"].ConnectionString;
        clsConn objConn = new clsConn();

        DataAccess objdata = new DataAccess();                
        SqlConnection cnn = new SqlConnection("Data Source=SB3T04;Initial Catalog=OnlineExamination;uid=sa;Password=sb3soft");

        protected void Page_Load(object sender, EventArgs e)
        {
            lblUser.Text = "Welcome : " + Convert.ToString(Session["userName"]);
            if (Page.IsPostBack == false)
                {
                    this.BindData();
                }
            Label1.Text = System.DateTime.Now.ToLongDateString();
            Label2.Text = System.DateTime.Now.ToLongTimeString();
        }

       

        private void BindData()
        {
            DataTable dt = objdata.GetDataTable("select Qid,Qn,Options1,Options2,Options3,Options4 from qnopts");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }



        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
                DataTable dataTable = new DataTable();
                string userId = Convert.ToString(Session["uid"]);

                RadioButton option1 = (RadioButton)GridView1.Rows[0].FindControl("rbOption1");
                RadioButton option2 = (RadioButton)GridView1.Rows[0].FindControl("rbOption2");
                RadioButton option3 = (RadioButton)GridView1.Rows[0].FindControl("rbOption3");
                RadioButton option4 = (RadioButton)GridView1.Rows[0].FindControl("rbOption4");

                Label lblQuestionId = (Label)(GridView1).Rows[0].FindControl("lblQuestionId");

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
                GridView1.PageIndex = e.NewPageIndex;
                this.BindData();         
                                     
        }


        
        protected void btnSubmit_Click1(object sender, EventArgs e)
        {          
            Response.Redirect("~/OPBasedScore.aspx", true);
        }

      
    }
}

