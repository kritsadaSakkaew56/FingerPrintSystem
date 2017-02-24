using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI.UserControls
{
    public partial class PagingControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((!this.Page.IsPostBack && !this.Page.IsCallback) && (this.ddlCurrentPage.Items.Count == 0))
            {
                this.ddlCurrentPage.Items.Add("--");
                this.lblPageCount.Text = "--";
            }

            StringBuilder sb = new StringBuilder("function SelectedPage_" + this.ClientID + "(arg){");
            sb.Append("document.getElementById('" + ddlCurrentPage.ClientID + "').options[arg-1].selected = true;");
            sb.Append("document.getElementById('" + ddlCurrentPage.ClientID + "').onchange();");
            sb.Append("}");

            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "pg_" + this.ClientID, sb.ToString(), true);
        }

        // Properties
        public int CurrentPageIndex
        {
            get
            {
                if (this.ViewState["CurrentPageIndex"] == null)
                {
                    return 1;
                }
                return (int)this.ViewState["CurrentPageIndex"];
            }
            set
            {
                this.ViewState["CurrentPageIndex"] = value;
                if (this.ddlCurrentPage.Items.FindByValue(this.ViewState["CurrentPageIndex"].ToString()) != null)
                {
                    this.ddlCurrentPage.SelectedValue = this.ViewState["CurrentPageIndex"].ToString();
                }
            }
        }

        public int PageSize
        {
            get
            {
                if (Session["PageSize"] == null)
                {
                    Session["PageSize"] = 10;
                }
                return (int)Session["PageSize"];
            }
            set
            {
                Session["PageSize"] = value;
                if (int.Parse(ddlPageSize.SelectedValue) != value)
                {
                    this.CurrentPageIndex = 1;
                    ddlPageSize.SelectedValue = value.ToString();
                    OnCurrentPageIndexChanged(new EventArgs());
                }
            }
        }

        public int RecordCount
        {
            get
            {
                if (this.ViewState["ReCC" + this.ClientID] == null)
                {
                    return 0;
                }
                return int.Parse(this.ViewState["ReCC" + this.ClientID].ToString());
            }
            set
            {
                this.ViewState["ReCC" + this.ClientID] = value;
                PreParePageDropdown();
            }
        }

        private void PreParePageDropdown()
        {
            this.lblRecord.Text = this.RecordCount.ToString();
            double maxPage = Math.Ceiling((double)(((double)this.RecordCount) / ((double)this.PageSize)));
            this.lblPageCount.Text = maxPage.ToString();
            int currentSelectedIndex = this.ddlCurrentPage.SelectedIndex;
            this.ddlCurrentPage.Items.Clear();
            if (maxPage > 0.0)
            {
                for (double i = 1.0; i <= maxPage; i++)
                {
                    this.ddlCurrentPage.Items.Add(i.ToString());
                }
            }
            else
            {
                this.ddlCurrentPage.Items.Add("--");
                this.lblPageCount.Text = "--";
            }
            if (this.ddlCurrentPage.Items.Count > currentSelectedIndex)
            {
                this.ddlCurrentPage.SelectedIndex = currentSelectedIndex;
            }
            RenderPageSelector();
        }

        public string SortColumn
        {
            get
            {
                if (ViewState["SortColumn" + this.ClientID] == null)
                    ViewState["SortColumn" + this.ClientID] = "";

                return ViewState["SortColumn" + this.ClientID].ToString();
            }
            set
            {
                ViewState["SortColumn" + this.ClientID] = value;
            }
        }

        public string SortOrder
        {
            get
            {
                if (ViewState["SortOrder" + this.ClientID] == null)
                    ViewState["SortOrder" + this.ClientID] = "";

                return ViewState["SortOrder" + this.ClientID].ToString();
            }
            set
            {
                ViewState["SortOrder" + this.ClientID] = value;
            }
        }

        #region Custom Event
        public event EventHandler CurrentPageIndexChanged;

        protected virtual void OnCurrentPageIndexChanged(EventArgs e)
        {
            if (CurrentPageIndexChanged != null)
                CurrentPageIndexChanged(this, e);
            RenderPageSelector();
        }

        protected void ddlCurrentPage_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.CurrentPageIndex = Int32.Parse(ddlCurrentPage.SelectedItem.Text);
            OnCurrentPageIndexChanged(new EventArgs());
        }

        protected void ddlPageSize_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.PageSize = int.Parse(ddlPageSize.SelectedItem.Text);
            PreParePageDropdown();
            OnCurrentPageIndexChanged(new EventArgs());
        }

        private void RenderPageSelector()
        {
            StringBuilder sb = new StringBuilder();
            if (this.CurrentPageIndex == 1)
                sb.Append("<li class='prev disabled'><a href='javascript:void(0);'>|< </a></li><li class='prev disabled'><a href='javascript:void(0);'>< </a></li>");
            else
            {
                sb.Append("<li class='prev'><a href='javascript:SelectedPage_" + this.ClientID + "(1);'>|< </a></li>");
                sb.Append("<li class='prev'><a href='javascript:SelectedPage_" + this.ClientID + "(" + (this.CurrentPageIndex - 1).ToString() + ");'>< </a></li>");
            }
            int preIndex = 3;
            int postIndex = 3;
            int maxShow = 6;
            if (maxShow > ddlCurrentPage.Items.Count) maxShow = ddlCurrentPage.Items.Count - 1;
            if (this.CurrentPageIndex < 4)
            {
                preIndex = this.CurrentPageIndex - 1;
                postIndex = maxShow - preIndex;
            }
            else if (this.CurrentPageIndex > ddlCurrentPage.Items.Count - 4)
            {
                postIndex = ddlCurrentPage.Items.Count - this.CurrentPageIndex;
                preIndex = maxShow - postIndex;
            }

            for (int i = this.CurrentPageIndex - preIndex; i < this.CurrentPageIndex; i++)
                sb.Append("<li><a href='javascript:SelectedPage_" + this.ClientID + "(" + i.ToString() + ");'>" + i.ToString() + "</a></li>");

            sb.Append("<li class='active'><a href='javascript:void(0);'>" + this.CurrentPageIndex.ToString() + "</a></li>");

            for (int i = this.CurrentPageIndex + 1; i <= this.CurrentPageIndex + postIndex; i++)
                sb.Append("<li><a href='javascript:SelectedPage_" + this.ClientID + "(" + i.ToString() + ");'>" + i.ToString() + "</a></li>");

            if (this.CurrentPageIndex == ddlCurrentPage.Items.Count)
                sb.Append("<li class='next disabled'><a href='javascript:void(0);'>>  </a></li><li class='next disabled'><a href='javascript:void(0);'>>| </a></li>");
            else
            {
                sb.Append("<li class='next'><a href='javascript:SelectedPage_" + this.ClientID + "(" + (this.CurrentPageIndex + 1).ToString() + ");'>> </a></li>");
                sb.Append("<li class='next'><a href='javascript:SelectedPage_" + this.ClientID + "(" + ddlCurrentPage.Items.Count.ToString() + ");'>>| </a></li>");
            }
            lblCustomPage.Text = sb.ToString();
        }

        #endregion
    }
}