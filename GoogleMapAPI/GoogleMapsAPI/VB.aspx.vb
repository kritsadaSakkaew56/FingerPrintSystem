Imports System.Net
Imports System.Data
Imports System.xml
Partial Class _Default
    Inherits System.Web.UI.Page
    Protected lat As String, lon As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim ipaddress As String
        ipaddress = Request.ServerVariables("HTTP_X_FORWARDED_FOR")
        If ipaddress = "" OrElse ipaddress Is Nothing Then
            ipaddress = Request.ServerVariables("REMOTE_ADDR")
        End If
        Dim dt As DataTable = GetLocation(ipaddress)
        If dt IsNot Nothing Then
            If dt.Rows.Count > 0 Then
                lat = dt.Rows(0)("Latitude").ToString()
                lon = dt.Rows(0)("Longitude").ToString()
            End If
        End If
    End Sub
    Private Function GetLocation(ByVal ipaddress As String) As DataTable
        'Create a WebRequest 
        Dim rssReq As WebRequest = WebRequest. _
           Create("http://freegeoip.appspot.com/xml/" & ipaddress)

        'Create a Proxy 
        Dim px As New WebProxy("http://freegeoip.appspot.com/xml/" _
        & ipaddress, True)

        'Assign the proxy to the WebRequest 
        rssReq.Proxy = px

        'Set the timeout in Seconds for the WebRequest 
        rssReq.Timeout = 2000
        Try
            'Get the WebResponse 
            Dim rep As WebResponse = rssReq.GetResponse()

            'Read the Response in a XMLTextReader 
            Dim xtr As New XmlTextReader(rep.GetResponseStream())

            'Create a new DataSet 
            Dim ds As New DataSet()

            'Read the Response into the DataSet 
            ds.ReadXml(xtr)
            Return ds.Tables(0)
        Catch
            Return Nothing
        End Try
    End Function

End Class
