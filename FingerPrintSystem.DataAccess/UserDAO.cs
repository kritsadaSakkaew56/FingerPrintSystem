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


        public string AddUser(int UserID,string UserName,string Password,
                              int ID,string Fullname,string School ,string Fullnameparent,
                              int Tel,string Email,bool IsActive,string Photo, Byte[] Savatardata)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@user_id", UserID));
            param.Add(new SqlParameter("@username", UserName));
            param.Add(new SqlParameter("@password", Password));
            param.Add(new SqlParameter("@id", ID));
            param.Add(new SqlParameter("@fullname", Fullname));
            param.Add(new SqlParameter("@school", School));
            param.Add(new SqlParameter("@fullnameparent", Fullnameparent));
            param.Add(new SqlParameter("@tel", Tel));
            param.Add(new SqlParameter("@email", Email));
            param.Add(new SqlParameter("@is_active", IsActive));
            param.Add(new SqlParameter("@photo", Photo));
            param.Add(new SqlParameter("@photo_data", Savatardata));

            return db.ExecuteScalar("sp_User_Insert", param).ToString();

        }
    }
}
