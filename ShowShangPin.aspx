<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowShangPin.aspx.cs" Inherits="ShowShangPin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" style="font-size: 9pt; width: 100%;
        height: auto">
        <tr>
            <td bgcolor="#f7f6f3" rowspan="7" style="width: 196px; text-align: center">
                <asp:Image ID="iGPhoto" runat="server" Height="245px" Width="251px" /></td>
            <td bgcolor="#f7f6f3" colspan="1" style="width: 219px; height: 30px; text-align: left">
                服装名称：</td>
            <td align="left" bgcolor="#f7f6f3" colspan="1" style="width: 812px; height: 30px">
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td bgcolor="#f7f6f3" colspan="1" style="width: 219px; height: 30px; text-align: left">
                服装类别：</td>
            <td align="left" bgcolor="#f7f6f3" colspan="1" style="width: 812px; height: 30px">
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                <input id="Hidden1" runat="server" type="hidden" /></td>
        </tr>
        <tr>
            <td bgcolor="#f7f6f3" colspan="1" style="width: 219px; height: 30px; text-align: left">
                服装价格：</td>
            <td align="left" bgcolor="#f7f6f3" colspan="1" style="width: 812px; height: 30px">
                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                <input id="Hidden2" runat="server" type="hidden" /></td>
        </tr>
        <tr>
            <td bgcolor="#f7f6f3" colspan="1" style="width: 219px; height: 30px; text-align: left">
                库存数量：</td>
            <td align="left" bgcolor="#f7f6f3" colspan="1" style="width: 812px; height: 30px">
                <asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td bgcolor="#f7f6f3" colspan="1" style="width: 219px; height: 30px; text-align: left">
                点击次数：</td>
            <td align="left" bgcolor="#f7f6f3" colspan="1" style="width: 812px; height: 30px">
                <asp:Label ID="Label6" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td bgcolor="#f7f6f3" colspan="1" style="width: 219px; height: 30px; text-align: left">
                服装规格：</td>
            <td align="left" bgcolor="#f7f6f3" colspan="1" style="width: 812px; height: 30px">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td bgcolor="#f7f6f3" colspan="1" style="width: 219px; height: 30px; text-align: left">
                服装颜色：</td>
            <td align="left" bgcolor="#f7f6f3" colspan="1" style="width: 812px; height: 30px">
                <asp:Label ID="Label7" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td bgcolor="#f7f6f3" colspan="3" style="height: 18px">
                &nbsp;服装介绍：</td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="vertical-align: top; text-indent: 8pt; height: auto;
                text-align: left">
                <div id="DIV1" runat="server" style="width: 678px; height: auto">
                </div>
            </td>
        </tr>
        <tr>
            <td bgcolor="#f7f6f3" colspan="3" style="height: 24px; text-align: right">
                购买数量：<asp:TextBox ID="TextBox1" runat="server" Width="101px">1</asp:TextBox>
                <asp:Button ID="btnShop" runat="server" Height="23px" OnClick="btnShop_Click" Text="加入购物车"
                    Width="96px" />
                &nbsp;</td>
        </tr>
          <tr>
            <td bgcolor="silver" colspan="3" style="height: 24px;" align="center">
                评论信息
            </td>
        </tr>
    <tr>
        <td align="left" bgcolor="#f7f6f3" colspan="3" style="height: 24px">
            <asp:DataList ID="DataList2" runat="server" Width="100%">
                <ItemTemplate>
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 100%">
                                评论人：<%#Eval("UserName")%>
                                时间：<%#Eval("AddTime", "{0:d}")%>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100%">
                                内容：<%#Eval("Titles")%>
                            </td>
                        </tr>
                    </table>
                    <hr />
                </ItemTemplate>
            </asp:DataList></td>
    </tr>
    <tr>
        <td align="center" bgcolor="#f7f6f3" colspan="3" style="height: 24px">
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
    <tr>
        <td align="center" bgcolor="#f7f6f3" colspan="3" style="height: 24px">
            <asp:TextBox ID="TextBox2" runat="server" Height="69px" TextMode="MultiLine" Width="544px"></asp:TextBox><br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="评论" /></td>
    </tr>
    </table>
</asp:Content>

