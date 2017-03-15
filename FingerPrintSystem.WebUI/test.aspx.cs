using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Binddata();
            }

        }
       


        [WebMethod]
        public static IEnumerable<Products> GetData()
        {
            List<Products> Detail = new List<Products>();

            using (var connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DataBase"].ConnectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(@"SELECT  [ProductID],[Name],[UnitPrice],[Quantity] FROM [dbo].[Products]", connection))
                {
                    // Make sure the command object does not already have
                    // a notification object associated with it.
                    command.Notification = null;
                    SqlDependency.Start(ConfigurationManager.ConnectionStrings["DataBase"].ConnectionString);
                    SqlDependency dependency = new SqlDependency(command);
                    dependency.OnChange += new OnChangeEventHandler(dependency_OnChange);

                    if (connection.State == ConnectionState.Closed)
                        connection.Open();

                    SqlDataAdapter da = new SqlDataAdapter(command);
                    DataTable dtGetData = new DataTable();

                    da.Fill(dtGetData);
                    foreach (DataRow dtRow in dtGetData.Rows)
                    {
                        Products DataObj = new Products();
                        DataObj.ProductID = int.Parse(dtRow["ProductID"].ToString());
                        DataObj.Name = dtRow["Name"].ToString();
                        DataObj.UnitPrice = dtRow["UnitPrice"].ToString();
                        DataObj.Quantity = dtRow["Quantity"].ToString();

                        Detail.Add(DataObj);
                    }
                    return Detail.ToArray();

                    //using (var reader = command.ExecuteReader())
                    //    return reader.Cast<IDataRecord>().Select(x => new Products()
                    //    {
                    //        ProductID = x.GetInt32(0),
                    //        Name = x.GetString(1),
                    //        UnitPrice = x.GetString(2),
                    //        Quantity = x.GetString(3),
                    //    }).ToList();



                }
            }
        }

        public class Products
        {
            public int ProductID { get; set; }
            public string Name { get; set; }
            public string UnitPrice { get; set; }
            public string Quantity { get; set; }

        }
        private void Binddata()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("ProductID");
            dt.Columns.Add("Name");
            dt.Columns.Add("UnitPrice");
            dt.Columns.Add("Quantity");

            dt.Rows.Add();
            gvDetails.DataSource = dt;
            gvDetails.DataBind();
           

        }
        private static void dependency_OnChange(object sender, SqlNotificationEventArgs e)
        {
            MyHub.Show();
        }
    }
}