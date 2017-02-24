<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PagingControl.ascx.cs" Inherits="FingerPrintSystem.WebUI.UserControls.PagingControl" %>
<table style="width: 100%;">
    <tr>
        <td style="float: left; padding-top: 8px;">
            <table style="border-spacing: 0; padding: 0px;">
                <tr>
                    <td>
                        <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="True" Width="75" EnableViewState="true"
                            OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged" CssClass="form-control">
                            <asp:ListItem Text="10"></asp:ListItem>
                            <asp:ListItem Text="15"></asp:ListItem>
                            <asp:ListItem Text="20"></asp:ListItem>
                            <asp:ListItem Text="30"></asp:ListItem>
                            <asp:ListItem Text="50"></asp:ListItem>
                            <asp:ListItem Text="100"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;<asp:Label ID="lblPageSize" runat="server" Text="Record(s)/Page"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
        <td style="float: right;">
            <table style="border-spacing: 0; padding: 0px;">
                <tr>
                   <%-- <td class="dataTables_paginate paging_simple_numbers" style="padding-top: 6px;">
                        <ul class="pagination">
                            <asp:Literal ID="lblCustomPage" runat="server"></asp:Literal>
                        </ul>
                    </td>--%>
                     <td class="dataTables_paginate paging_bootstrap pagination">
                        <ul>
                            <asp:Literal ID="lblCustomPage" runat="server"></asp:Literal>
                        </ul>
                    </td>

                    <td style="padding-top: 8px; vertical-align: top;">
                        <asp:DropDownList ID="ddlCurrentPage" runat="server" AutoPostBack="True" Width="85"
                            OnSelectedIndexChanged="ddlCurrentPage_SelectedIndexChanged" CssClass="form-control">
                            <asp:ListItem Text="1"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="padding-top: 14px; vertical-align: top;">&nbsp;<asp:Label ID="lblOf" runat="server" Text="/"></asp:Label>&nbsp;
                    </td>
                    <td style="padding-top: 14px; vertical-align: top;">
                        <asp:Label ID="lblPageCount" runat="server" Text="1"></asp:Label>
                    </td>
                    <td style="padding-top: 14px; vertical-align: top;">&nbsp;
                        <asp:Label ID="lblRecord" runat="server" Text="-"></asp:Label>&nbsp;
                        <asp:Label ID="lblR" runat="server" Text="Record(s)"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>

    </tr>
</table>
