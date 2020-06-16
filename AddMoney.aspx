<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddMoney.aspx.cs" Inherits="AddMoney" Title="Untitled Page" %>

<%@ Register Src="Home.ascx" TagName="Home" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center" height="40" style="border-bottom: #339933 double; text-align: center">
                <uc1:Home ID="Home1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="center" height="40" style="border-bottom: #339933 double; text-align: center">
                现有金额：<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>充值金额：<asp:TextBox
                    ID="txtLoginName" runat="server" Font-Size="12pt" Width="123px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLoginName" runat="server" ControlToValidate="txtLoginName"
                    Font-Size="12pt" Height="1px" Width="27px">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="center" valign="top">
                <asp:Button ID="btnRegister" runat="server" Font-Size="12pt" OnClick="btnRegister_Click"
                    Text="充值" /></td>
        </tr>
    </table>
</asp:Content>

