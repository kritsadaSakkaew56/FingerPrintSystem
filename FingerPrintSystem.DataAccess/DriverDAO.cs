using System;
using System.Collections.Generic;

using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;

namespace FingerPrintSystem.DataAccess
{
  public  class DriverDAO
    {
        public DataTable GetDriverByIDMember(int memberdriverid)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberdriverid", memberdriverid));

            return db.ExecuteDataTable("sp_Driver_Select_ByIDMember", param);

        }

    }
}
