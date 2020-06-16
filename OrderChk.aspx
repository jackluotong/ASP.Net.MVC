<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OrderChk.aspx.cs" Inherits="OrderChk" Title="Untitled Page" %>

<%@ Register Src="Home.ascx" TagName="Home" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center" valign="top">
                <uc1:Home ID="Home1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="center" valign="top">
                物流信息</td>
        </tr>
        <tr>
            <td align="center" style="height: 82px" valign="top">
                <asp:TextBox ID="TextBox1" runat="server" Height="203px" ReadOnly="True" TextMode="MultiLine"
                    Width="473px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" valign="top">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认收货" />
                </td>
        </tr>
    </table>
</asp:Content>

