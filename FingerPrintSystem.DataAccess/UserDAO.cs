using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

using System.Data.SqlClient;

namespace FingerPrintSystem.DataAccess
{
    public class UserDAO
    {

        public string AddUser(int memberID, string ID, int SchoolID,string Fullname ,string Fullnameparent,
                              string Tel,string Email,string Photo , string passwordDecrypt )
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberid", memberID));
            param.Add(new SqlParameter("@id", ID));
            param.Add(new SqlParameter("@schoolid", SchoolID));
            param.Add(new SqlParameter("@fullname", Fullname));
            param.Add(new SqlParameter("@fullnameparent", Fullnameparent));
            param.Add(new SqlParameter("@tel", Tel));
            param.Add(new SqlParameter("@email", Email));
            param.Add(new SqlParameter("@photo", Photo));
            param.Add(new SqlParameter("@password_Decrypt", passwordDecrypt));

            return db.ExecuteScalar("sp_User_Insert", param).ToString();

        }
       
        public void UpdateUser(int Userid, bool Isactive)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@user_id", Userid));
            param.Add(new SqlParameter("@is_active", Isactive));

            db.ExecuteNonQuery("sp_User_Update", param);

        }
        public DataTable GetUserByMember(int memberid)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberid", memberid));
            return db.ExecuteDataTable("sp_User_Select_ByIDMember", param);

        }

        public string GetMaxID()
        {

            DatabaseHelper db = new DatabaseHelper();
            return db.ExecuteScalar("sp_User_Select_ByIDMax").ToString();

        }
        public DataSet GetUser(int pageNum, int pageSize, string sortField, string sortOrder)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
    
            param.Add(new SqlParameter("@PageNum", pageNum));
            param.Add(new SqlParameter("@PageSize", pageSize));
            param.Add(new SqlParameter("@SortField", sortField));
            param.Add(new SqlParameter("@SortOrder", sortOrder));

            return db.ExecuteDataSet("sp_User_SelectPaging", param);


        }
        public DataSet GetUserJointbSchooladdress(int pageNum, int pageSize, string sortField, string sortOrder)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@PageNum", pageNum));
            param.Add(new SqlParameter("@PageSize", pageSize));
            param.Add(new SqlParameter("@SortField", sortField));
            param.Add(new SqlParameter("@SortOrder", sortOrder));

            return db.ExecuteDataSet("sp_User_SelectPagingJoin_tbSchooladdress", param);


        }
        public DataTable GetUserSelectJointbSchooladdress_ByIDMember(int memberuserid)
        {


            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@memberuserid", memberuserid));
            return db.ExecuteDataTable("sp_User_SelectJoin_tbSchooladdress_ByIDMember", param);

        }
        public void UpdateUserByMember(int memberuserid,int schoolid,string id ,string fullname ,string fullnameparent,string tel,string email)
        {


            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@memberid", memberuserid));
            param.Add(new SqlParameter("@schoolid", schoolid));
            param.Add(new SqlParameter("@id", id));
            param.Add(new SqlParameter("@fullname", fullname));

            param.Add(new SqlParameter("@fullnameparent", fullnameparent));
            param.Add(new SqlParameter("@tel", tel));
            param.Add(new SqlParameter("@email", email));

            db.ExecuteNonQuery("sp_User_Update_ByIDmember", param);


        }

        public void DeleteUserByMember(int memberuserid)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@memberid", memberuserid));
            db.ExecuteNonQuery("sp_User_Delete_ByIDMember", param);
        }
       
    }
}
