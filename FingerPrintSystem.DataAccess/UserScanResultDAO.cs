using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


using System.Data.SqlClient;
using System.Data;

namespace FingerPrintSystem.DataAccess
{
  public  class UserScanResultDAO
    {
        public string AddUserScanResultByIDMember(int memberuserid, string datetimeup, string datetimedown, string fullnamedriver,int Roundscan,string datetime )
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberuserid", memberuserid));
            param.Add(new SqlParameter("@datetimeup", datetimeup));
            param.Add(new SqlParameter("@datetimedown", datetimedown));
            param.Add(new SqlParameter("@fullnamedriver", fullnamedriver));
            param.Add(new SqlParameter("@roundscan", Roundscan));
            param.Add(new SqlParameter("@datetime", datetime));

            return db.ExecuteScalar("sp_User_Scan_Result_Insert_ByIDMember", param).ToString();
        }
        public DataSet GetUserScanResultByIDMember(string fullname,int roundscan ,string datetime, int pageNum, int pageSize, string sortField, string sortOrder)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@fullname", fullname));
            param.Add(new SqlParameter("@roundscan", roundscan));
            param.Add(new SqlParameter("@datetime", datetime));


            param.Add(new SqlParameter("@PageNum", pageNum));
            param.Add(new SqlParameter("@PageSize", pageSize));
            param.Add(new SqlParameter("@SortField", sortField));
            param.Add(new SqlParameter("@SortOrder", sortOrder));

            return db.ExecuteDataSet("sp_User_Scan_Result_SelectPaging_ByIDMember", param);

        }
        public DataSet GetUserScanResult(int pageNum, int pageSize, string sortField, string sortOrder)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
   
            param.Add(new SqlParameter("@PageNum", pageNum));
            param.Add(new SqlParameter("@PageSize", pageSize));
            param.Add(new SqlParameter("@SortField", sortField));
            param.Add(new SqlParameter("@SortOrder", sortOrder));

            return db.ExecuteDataSet("sp_User_Scan_Result_SelectPaging", param);

        }

        public void DeleteUserScanResultByID(int userresultid)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@userresultid", userresultid));

            db.ExecuteNonQuery("sp_User_Scan_Result_Delete_ByID", param);

        }
    }
}
