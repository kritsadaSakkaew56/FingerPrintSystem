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
    public partial class index : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               Binddata();
            }


        }
        public class Products
        {
            public int ProductID { get; set; }
            public string Name { get; set; }
            public string UnitPrice { get; set; }
            public string Quantity { get; set; }
        }

        [WebMethod]
        public static IEnumerable<Products> GetData()
        {

            using (var connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Default"].ConnectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(@"SELECT  [ProductID],[Name],[UnitPrice],[Quantity] FROM [dbo].[Products]", connection))
                {
                    // Make sure the command object does not already have
                    // a notification object associated with it.
                    command.Notification = null;
                    SqlDependency.Start(ConfigurationManager.ConnectionStrings["Default"].ConnectionString);
                    SqlDependency dependency = new SqlDependency(command);
                    dependency.OnChange += new OnChangeEventHandler(dependency_OnChange);

                    if (connection.State == ConnectionState.Closed)
                        connection.Open();

                    using (var reader = command.ExecuteReader())
                        return reader.Cast<IDataRecord>().Select(x => new Products()
                        {
                            ProductID = x.GetInt32(0),
                            Name = x.GetString(1),
                            UnitPrice = x.GetString(2),
                            Quantity = x.GetString(3),
                        }).ToList();

                }
            }
        }
        private static void dependency_OnChange(object sender, SqlNotificationEventArgs e)
        {
            MyHub.Show();
        }
        private void Binddata()
        {
            DataTable dt = new DataTable();
            dt.Rows.Add();
            //gvDetails.DataSource = dt;
            //gvDetails.DataBind();
            //gvDetails.Rows[0].Visible = false;

        }
    }
}