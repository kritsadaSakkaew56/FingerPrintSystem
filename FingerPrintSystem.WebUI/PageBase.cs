using FingerPrintSystem.Utility;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FingerPrintSystem.WebUI
{
    public class PageBase : System.Web.UI.Page
    {

        #region Configuration
        public string C_DateTimeFormat
        {
            get
            {
                return ConfigurationManager.AppSettings["DateTimeFormat"];
            }
        }

        public string C_DateFormat
        {
            get
            {
                return ConfigurationManager.AppSettings["DateFormat"];
            }
        }

        public string C_TimeFormat
        {
            get
            {
                return ConfigurationManager.AppSettings["TimeFormat"];
            }
        }

        public string C_StreamingURL
        {
            get
            {
                return ConfigurationManager.AppSettings["StreamingURL"];
            }
        }
        #endregion

        public string PagePermissionID
        {
            get
            {
                try
                {
                    if (ViewState["PagePermissionID"] == null) ViewState["PagePermissionID"] = "-1";
                }
                catch { return ""; }
                return ViewState["PagePermissionID"].ToString();
            }
            set
            {
                ViewState["PagePermissionID"] = value;

                DataView dv = this.Permission.DefaultView;
                dv.RowFilter = " permission_code LIKE '%1%' AND permission_id = " + value;
                if (dv.Count == 0)
                {
                    Response.Redirect("../Error/Err_Permission.aspx");
                }
            }
        }

        public bool CanEdit
        {
            get
            {
                DataView dv = this.Permission.DefaultView;
                dv.RowFilter = " permission_code LIKE '%1' AND permission_id = " + this.PagePermissionID;
                return dv.Count > 0;
            }
        }



        public bool ValidateLogin
        {
            get
            {
                if (ViewState["ValidateLogin"] == null) ViewState["ValidateLogin"] = true;

                return (bool)ViewState["ValidateLogin"];
            }
            set { ViewState["ValidateLogin"] = value; }
        }


        public string SelectedCulture
        {
            get
            {
                if (Session["SelectedCulture"] == null) Session["SelectedCulture"] = "en-US";
                return Session["SelectedCulture"].ToString();
            }
            set
            {
                Session["SelectedCulture"] = value;
            }
        }

        protected override void OnPreInit(EventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = new CultureInfo(this.SelectedCulture);
            Thread.CurrentThread.CurrentUICulture = new CultureInfo(this.SelectedCulture);
            base.OnPreInit(e);
            Server.ScriptTimeout = 3600;
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
        }

        protected override void OnLoad(EventArgs e)
        {
            if (!IsPostBack)
            {
                BindLanguage();
            }
            base.OnLoad(e);
            //if (this.UserProfile == null)
            //{
            //    if (this.ValidateLogin)
            //        CheckLogin();
            //}
        }

        protected override void OnPreRender(EventArgs e)
        {

            base.OnPreRender(e);
        }

        protected virtual bool CheckPermission()
        {
            return true;
        }

        protected virtual void BindLanguage()
        { }

        public string UserID
        {
            get
            {
                CheckLogin();
                try
                {
                    if (Session["UserID"] == null) Session["UserID"] = "-1";
                }
                catch { return ""; }
                return Session["UserID"].ToString();
            }
            set { Session["UserID"] = value; }
        }

        public string UserName
        {
            get
            {
                CheckLogin();
                if (Session["UserName"] == null) Session["UserName"] = "";
                return Session["UserName"].ToString();
            }
            set { Session["UserName"] = value; }
        }

        public string UserGroupID
        {
            get
            {
                CheckLogin();
                try
                {
                    if (Session["UserGroupID"] == null) Session["UserGroupID"] = "-1";
                }
                catch { return ""; }
                return Session["UserGroupID"].ToString();
            }
            set { Session["UserGroupID"] = value; }
        }

        public string FullName
        {
            get
            {
                CheckLogin();
                if (Session["FullName"] == null) Session["FullName"] = "";
                return Session["FullName"].ToString();
            }
            set { Session["FullName"] = value; }
        }

        public DataRow UserProfile
        {
            get { return (DataRow)Session["UserProfile"]; }
            set { Session["UserProfile"] = value; }
        }

        public string BranchID
        {
            get
            {
                CheckLogin();
                try
                {
                    if (Session["BranchID"] == null) Session["BranchID"] = "-1";
                }
                catch { return ""; }
                return Session["BranchID"].ToString();
            }
            set { Session["BranchID"] = value; }
        }

        public string BranchName
        {
            get
            {
                CheckLogin();
                if (Session["BranchName"] == null) Session["BranchName"] = "";
                return Session["BranchName"].ToString();
            }
            set { Session["BranchName"] = value; }
        }

        public bool AllBranchPermission
        {
            get
            {
                if (Session["AllBranchPermission"] == null)
                    Session["AllBranchPermission"] = true;
                return (bool)Session["AllBranchPermission"];
            }
            set
            {
                Session["AllBranchPermission"] = value;
            }
        }


        public DataTable Permission
        {
            get
            {
                CheckLogin();
                return (DataTable)Session["Permission"];
            }
            set
            {
                Session["Permission"] = value;
            }
        }

        private void CheckLogin()
        {
            //if (this.UserProfile == null)
            //{
            //    if (Response.Cookies["uid"] != null && Response.Cookies["uid"].Value != null)
            //    {
            //DataSet ds = new UserDAO().GetUserLogin(Response.Cookies["uid"].Value);
            //if (ds.Tables[0].Rows.Count > 0)
            //{
            //    this.UserID = ds.Tables[0].Rows[0]["user_id"].ToString();
            //    this.UserName = ds.Tables[0].Rows[0]["user_name"].ToString();
            //    this.FullName = ds.Tables[0].Rows[0]["full_name"].ToString();
            //    this.UserGroupID = ds.Tables[0].Rows[0]["user_group_id"].ToString();
            //    this.UserProfile = ds.Tables[0].Rows[0];
            //    this.BranchID = ds.Tables[0].Rows[0]["branch_id"].ToString();
            //    this.BranchName = ds.Tables[0].Rows[0]["branch_name"].ToString();
            //    if (ds.Tables[0].Rows[0]["all_branch"].ToString().Trim().Length > 0)
            //        this.AllBranchPermission = (bool)ds.Tables[0].Rows[0]["all_branch"];
            //    else this.AllBranchPermission = false;
            //    this.Permission = ds.Tables[1];
            //    if (ds.Tables[0].Rows[0]["student_count"].ToString().Trim().Length > 0)
            //        this.IsStudent = (int)ds.Tables[0].Rows[0]["student_count"] > 0;
            //}
            //}
            //else
            //{
            //    Response.Redirect("~/Default.aspx", true);
            //}
            //}
        }


        public string GetFileExtension(string fileName)
        {
            return fileName.Split(new char[] { '.' })[fileName.Split(new char[] { '.' }).Length - 1];
        }

        public void alertFail(string msg)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alertFail(" + msg + ");", true);
            //String HtmlStr = "<div class=\"alert alert-danger\"> " +
            //    "<a href=\"#\" class=\"close\" data-dismiss=\"alert\">×</a>" +
            //    "<strong>Error!</strong> " + msg + "" +
            //"</div>  ";
            //Response.Write(HtmlStr);
        }


        #region Helper For Page
        public string SortColumn
        {
            get { if (ViewState["SortColumn"] == null) ViewState["SortColumn"] = ""; return ViewState["SortColumn"].ToString(); }
            set { ViewState["SortColumn"] = value; }
        }

        public string SortOrder
        {
            get { if (ViewState["SortOrder"] == null) ViewState["SortOrder"] = ""; return ViewState["SortOrder"].ToString(); }
            set { ViewState["SortOrder"] = value; }
        }

        public void SetSortGridView(string sortColumn)
        {
            if (this.SortColumn == sortColumn) this.SortOrder = this.SortOrder == "ASC" ? "DESC" : "ASC";
            else this.SortOrder = "ASC";
            this.SortColumn = sortColumn;
        }

        public void GridViewSort(GridView gv)
        {
            GridViewRow headerRow = gv.HeaderRow;
            for (int i = 0; i < gv.Columns.Count; i++)
            {
                if ((this.SortColumn == gv.Columns[i].SortExpression) && (SortColumn != ""))
                {
                    string sortImg = "";
                    if (this.SortOrder == "ASC")
                    {
                        sortImg += "glyphicon glyphicon-sort-by-attributes";
                    }
                    else
                    {
                        sortImg += "glyphicon glyphicon-sort-by-attributes-alt";
                    }
                    headerRow.Cells[i].Controls.Add(new LiteralControl(" <i class='" + sortImg + "'></i>"));
                }
            }
        }

        public string EncryptQueryString(string queryString)
        {
            QueryString qs = new QueryString();
            string[] arrQS = queryString.Split(new string[] { "&" }, StringSplitOptions.RemoveEmptyEntries);
            for (int i = 0; i < arrQS.Length; i++)
            { qs.Add(arrQS[i].Split('=')[0], arrQS[i].Split('=')[1]); }
            QueryString qsEncrypted = Encryption.EncryptQueryString(qs);

            return qsEncrypted.ToString();
        }

        public string DecryptQueryString(string name)
        {
            QueryString qs = QueryString.FromCurrent();
            qs = Encryption.DecryptQueryString(qs);
            return qs[name];
        }

        public void Export(GridView gv)
        {
            for (int i = 0; i < gv.Rows.Count; i++)
            {
                for (int j = 0; j < gv.Columns.Count; j++)
                {
                    if (HttpUtility.HtmlDecode(gv.Columns[j].HeaderText).Trim().Length == 0 || gv.Columns[j].HeaderText.IndexOf("input") > -1)
                        gv.Rows[i].Cells[j].Text = "";
                    else
                        gv.Rows[i].Cells[j].Attributes.Add("class", @"<style>{mso-number-format:\@;}</style>");
                }
            }

            string contentType = "application/vnd.xls";

            HttpContext.Current.Response.Charset = "window-874";
            HttpContext.Current.Response.ClearContent();
            HttpContext.Current.Response.AddHeader("content-disposition", "attachment;filename=export.xls");
            HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Current.Response.ContentType = contentType;

            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter htw = new HtmlTextWriter(sw))
                {
                    Table table = new Table();
                    table.GridLines = gv.GridLines;
                    if (gv.HeaderRow != null)
                    {
                        PrepareGridViewForExport(gv.HeaderRow);
                        table.Rows.Add(gv.HeaderRow);
                    }
                    foreach (GridViewRow row in gv.Rows)
                    {
                        PrepareGridViewForExport(row);
                        table.Rows.Add(row);
                    }
                    if (gv.FooterRow != null)
                    {
                        PrepareGridViewForExport(gv.FooterRow);
                        table.Rows.Add(gv.FooterRow);
                    }
                    table.RenderControl(htw);

                    HttpContext.Current.Response.Write(sw.ToString());
                    HttpContext.Current.Response.End();
                }
            }
        }

        private void PrepareGridViewForExport(Control gv)
        {
            LinkButton lb = new LinkButton();
            Literal l = new Literal();
            string name = String.Empty;

            for (int i = 0; i < gv.Controls.Count; i++)
            {
                if (gv.Controls[i].GetType() == typeof(LinkButton))
                {
                    l.Text = (gv.Controls[i] as LinkButton).Text;
                    gv.Controls.Remove(gv.Controls[i]);
                    gv.Controls.AddAt(i, l);
                }
                else if (gv.Controls[i].GetType() == typeof(DropDownList))
                {
                    l.Text = (gv.Controls[i] as DropDownList).SelectedItem.Text;
                    gv.Controls.Remove(gv.Controls[i]);
                    gv.Controls.AddAt(i, l);
                }
                else if (gv.Controls[i].GetType() == typeof(CheckBox))
                {
                    l.Text = (gv.Controls[i] as CheckBox).Checked ? "True" : "False";
                    gv.Controls.Remove(gv.Controls[i]);
                    gv.Controls.AddAt(i, l);
                }
                else if (gv.Controls[i].GetType() == typeof(HyperLink))
                {
                    l.Text = (gv.Controls[i] as HyperLink).Text;
                    gv.Controls.Remove(gv.Controls[i]);
                    gv.Controls.AddAt(i, l);
                }
                else if (gv.Controls[i].GetType() == typeof(ImageButton))
                {
                    gv.Controls.Remove(gv.Controls[i]);
                }
                else if (gv.Controls[i].GetType() == typeof(HiddenField))
                {
                    gv.Controls.Remove(gv.Controls[i]);
                }
                else if (gv.Controls[i].GetType() == typeof(TextBox))
                {
                    l.Text = (gv.Controls[i] as TextBox).Text;
                    gv.Controls.Remove(gv.Controls[i]);
                    gv.Controls.AddAt(i, l);
                }
                else if (gv.Controls[i].GetType().ToString().Contains("DataControlLinkButton"))
                {
                    l.Text = (gv.Controls[i] as LinkButton).Text;
                    gv.Controls.Remove(gv.Controls[i]);
                    gv.Controls.AddAt(i, l);
                }
                if (gv.Controls[i].HasControls())
                {
                    PrepareGridViewForExport(gv.Controls[i]);
                }
            }
        }
        #endregion
    }
}