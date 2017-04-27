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
        public string AddUserScanByIDMember(int memberuserid, string Fingerprintid,string datetimeup,string datetimedown,string fullnamedriver)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberuserid", memberuserid));
            param.Add(new SqlParameter("@Fingerprintid", Fingerprintid));
            param.Add(new SqlParameter("@datetimeup", datetimeup));
            param.Add(new SqlParameter("@datetimedown", datetimedown));
            param.Add(new SqlParameter("@fullnamedriver", fullnamedriver));

            return db.ExecuteScalar("sp_User_Scan_Insert_ByIDMember",param).ToString();
        }
        public DataSet GetUserScan(int pageNum, int pageSize, string sortField, string sortOrder)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@PageNum", pageNum));
            param.Add(new SqlParameter("@PageSize", pageSize));
            param.Add(new SqlParameter("@SortField", sortField));
            param.Add(new SqlParameter("@SortOrder", sortOrder));

            return db.ExecuteDataSet("sp_User_Scan_SelectPaging", param);

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
        public DataTable GetUserScanJoin_tbUserByfullnamedriver(string fullnamedriver)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@fullnamedriver", fullnamedriver));

            return db.ExecuteDataTable("sp_User_Scan_SelectJoin_tbuser_Byfullnamedriver", param);


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
        public void UpdateUserScanByMember(int memberuserid ,string datetimeup , string datetimedown)
        {


            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@memberuserid", memberuserid));
            param.Add(new SqlParameter("@datetimeup", datetimeup));
            param.Add(new SqlParameter("@datetimedown", datetimedown));

            db.ExecuteNonQuery("sp_User_Scan_Update_ByMember", param);


        }
        public void UpdateUserScanByMember_Roundscan(int memberuserid, int Roundscan )
        {


            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@memberuserid", memberuserid));
            param.Add(new SqlParameter("@roundscan", Roundscan));
          

            db.ExecuteNonQuery("sp_User_Scan_Update_ByMember_Roundscan", param);


        }

        public void UpdateUserScanByIDMember_Up(int memberuserid, string datetimeup)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@memberuserid", memberuserid));
            param.Add(new SqlParameter("@datetimeup", datetimeup));

            db.ExecuteNonQuery("sp_User_Scan_Update_ByIDMember_Up", param);

        }
        public void UpdateUserScanByIDMemberReset_Up(int memberuserid, string datetimeup)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@memberuserid", memberuserid));
            param.Add(new SqlParameter("@datetimeup", datetimeup));

            db.ExecuteNonQuery("sp_User_Scan_Update_ByIDMemberReset_Up", param);

        }

        public void UpdateUserScanByIDMember_Down(int memberuserid, string datetimedown)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@memberuserid", memberuserid));
            param.Add(new SqlParameter("@datetimedown", datetimedown));

            db.ExecuteNonQuery("sp_User_Scan_Update_ByIDMember_Down", param);

        }
        public void UpdateUserScanByIDMemberReset_Down(int memberuserid, string datetimedown)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@memberuserid", memberuserid));
            param.Add(new SqlParameter("@datetimedown", datetimedown));

            db.ExecuteNonQuery("sp_User_Scan_Update_ByIDMemberReset_Down", param);

        }
        public void UpdateUserScanByIDMember_Noteup(int memberuserid, int noteup)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@memberuserid", memberuserid));
            param.Add(new SqlParameter("@noteup", noteup));

            db.ExecuteNonQuery("sp_User_Scan_Update_ByMember_Noteup", param);

        }
        public void UpdateUserScanByIDMember_Notedown(int memberuserid, int notedown)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@memberuserid", memberuserid));
            param.Add(new SqlParameter("@notedown", notedown));

            db.ExecuteNonQuery("sp_User_Scan_Update_ByMember_Notedown", param);

        }

    }
}
