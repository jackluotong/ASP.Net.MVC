<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyOrder.aspx.cs" Inherits="MyOrder" Title="Untitled Page" %>

<%@ Register Src="Home.ascx" TagName="Home" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tbody>
            <tr>
                <td align="left" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="font-size: 9pt;
                    width: 661px; height: 31px">
                    <uc1:Home ID="Home1" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="left" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 661px; font-size:9pt;">
                    <asp:GridView ID="gvOrderInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="4" Font-Size="9pt" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gvOrderInfo_PageIndexChanging"
                        PageSize="8" Width="681px">
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <Columns>
                            <asp:TemplateField HeaderText="订单编号">
                                <ItemTemplate>
                                    <asp:Label ID="OrderID" runat="server" Text='<%# Bind("OrderID") %>' Width="87px"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="90px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="服装名称">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ShangPinName") %>' Width="102px"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="90px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="服装价格">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ShangPinPrice") %>' Width="57px"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="90px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="数量">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("shuliang") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("shuliang") %>' Width="87px"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="90px" />
                            </asp:TemplateField>
                                
                            <asp:TemplateField HeaderText="订单状态">
                                <ItemTemplate>
                                    <asp:Label ID="OrderStite" runat="server" Text='<%# Bind("OrderStite") %>' Width="67px"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="90px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="订单时间">
                                <ItemTemplate>
                                    <asp:Label ID="Ordertime" runat="server" Text='<%# Bind("Ordertime","{0:d}") %>'
                                        Width="87px"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle Width="90px" />
                            </asp:TemplateField>
                            <asp:HyperLinkField DataNavigateUrlFields="OrderID" DataNavigateUrlFormatString="OrderChk.aspx?OrderID={0}"
                                HeaderText="订单操作" Text="订单操作">
                                <ControlStyle Font-Underline="False" ForeColor="Black" />
                            </asp:HyperLinkField>
                              
                        </Columns>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td align="left" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="font-size: 9pt;
                    width: 661px; height: 14px">
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="合计金额："></asp:Label>
                    <asp:Label ID="labMoney" runat="server"></asp:Label>
                    &nbsp; &nbsp;
                </td>
            </tr>
        </tbody>
    </table>
    &nbsp;
</asp:Content>

