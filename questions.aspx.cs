﻿using System;
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
    public partial class questions : System.Web.UI.Page
    {
        DataAccess objdata = new DataAccess();
        SqlConnection cnn = new SqlConnection("Data Source=SB3T04;Initial Catalog=OnlineExamination;uid=sa;Password=sb3soft");
        protected void Page_Load(object sender, EventArgs e)
        {
            //cnn.Open();
            //SqlDataAdapter da = new SqlDataAdapter("select * from Questions where id <= 10", cnn);
            //DataSet ds = new DataSet();
            //da.Fill(ds, "questions");
            //GridView1.DataSource = ds.Tables[0];
            //GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            cnn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from Questions where id <= 10", cnn);
            DataSet ds = new DataSet();
            da.Fill(ds, "questions");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}