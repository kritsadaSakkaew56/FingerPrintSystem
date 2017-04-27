<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DatePickerControl.ascx.cs" Inherits="FingerPrintSystem.WebUI.UserControls.DatePickerControl" %>
<div data-date-format="dd-mm-yyyy" class="input-group date form_datetime-component dpYears" id="pnlDatepicker" runat="server">
    <table>
        <tr>
            <td>
                <label class="control-label">เลือกวันที่ :</label>

            </td>
            <td style="width: 100px">

                <asp:TextBox CssClass="form-control input-sm date-picker" ID="txtDate" runat="server" data-date-format="dd-mm-yyyy" Width="120"></asp:TextBox>
            </td>
            <td>
                <span class="input-group-addon" style="padding: 6px 12px !important; font-size: 14px !important;">
                    <i class="fa fa-calendar bigger-110"></i>
                </span>
            </td>
            <td>
                <asp:RequiredFieldValidator CssClass="validator" Display="Dynamic" ID="rfvDate" runat="server" SetFocusOnError="true"
                    ControlToValidate="txtDate" Visible="false" ErrorMessage="This field is required."></asp:RequiredFieldValidator></td>
        </tr>
    </table>

</div>
