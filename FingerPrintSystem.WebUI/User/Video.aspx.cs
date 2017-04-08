using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.User
{
    public partial class Video : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                btnBack.Text = "<i class='fa fa-arrow-left'></i> " + "กลับ";
                youtube();

                if (this.DecryptQueryString("userid") != null)
                {
                    ViewState["member_id"] = this.DecryptQueryString("userid").ToString();
                    int memberid = Convert.ToInt32(ViewState["member_id"].ToString());

                }
                else
                {

                    Response.Redirect("../Login.aspx");
                }
            }
        }
        private void youtube()
        {
            string UrlYoutube = "https://www.youtube.com/watch?v=_DnXFvQdJwc";
            string[] stringSplit = new string[] { "watch?v=" };
            string[] TostringSplit = UrlYoutube.Split(stringSplit, StringSplitOptions.None);
            string valueSplit = TostringSplit[1];

            string width = "70%";
            string height = "400";
            iframeDiv.Controls.Add(new LiteralControl("<iframe width=" + width + " height=" + height + " src=" + "https://www.youtube.com/embed/" + valueSplit + "?autoplay=1&origin=http://example.com" + "></iframe><br />"));

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {

            string memberid = this.DecryptQueryString("userid").ToString();
            Response.Redirect("../User/Home.aspx" + this.EncryptQueryString("userid=" + memberid));



        }
    }
}