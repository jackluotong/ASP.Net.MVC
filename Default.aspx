<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<DIV class="maincolumn">
<DIV class="maincolumntitle" style="background-image: url(images/menu.jpg); background-repeat: repeat-x">
<DIV class="maincolumntitle01" style="color: #ffffff">最新服装</DIV>
<DIV class="maincolumntitle02"><A href="NewShangPinList.aspx"><SPAN 
class="more1"></SPAN></A></DIV></DIV>
<DIV class="mcontent">	
<DIV>




<asp:DataList id="HotGoods" Width="79%" runat="server" Height="221px" RepeatColumns="4"><ItemTemplate>
                        
                                        
                                        
                                        <DIV class="product1" style="width: 153px">
<DIV class="product">
<TABLE cellSpacing="0" cellPadding="0" width="100%" height="100%">
  <TBODY>
  <TR vAlign="middle" align="center">
    <TD style="height: 122px"><a class="highlightit" href='ShowShangPin.aspx?id=<%#Eval("ShangPinID") %>'>
                                        <img alt="" border="0" src='files/<%#Eval("ShangPinPhoto")%>' style="width: 116px; height: 93px" /></a></TD></TR></TBODY></TABLE>
    <br />
</DIV>
<DIV class="ptxt">  <a href='ShowShangPin.aspx?id=<%#Eval("ShangPinID") %>'>
                                      
                                        
                                        <%#Eval("ShangPinName").ToString().Length > 25 ? CutChar(Eval("ShangPinName").ToString(), 32) + "..." : Eval("ShangPinName")%>
                                    </a></DIV> ¥  <%#Eval("ShangPinPrice")%>  &nbsp; &nbsp; 销量：<%#Eval("ZongXiaoLiang")%></DIV>
                                          
</ItemTemplate>
</asp:DataList>
	</DIV>	
<DIV style="clear: both;"></DIV></DIV></DIV>
<DIV class="maincolumn">
<DIV class="maincolumntitle" style="background-image: url(images/menu.jpg); background-repeat: repeat-x">
<DIV class="maincolumntitle01" style="color: #ffffff">热门服装</DIV>
<DIV class="maincolumntitle02"><A href="HotShangPinList.aspx"><SPAN 
class="more1"></SPAN></A></DIV></DIV>
<DIV class="mcontent">	
<DIV>


<asp:DataList id="DataList1" Width="100%" runat="server" Height="234px" RepeatColumns="4">
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
                </asp:DataList>



	</DIV>	
<DIV style="clear: both;"></DIV></DIV></DIV>

</asp:Content>

