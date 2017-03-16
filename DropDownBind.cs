using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI.WebControls;

namespace OnlineExamSystem
{
    public class DropDownBind
    {
        DataTable dtComm = new DataTable();
        DataAccess objdata = new DataAccess();

        public void BindDropDownList(DropDownList ddlCommon, string strSQL, string strDataTextField, string strDataValueField)
        {
            dtComm = objdata.GetDataTable(strSQL);
                if(dtComm.Rows.Count > 0)
                {
                    ddlCommon.DataSource = dtComm;
                    ddlCommon.DataTextField = strDataTextField;
                    ddlCommon.DataValueField = strDataValueField;
                    ddlCommon.DataBind();
                }
                ddlCommon.Items.Add(new ListItem("---Select---", "0"));
                ddlCommon.SelectedValue = "0";
        }
    }
}