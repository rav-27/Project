using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace OnlineExamSystem.AppCode
{
    public class clsConn
    {
        public DataTable  GetDtlFromSql(String sql, String strConnection)
        {
            SqlConnection con = new SqlConnection(strConnection);
            DataTable t = new DataTable();
            con.Open();
            using (SqlDataAdapter a = new SqlDataAdapter(
            sql, con))
            {
                a.Fill(t);
            }
            con.Close();
            return t;
        }

    }
}