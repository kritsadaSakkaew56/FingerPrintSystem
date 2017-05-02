using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace FingerPrintSystem.DataAccess
{
    public class MemberDAO
    {
        public DataTable GetMember(int memberid)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberid", memberid));
            return db.ExecuteDataTable("sp_Member_Select_ByID", param);

        }
        public DataSet GetMember(int pageNum, int pageSize, string sortField, string sortOrder)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@PageNum", pageNum));
            param.Add(new SqlParameter("@PageSize", pageSize));
            param.Add(new SqlParameter("@SortField", sortField));
            param.Add(new SqlParameter("@SortOrder", sortOrder));

            return db.ExecuteDataSet("sp_Member_SelectPaging", param);


        }
      
        public void UpdateMemberByIsactive(int MemberID, bool Isactive)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@memberuserid", MemberID));
            param.Add(new SqlParameter("@isactive", Isactive));

            db.ExecuteNonQuery("sp_Member_Update_ByIsactive", param);

        }
        public void UpdateMemberByRegister(int MemberID, int register)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@memberuserid", MemberID));
            param.Add(new SqlParameter("@register", register));

            db.ExecuteNonQuery("sp_Member_Update_Byregister", param);

        }

        public string AddMember(string Username, string Password, string createdby,int register, bool isactive)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@username", Username));
            param.Add(new SqlParameter("@password", Password));
            param.Add(new SqlParameter("@createdby", createdby));
            param.Add(new SqlParameter("@register", register));
            param.Add(new SqlParameter("@isactive", isactive));

            return db.ExecuteScalar("sp_Member_Insert", param).ToString();


        }
        public string GetMemberByChecklogin(string Username , string Password)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@username", Username));
            param.Add(new SqlParameter("@password", Password));
            return db.ExecuteScalar("sp_Member_Select_ByChecklogin", param).ToString();
        }
        public string GetMemberByCheckloginScan(string Username, string Password)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@username", Username));
            param.Add(new SqlParameter("@password", Password));
            return db.ExecuteScalar("sp_Member_Select_ByCheckloginscan", param).ToString();
        }
    }
}
