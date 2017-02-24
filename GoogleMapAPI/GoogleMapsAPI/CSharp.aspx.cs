using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net;

using System.Xml;

public partial class GoogleMaps : System.Web.UI.Page
{
    protected string lat, lon;
    protected void Page_Load(object sender, EventArgs e)
    {
        string ipaddress;
        ipaddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        if (ipaddress == "" || ipaddress == null)
            ipaddress = Request.ServerVariables["REMOTE_ADDR"];
        DataTable dt = GetLocation(ipaddress);
        if (dt != null)
        {
            if (dt.Rows.Count > 0)
            {
                lat = dt.Rows[0]["Latitude"].ToString();
                lon = dt.Rows[0]["Longitude"].ToString();  
            }
        }
    }
    private DataTable GetLocation(string ipaddress)
    {
        //Create a WebRequest
        WebRequest rssReq = WebRequest.Create("http://freegeoip.appspot.com/xml/" + ipaddress);

        //Create a Proxy
        WebProxy px = new WebProxy("http://freegeoip.appspot.com/xml/" + ipaddress, true);

        //Assign the proxy to the WebRequest
        rssReq.Proxy = px;

        //Set the timeout in Seconds for the WebRequest
        rssReq.Timeout = 2000;
        try
        {
            //Get the WebResponse 
            WebResponse rep = rssReq.GetResponse();

            //Read the Response in a XMLTextReader
            XmlTextReader xtr = new XmlTextReader(rep.GetResponseStream());

            //Create a new DataSet
            DataSet ds = new DataSet();

            //Read the Response into the DataSet
            ds.ReadXml(xtr);
            return ds.Tables[0];
        }
        catch
        {
            return null;
        }
    }
}
