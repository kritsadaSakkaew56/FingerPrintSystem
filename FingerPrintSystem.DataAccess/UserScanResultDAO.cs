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
        public string AddUserScanResultByIDMember(int memberuserid, string datetimeup, string datetimedown, string fullnamedriver,int Roundscan )
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberuserid", memberuserid));
            param.Add(new SqlParameter("@datetimeup", datetimeup));
            param.Add(new SqlParameter("@datetimedown", datetimedown));
            param.Add(new SqlParameter("@fullnamedriver", fullnamedriver));
            param.Add(new SqlParameter("@roundscan", Roundscan));

           return db.ExecuteScalar("sp_User_Scan_Result_Insert_ByIDMember", param).ToString();
        }
    }
}
