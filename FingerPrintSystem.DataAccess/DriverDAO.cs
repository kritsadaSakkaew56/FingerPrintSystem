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
        public string AddDriverByIDMember(int memberdriverid, string id, string fullname, string tel, string email)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberdriverid", memberdriverid));
            param.Add(new SqlParameter("@id", id));
            param.Add(new SqlParameter("@fullname", fullname));
            param.Add(new SqlParameter("@tel", tel));
            param.Add(new SqlParameter("@email", email));


            return db.ExecuteScalar("sp_Driver_Insert_ByMember", param).ToString();
        }
        public DataTable GetDriverByIDMember(int memberdriverid)
        {
            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberdriverid", memberdriverid));

            return db.ExecuteDataTable("sp_Driver_Select_ByIDMember", param);

        }
        public void UpdateDriverByIDMember_Roundscan(int memberdriverid , int roundscan)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberdriverid", memberdriverid));
            param.Add(new SqlParameter("@roundscan", roundscan));

             db.ExecuteNonQuery("sp_Driver_Update_ByIDMember_Roundscan", param);


        }
        public void UpdateDriverByIDMember(int memberdriverid, string id , string fullname , string tel,string email)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberdriverid", memberdriverid));
            param.Add(new SqlParameter("@id", id));
            param.Add(new SqlParameter("@fullname ", fullname));
            param.Add(new SqlParameter("@tel", tel));
            param.Add(new SqlParameter("@email", email));

            db.ExecuteNonQuery("sp_Driver_Update_ByIDMember", param);


        }
        public DataSet GetDriver(int pageNum, int pageSize, string sortField, string sortOrder)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();

            param.Add(new SqlParameter("@PageNum", pageNum));
            param.Add(new SqlParameter("@PageSize", pageSize));
            param.Add(new SqlParameter("@SortField", sortField));
            param.Add(new SqlParameter("@SortOrder", sortOrder));

            return db.ExecuteDataSet("sp_Driver_SelectPaging", param);

        }
        public void DeleteDriverByMember(int memberdriverid)
        {

            DatabaseHelper db = new DatabaseHelper();
            List<SqlParameter> param = new List<SqlParameter>();
            param.Add(new SqlParameter("@memberdriverid", memberdriverid));

            db.ExecuteNonQuery("sp_Driver_Delete", param);


        }

    }
}
