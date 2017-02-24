using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Data.SqlClient;

using System.Configuration;

namespace FingerPrintSystem.DataAccess
{
    internal class DatabaseHelper
    {
        private string cnnString = "";
        public string ConnectionString
        {
            get
            {
                if (cnnString == "")
                    cnnString = ConfigurationManager.ConnectionStrings["Default"].ConnectionString;
                return cnnString;
            }
            set
            {
                cnnString = value;
            }
        }

        public string TestConnection()
        {
            this.commandType = CommandType.Text;
            try
            {
                this.ExecuteNonQuery("SELECT 1");
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
            return "";
        }

        SqlConnection cnn;
        private CommandType commandType = CommandType.StoredProcedure;
        private SqlTransaction trans;
        public CommandType SQLCommandType
        {
            get
            {
                return commandType;
            }
            set
            {
                commandType = value;
            }
        }

        public List<SqlParameter> Param = new List<SqlParameter>();

        public void AddParameter(string paramName, object value)
        {
            this.Param.Add(new SqlParameter(paramName, value));
        }

        public DatabaseHelper()
        {
            cnn = new SqlConnection(this.ConnectionString);
        }

        public void BeginTransaction()
        {
            if (cnn.State == ConnectionState.Closed)
                cnn.Open();
            trans = cnn.BeginTransaction();
        }

        public void CommitTransaction()
        {
            trans.Commit();
            cnn.Close();
        }

        public void RollbackTransaction()
        {
            trans.Rollback();
            cnn.Close();
        }

        public int ExecuteNonQuery(string sql)
        {
            return this.ExecuteNonQuery(sql, this.Param);
        }

        public int ExecuteNonQuery(string sql, List<SqlParameter> param)
        {
            SqlCommand cmm = new SqlCommand(sql, cnn);
            cmm.CommandType = this.SQLCommandType;

            int retValue = 0;

            for (int i = 0; i < param.Count; i++)
            {
                cmm.Parameters.Add(param[i]);
            }
            try
            {
                if (cnn.State == ConnectionState.Closed) cnn.Open();

                retValue = cmm.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (trans == null)
                    cnn.Close();
            }

            return retValue;
        }

        public object ExecuteScalar(string sql)
        {
            return this.ExecuteScalar(sql, this.Param);
        }

        public object ExecuteScalar(string sql, List<SqlParameter> param)
        {
            SqlCommand cmm = new SqlCommand(sql, cnn);
            cmm.CommandType = this.SQLCommandType;
            object retValue = 0;

            for (int i = 0; i < param.Count; i++)
            {
                cmm.Parameters.Add(param[i]);
            }
            try
            {
                if (cnn.State == ConnectionState.Closed) cnn.Open();

                retValue = cmm.ExecuteScalar();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (trans == null)
                    cnn.Close();
            }

            return retValue;
        }

        public DataTable ExecuteDataTable(string sql)
        {
            return this.ExecuteDataTable(sql, this.Param);
        }

        public DataTable ExecuteDataTable(string sql, List<SqlParameter> param)
        {
            SqlDataAdapter ad = new SqlDataAdapter(sql, cnn);
            DataTable dt = new DataTable();
            ad.SelectCommand.CommandType = this.SQLCommandType;

            for (int i = 0; i < param.Count; i++)
            {
                ad.SelectCommand.Parameters.Add(param[i]);
            }
            try
            {
                if (cnn.State == ConnectionState.Closed) cnn.Open();

                ad.Fill(dt);
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (trans == null)
                    cnn.Close();
            }

            return dt;
        }

        public DataSet ExecuteDataSet(string sql)
        {
            return this.ExecuteDataSet(sql, this.Param);
        }

        public DataSet ExecuteDataSet(string sql, List<SqlParameter> param)
        {
            SqlDataAdapter ad = new SqlDataAdapter(sql, cnn);
            DataSet ds = new DataSet();
            ad.SelectCommand.CommandType = this.SQLCommandType;

            for (int i = 0; i < param.Count; i++)
            {
                ad.SelectCommand.Parameters.Add(param[i]);
            }
            try
            {
                if (cnn.State == ConnectionState.Closed) cnn.Open();

                ad.Fill(ds);
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            finally
            {
                if (trans == null)
                    cnn.Close();
            }

            return ds;
        }




    }
}
