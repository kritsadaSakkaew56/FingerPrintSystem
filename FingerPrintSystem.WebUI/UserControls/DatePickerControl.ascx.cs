using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.UserControls
{
    public partial class DatePickerControl : System.Web.UI.UserControl
    {
        public string FormatDate = "dd-MM-yyyy";

        public bool IsRequire
        {
            get
            {
                return rfvDate.Visible;
            }
            set
            {
                rfvDate.Visible = value;
            }
        }

        public string ValidationGroup
        {
            get
            {
                return rfvDate.ValidationGroup;
            }
            set
            {
                rfvDate.ValidationGroup = value;
            }
        }

        public string ErrorMessage
        {
            get
            {
                return rfvDate.ErrorMessage;
            }
            set
            {
                rfvDate.ErrorMessage = value;
            }
        }


        public string ControlClientID
        {
            get { return txtDate.ClientID; }
        }

        public bool Display
        {
            get
            {
                return txtDate.Style["display"] != "";
            }
            set
            {
                if (value)
                    txtDate.Style["display"] = "";
                else
                    txtDate.Style["display"] = "none";
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!txtDate.ReadOnly)
            //    ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), this.ClientID, "$('.dpYears').datepicker({autoclose: true, format: 'dd/mm/yyyy',todayHighlight: true});", true);

            if (!txtDate.ReadOnly)
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), this.ClientID,
                    " $('#" + pnlDatepicker.ClientID + "').datepicker({allowDeselection: false,autoclose: true, format: 'dd-mm-yyyy',todayHighlight: true});" +
                    " $('#" + pnlDatepicker.ClientID + "').on('show', function(e){ " +
                    "     console.debug('show', e.date, $(this).data('stickyDate')); " +
                    "      " +
                    "     if ( e.date ) { " +
                    "          $(this).data('stickyDate', e.date); " +
                    "     } " +
                    "     else { " +
                    "          $(this).data('stickyDate', null); " +
                    "     } " +
                    " }); " +

                    " $('#" + pnlDatepicker.ClientID + "').on('hide', function(e){ " +
                    "     console.debug('hide', e.date, $(this).data('stickyDate')); " +
                    "     var stickyDate = $(this).data('stickyDate'); " +
                    "      " +
                    "     if ( !e.date && stickyDate ) { " +
                    "         console.debug('restore stickyDate', stickyDate); " +
                    "         $(this).datepicker('setDate', stickyDate); " +
                    "         $(this).data('stickyDate', null); " +
                    "     } " +
                    " }); " +
                    ""
                , true);
        }

        public string Text
        {
            get
            {
                return GetDateDB(txtDate.Text);
            }
            set
            {
                txtDate.Text = GetDateCulture(value);
            }
        }

        public System.DateTime Value
        {
            get
            {
                if (!string.IsNullOrEmpty(txtDate.Text))
                {
                    DateTime dtm = DateTime.ParseExact(txtDate.Text, this.FormatDate, null);
                    return dtm;
                }
                return DateTime.MinValue;
            }
            set { txtDate.Text = value.ToString(FormatDate); }
        }

        public void Clear()
        {
            Value = DateTime.MinValue;
            txtDate.Text = "";
        }

        public string GetDateCulture(string date)
        {
            string[] arr = date.Split('-');
            if (arr.Length == 3)
            {
                int intYear = int.Parse(arr[2]);
                PageBase pb = new PageBase();

                if (pb.SelectedCulture == "en-US")
                {
                    if (intYear > 2450) intYear -= 543;
                }
                else
                {
                    if (intYear < 2450) intYear += 543;
                }

                return arr[0] + "-" + arr[1] + "-" + intYear.ToString();
            }
            else
                return "";
        }

        public string GetDateDB(string date)
        {
            string[] arr = date.Split('-');
            if (arr.Length == 3)
            {
                int intYear = int.Parse(arr[2]);
                if (intYear > 2450) intYear -= 543; 

                return arr[0] + "-" + arr[1] + "-" + intYear.ToString();
            }
            else
                return "";
        }

        public bool Enabled
        {
            set
            {
                txtDate.ReadOnly = !value;
                if (value)
                    txtDate.Style.Add("background-color", "");
                else
                    txtDate.Style.Add("background-color", "#EEEEEE");
            }
        }
    }
}