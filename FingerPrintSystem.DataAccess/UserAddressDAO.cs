using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;

namespace FingerPrintSystem.DataAccess
{
    public class UserAddressDAO
    {
        public string AddUserAddress(int MemberID, string Latitude, string Longitude, string address, string Detailaddress)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberid", MemberID));
            param.Add(new SqlParameter("@latitude", Latitude));
            param.Add(new SqlParameter("@longitude", Longitude));
            param.Add(new SqlParameter("@address", address));
            param.Add(new SqlParameter("@detailaddress", Detailaddress));

            return db.ExecuteScalar("sp_User_Address_Insert", param).ToString(); ;

        }

        public DataTable GetUserAddressByMember(int Memberid)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberid", Memberid));

            return db.ExecuteDataTable("sp_User_Address_Select_ByIDMember", param);

        }

    }
}
