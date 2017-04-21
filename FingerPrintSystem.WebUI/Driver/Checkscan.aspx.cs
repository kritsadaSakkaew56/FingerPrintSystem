using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.Driver
{
    public partial class Checkscan : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                if (this.DecryptQueryString("driverid") != null)
                {
                    ViewState["member_driver_id"] = DecryptQueryString("driverid").ToString();
                }
                else
                {

                    Response.Redirect("../login.aspx");

                }
                //  BinddataDropDownList1();
                BinddataDropDownList2();
            }

        }
        //private void BinddataDropDownList1()
        //{

        //    // Add a default item at first position.
        //    DropDownList1.Items.Insert(0, new ListItem("เลือกการสแกนลายนิ้วมือ ขึ้น/ลง รถรับส่ง และกดปุ่ม 'ตกลง'", ""));

        //    //Set the default item as selected.
        //    DropDownList1.Items[0].Selected = true;


        //    //Disable the default item.
        //    DropDownList1.Items[0].Attributes["disabled"] = "disabled";

        //    DropDownList1.Items.Add("ขึ้นรถรับส่งเด็กนักเรียน");
        //    DropDownList1.Items.Add("ลงรถรับส่งเด็กนักเรียน");



        //}
        private void BinddataDropDownList2()
        {

            // Add a default item at first position.
            DropDownList2.Items.Insert(0, new ListItem("เลือกการสแกนลายเที่ยวรถรับส่ง และกดปุ่ม 'ตกลง'", ""));

            //Set the default item as selected.
            DropDownList2.Items[0].Selected = true;


            //Disable the default item.
            DropDownList2.Items[0].Attributes["disabled"] = "disabled";

            DropDownList2.Items.Add("การเดินทางจาก บ้าน >>> โรงเรียน");
            DropDownList2.Items.Add("การเดินทางจาก โรงเรียน >>> บ้าน");



        }
    }
}