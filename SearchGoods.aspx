<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchGoods.aspx.cs" Inherits="SearchGoods" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td align="center" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 661px">
                类别：<asp:DropDownList ID="DropDownList1" runat="server" Width="81px">
    </asp:DropDownList>季节：<asp:DropDownList ID="DropDownList2" runat="server" Width="103px">
    </asp:DropDownList>品牌：<asp:DropDownList ID="DropDownList3" runat="server" Width="104px">
    </asp:DropDownList>名称关键字：<asp:TextBox ID="TxtName" runat="server" Style="border-right: #ffcc00 1px solid;
        border-top: #ffcc00 1px solid; border-left: #ffcc00 1px solid; border-bottom: #ffcc00 1px solid"
        Width="96px"></asp:TextBox>
    <asp:Button ID="btnRegister" runat="server" CausesValidation="False" Font-Size="12pt"
        OnClick="btnRegister_Click" Text="查询" /></td>
        </tr>
        <tr>
            <td align="left" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 661px">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"
                    Width="100%">
                    <ItemTemplate>
                        <div class="product1" style="width: 153px">
                            <div class="product">
                                <table cellpadding="0" cellspacing="0" height="100%" width="100%">
                                    <tbody>
                                        <tr align="center" valign="middle">
                                            <td style="height: 122px">
                                                <a class="highlightit" href='ShowShangPin.aspx?id=<%#Eval("ShangPinID") %>'>
                                                    <img alt="" border="0" src='files/<%#Eval("ShangPinPhoto")%>' style="width: 116px;
                                                        height: 100px" /></a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="ptxt">
                                <a href='ShowShangPin.aspx?id=<%#Eval("ShangPinID") %>'>
                                    <%#Eval("ShangPinName").ToString().Length > 25 ? CutChar(Eval("ShangPinName").ToString(), 32) + "..." : Eval("ShangPinName")%>
                                </a>
                            </div>
                            ¥
                            <%#Eval("ShangPinPrice")%>
                            &nbsp; &nbsp; 销量：<%#Eval("ZongXiaoLiang")%>
                        </div>
                    </ItemTemplate>
                </asp:DataList></td>
        </tr>
        <tr style="color: #333333">
            <td align="center" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 661px;
                height: 38px">
                共【<asp:Label ID="lblSumPage" runat="server"></asp:Label>】页 &nbsp; &nbsp; &nbsp;
                当前第【<asp:Label ID="lblCurrentPage" runat="server"></asp:Label>】页&nbsp;
                <asp:HyperLink ID="hyfirst" runat="server">首页</asp:HyperLink>
                &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="lnkPrev" runat="server">上一页</asp:HyperLink>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:HyperLink ID="lnkNext" runat="server">下一页</asp:HyperLink>
                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:HyperLink ID="hylastpage" runat="server">尾页</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

