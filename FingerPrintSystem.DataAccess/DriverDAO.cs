﻿using System;
using System.Collections.Generic;

using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;

namespace FingerPrintSystem.DataAccess
{
  public  class DriverDAO
    {
        public DataTable GetDriverByIDMember(int memberdriverid)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberdriverid", memberdriverid));

            return db.ExecuteDataTable("sp_Driver_Select_ByIDMember", param);

        }
        public void UpdateDriverByIDMember_Roundscan(int memberdriverid , int roundscan)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberdriverid", memberdriverid));
            param.Add(new SqlParameter("@roundscan", roundscan));

             db.ExecuteNonQuery("sp_Driver_Update_ByIDMember_Roundscan", param);


        }
        public DataSet GetDriver(int pageNum, int pageSize, string sortField, string sortOrder)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@PageNum", pageNum));
            param.Add(new SqlParameter("@PageSize", pageSize));
            param.Add(new SqlParameter("@SortField", sortField));
            param.Add(new SqlParameter("@SortOrder", sortOrder));

            return db.ExecuteDataSet("sp_Driver_SelectPaging", param);

        }

    }
}
