<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewShangPinList.aspx.cs" Inherits="NewShangPinList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td align="left" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 661px">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
                    Width="103%">
                    <ItemTemplate>
                        
                                        
                                        
                                        <DIV class="product1" style="width: 153px">
<DIV class="product">
<TABLE cellSpacing="0" cellPadding="0" width="100%" height="100%">
  <TBODY>
  <TR vAlign="middle" align="center">
    <TD style="height: 122px"><a class="highlightit" href='ShowShangPin.aspx?id=<%#Eval("ShangPinID") %>'>
                                        <img alt="" border="0" src='files/<%#Eval("ShangPinPhoto")%>' style="width: 116px; height: 100px" /></a></TD></TR></TBODY></TABLE></DIV>
<DIV class="ptxt">  <a href='ShowShangPin.aspx?id=<%#Eval("ShangPinID") %>'><%#Eval("ShangPinName").ToString().Length > 25 ? CutChar(Eval("ShangPinName").ToString(), 32) + "..." : Eval("ShangPinName")%></a></DIV>
                                    
                                    ¥  <%#Eval("ShangPinPrice")%>  &nbsp; &nbsp; 销量：<%#Eval("ZongXiaoLiang")%>
                                    </DIV>
                             
                            
                            
</ItemTemplate>
                </asp:DataList></td>
        </tr>
        <tr style="color: #000000">
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

