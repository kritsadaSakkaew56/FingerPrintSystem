using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;

namespace FingerPrintSystem.DataAccess
{
   public class UserScanDAO
    {
        public string AddUserScanByIDMember(int memberuserid, string Fingerprintid,string datetimeup,string datetimedown)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberuserid", memberuserid));
            param.Add(new SqlParameter("@Fingerprintid", Fingerprintid));
            param.Add(new SqlParameter("@datetimeup", datetimeup));
            param.Add(new SqlParameter("@datetimedown", datetimedown));

            return db.ExecuteScalar("sp_User_Scan_Insert_ByIDMember",param).ToString();
        }

        public DataTable GetUserScanByIDMember(int memberuserid)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberuserid", memberuserid));

            return db.ExecuteDataTable("sp_User_Scan_Select_ByIDMember", param);

        }
        public DataSet GetUserScanJoin_tbUser()
        {


            DatabaseHelper db = new DatabaseHelper();
            return db.ExecuteDataSet("sp_User_Scan_SelectJoin_tbuser");
          
        }
        public void UpdateUserScanByFingerprintid_Down(string fingerprintid,string datetimedown)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@fingerprintid", fingerprintid));
            param.Add(new SqlParameter("@datetimedown", datetimedown));

            db.ExecuteNonQuery("sp_User_Scan_Update_ByFingerprintid_Down", param);

        }

        public void UpdateUserScanByFingerprintid_Up(string fingerprintid, string datetimeup)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@fingerprintid", fingerprintid));
            param.Add(new SqlParameter("@datetimeup", datetimeup));

            db.ExecuteNonQuery("sp_User_Scan_Update_ByFingerprintid_Up", param);

        }

    }
}
