using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace OnlineExamSystem
{
    public class DataAccess
    {
        private string strConnection = ConfigurationManager.ConnectionStrings["CnnStr"].ConnectionString;

        public void ExecuteQuery(String strSQL)
        {
            try
            {
                using (SqlConnection cnn = new SqlConnection(strConnection))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = cnn;
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = strSQL;
                        cnn.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
        }

        internal DataTable GetDataTable(Label label1)
        {
            throw new NotImplementedException();
        }

        public SqlDataReader GetDataReader(string StrSQL)
        {
            SqlDataReader objDataReader;
            {
                try
                {
                    using (SqlConnection cnn = new SqlConnection(strConnection))
                    {
                        using (SqlCommand cmd = new SqlCommand())
                        {
                            cmd.Connection = cnn;
                            cmd.CommandType = CommandType.Text;
                            cmd.CommandText = StrSQL;
                            cnn.Open();
                            objDataReader = cmd.ExecuteReader();
                            return objDataReader;
                        }
                    }
                }
                catch (Exception Ex)
                {
                    throw Ex;
                }
            }
        }
        public DataTable GetDataTable(string strSQL)
        {
            SqlDataAdapter objAdpt = new SqlDataAdapter();
            DataTable Dt = new DataTable();
            try
            {
                using (SqlConnection cnn = new SqlConnection(strConnection))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {

                        cmd.Connection = cnn;
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = strSQL;
                        cnn.Open();
                        objAdpt.SelectCommand = cmd;
                        objAdpt.Fill(Dt);
                        
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                objAdpt.Dispose();
            }
            return Dt;
        }


        public void ExecuteQuery(String strSpName, SqlParameter[] param)
        {
            try
            {
                using (SqlConnection cnn = new SqlConnection(strConnection))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = cnn;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = strSpName;
                        cnn.Open();
                        foreach (SqlParameter p in param)
                        {
                            cmd.Parameters.Add(p);
                        }
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
        }

        public DataTable GetDataTable(String strSPName, SqlParameter[] peram)
        {
            SqlDataAdapter objAdpt = new SqlDataAdapter();
            DataTable Dt = new DataTable();
            try
            {
                using (SqlConnection cnn = new SqlConnection(strConnection))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {

                        cmd.Connection = cnn;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = strSPName;
                        cnn.Open();
                        foreach (SqlParameter p in peram)
                        {
                            cmd.Parameters.Add(p);
                        }
                        objAdpt.SelectCommand = cmd;
                        objAdpt.Fill(Dt);
                        return Dt;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                objAdpt.Dispose();
            }
        }

        internal void ExecuteQuery(int converted)
        {
            throw new NotImplementedException();
        }
    }
}