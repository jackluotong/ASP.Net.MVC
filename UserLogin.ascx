<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserLogin.ascx.cs" Inherits="UserLogin" %>
<table width="100%">
    <tr>
        <td colspan="3" style="text-align: center;">
            <table id="Login2" runat="server" align="center" border="0" cellpadding="1" cellspacing="0"
                style="width: 427px">
                <tr>
                    <td nowrap="nowrap">
                        
                           帐号: 
                        
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TxtUserName" runat="server" ValidationGroup="3" Width="100px"></asp:TextBox></td>
                    <td align="left">
                        密码:</td>
                    <td align="left">
                        <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" ValidationGroup="3"
                            Width="101px"></asp:TextBox></td>
                    <td align="left">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">会员登录</asp:LinkButton></td>
                </tr>
            </table>
            <table id="Login1" runat="server" align="center" border="0" cellpadding="1" cellspacing="0"
                style="width: 191px">
                <tr>
                    <td nowrap="nowrap" style="width: 72px">
                    
                           欢迎: 
                        
                    </td>
                    <td align="left" style="width: 166px">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    <td align="left" style="width: 166px">
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClick="LinkButton2_Click1"
                            Width="60px">注销</asp:LinkButton></td>
                    <td align="left" style="width: 166px">
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" OnClick="LinkButton3_Click1"
                            Width="84px">用户中心</asp:LinkButton></td>
                </tr>
            </table>
        </td>
    </tr>
</table>