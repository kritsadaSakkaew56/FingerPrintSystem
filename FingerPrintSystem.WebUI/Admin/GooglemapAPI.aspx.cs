using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FingerPrintSystem.DataAccess;

namespace FingerPrintSystem.WebUI.Admin
{
    public partial class GooglemapAPI : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (this.DecryptQueryString("adminid") != null)
                {
                    ViewState["member_admin_id"] = this.DecryptQueryString("adminid").ToString();
                    string memberid = ViewState["member_admin_id"].ToString();
                }
                else
                {

                    Response.Redirect("../Login.aspx");
                }


            }
        }

        protected void bthsave_Click(object sender, EventArgs e)
        {


            if (address.Text == "" || txtcomment.Text == "" || latitude.Text == "" || longitude.Text == "")
            {
                labaddress.Visible = true;
                labaddress.Text = "กรุณากรอกข้อมูลให้ครบถ้วย";
                address.Text = "";
                longitude.Text = "";
                latitude.Text = "";
            }
            else
            {

                int memberid = Int32.Parse(ViewState["member_admin_id"].ToString());
                SchoolAddressDAO SchoolAddress = new SchoolAddressDAO();
                SchoolAddress.AddSchoolAddress(latitude.Text.Trim(), longitude.Text.Trim(), address.Text.Trim(), txtcomment.Text.Trim());
                Response.Redirect("../Admin/AddUser.aspx" + this.EncryptQueryString("adminid=" + memberid));

            }



        }

        protected void bthback_Click(object sender, EventArgs e)
        {
            int memberid = Int32.Parse(ViewState["member_admin_id"].ToString());
            Response.Redirect("../Admin/AddUser.aspx" + this.EncryptQueryString("adminid=" + memberid));
        }
    }
}