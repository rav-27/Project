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
    public partial class Registration : System.Web.UI.Page
    {
        DataAccess objdata = new DataAccess();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

       
        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            string name = string.Empty;
            string DOB = string.Empty;
            string gender = string.Empty;

            string college = string.Empty;
            string uid = string.Empty;
            string pwd = string.Empty;
            string rpwd = string.Empty;
            string utype = string.Empty;
            string que = string.Empty;
            string ans = string.Empty;


            name = txtUser.Text;
            DOB = txtDob.Text;
            gender = RadioButtonList1.SelectedValue;

            college = txtCollege.Text;
            uid = txtUserId.Text;
            pwd = txtpwd.Text;
            rpwd = txtrpwd.Text;
            utype = DropDownList1.SelectedValue;
            que = DropDownList2.SelectedValue;
            ans = txtanw.Text;
          
            string s1 = " insert into Registration(name,DOB,gender,college,uid,pwd,rpwd,utype,que,ans) values ('" + name + "','" + DOB + "','" + gender + "','" + college + "','" + uid + "','" + pwd + "','" + rpwd + "','" + utype + "','" + que + "','" + ans + "')";
            objdata.ExecuteQuery(s1);
            Response.Redirect("~/RegAck.aspx",true);        
        }

        protected void txtCancel_Click(object sender, EventArgs e)
        {
            txtUser.Text = "";
            txtDob.Text = "";
            txtCollege.Text = "";
            txtUserId.Text = "";
            txtpwd.Text = "";
            txtrpwd.Text = "";
            txtanw.Text = "";
            DropDownList1.SelectedItem.Text = DropDownList1.Items[0].Text;
            DropDownList2.SelectedItem.Text = DropDownList2.Items[0].Text;


            RadioButtonList1.Items[0].Selected = false;
            RadioButtonList1.Items[1].Selected = false;
        }      
       
    }
}