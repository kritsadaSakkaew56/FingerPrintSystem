using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FingerPrintSystem.DataAccess;
using System.Data;
using System.Text;
using System.IO;


namespace FingerPrintSystem.WebUI.Admin
{
    public partial class EditGooglemapAPI : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (this.DecryptQueryString("adminid") != null && this.DecryptQueryString("userid") != null)
                {
                    ViewState["member_admin_id"] = this.DecryptQueryString("adminid").ToString();
                    ViewState["member_user_id"] = this.DecryptQueryString("userid").ToString();
                    BindData();
                  
                }
                else if(this.DecryptQueryString("adminid") != null && this.DecryptQueryString("schoolid") != null)
                {

                    ViewState["member_admin_id"] = this.DecryptQueryString("adminid").ToString();
                    ViewState["member_school_id"] = this.DecryptQueryString("schoolid").ToString();
                    BindDataschool();
                }
                else

                {

                    Response.Redirect("../Login.aspx");
                }

              
             


            }
        }

        private void BindData()

        {
           
            int memberuserid = Int32.Parse(ViewState["member_user_id"].ToString());
            DataTable dt = new UserDAO().GetUserByMember(memberuserid);
            DataTable dtAddress = new UserAddressDAO().GetUserAddressByMember(memberuserid);

            if (dt.Rows.Count>0 && dtAddress.Rows.Count >0)
            {
                labaddressfullname.Text = "แก้ไขที่อยู่ปัจจุบัน ( คุณ " + dt.Rows[0]["fullname"].ToString()+" )";
                txtcomment.Text = dtAddress.Rows[0]["detailaddress"].ToString();

            }

        }
        private void BindDataschool()

        {
            int schoolid = Int32.Parse(ViewState["member_school_id"].ToString());
            DataTable dt = new SchoolAddressDAO().GetSchoolAddressByID(schoolid);

            if (dt.Rows.Count > 0)
            {
                labaddressfullname.Text = "แก้ไขที่อยู่ปัจจุบัน( "+dt.Rows[0]["detailaddress"].ToString() + " )";
                txtcomment.Text = dt.Rows[0]["detailaddress"].ToString();
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
            

                if (this.DecryptQueryString("adminid") != null && this.DecryptQueryString("userid") != null)
                {
          
                    int memberuserid = Int32.Parse(ViewState["member_user_id"].ToString());
                    int memberadminid = Int32.Parse(ViewState["member_admin_id"].ToString());

                    UserAddressDAO UserAddress = new UserAddressDAO();
                    UserAddress.UpdateUserAddressByMember(memberuserid,
                                                            latitude.Text.Trim(),
                                                            longitude.Text.Trim(),
                                                            address.Text.Trim(),
                                                            txtcomment.Text.Trim());
                    Response.Redirect("../Admin/AddUser.aspx" + this.EncryptQueryString("adminid=" + memberadminid));

                }
                else if (this.DecryptQueryString("adminid") != null && this.DecryptQueryString("schoolid") != null)
                {

                    int schoolid = Int32.Parse(ViewState["member_school_id"].ToString());
                    int memberadminid = Int32.Parse(ViewState["member_admin_id"].ToString());
                    SchoolAddressDAO SchoolAddress = new SchoolAddressDAO();
                    SchoolAddress.UpdateSchoolAddressByID(schoolid, 
                                                        latitude.Text.Trim(),
                                                        longitude.Text.Trim(),
                                                        address.Text.Trim(),
                                                        txtcomment.Text.Trim());
                    Response.Redirect("../Admin/AddUser.aspx" + this.EncryptQueryString("adminid=" + memberadminid));
                }
                else
                {
                    Response.Redirect("../Login.aspx");

                }
              

            }
        }

        protected void bthback_Click(object sender, EventArgs e)
        {
            int memberadminid = Int32.Parse(ViewState["member_admin_id"].ToString());
           
            Response.Redirect("../Admin/AddUser.aspx" + this.EncryptQueryString("adminid=" + memberadminid));
        }
    }
}