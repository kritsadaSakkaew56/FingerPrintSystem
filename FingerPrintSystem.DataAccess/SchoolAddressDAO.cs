using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;

namespace FingerPrintSystem.DataAccess
{
   public class SchoolAddressDAO
    {

        public string AddSchoolAddress(string latitude, string longitude, string address, string detailaddress)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@latitude", latitude));
            param.Add(new SqlParameter("@longitude", longitude));
            param.Add(new SqlParameter("@address", address));
            param.Add(new SqlParameter("@detailaddress", detailaddress));


            return db.ExecuteScalar("sp_School_Address_Insert", param).ToString();
        }
        public DataSet GetSchoolAddress()
        {

            DatabaseHelper db = new DatabaseHelper();
            return db.ExecuteDataSet("sp_School_Address_Select");
        }
        public DataTable GetSchoolAddressByID(int schoolid)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@schoolid", schoolid));

            return db.ExecuteDataTable("sp_School_Address_Select_ByID", param);

        }

    }
}
