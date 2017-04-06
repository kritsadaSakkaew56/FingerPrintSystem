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

        public string AddUser(int memberID, string ID,string Fullname,string School ,string Fullnameparent,
                              string Tel,string Email,string Photo , string passwordDecrypt )
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberid", memberID));
            param.Add(new SqlParameter("@id", ID));
            param.Add(new SqlParameter("@fullname", Fullname));
            param.Add(new SqlParameter("@school", School));
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
    }
}
