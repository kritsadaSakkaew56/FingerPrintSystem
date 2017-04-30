using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.Admin
{
    public partial class _default : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (this.DecryptQueryString("adminid") != null)
                {
                    labdlogin.Text = "ยินดีต้อนรับเข้าสู่ระบบสำหรับผู้ดูแลระบบเว็บไซต์";
                    labdatetimelogin.Text = DateTime.Now.ToString("dd MMMM yyyy เวลา HH:mm:ss");
                    string data = DecryptQueryString("adminid").ToString();
                }
                else
                {

                    Response.Redirect("../login.aspx");

                }
            }


        }
        private string datetime()
        {


            DateTime DtNow = new DateTime();
            DtNow = DateTime.Now;
            int day = Convert.ToInt32(DtNow.ToString("dd"));
            int Mounth = Convert.ToInt32(DtNow.ToString("MM"));
            int year = Convert.ToInt32(DtNow.ToString("yyyy"));

            int HH = Convert.ToInt32(DtNow.ToString("HH"));
            int mm = Convert.ToInt32(DtNow.ToString("mm"));
            int ss = Convert.ToInt32(DtNow.ToString("ss"));

            if (Mounth <= 9)
            {
                string cMounth = "0" + Mounth;
                return day + "-" + cMounth + "-" + year + " เวลา " + HH + ":" + mm + ":" + ss;
            }
            else
            {
                string cMounth = Mounth.ToString();
                return day + "-" + cMounth + "-" + year + " เวลา " + HH + ":" + mm + ":" + ss;
            }


        }
    }
}