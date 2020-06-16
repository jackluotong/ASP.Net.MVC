<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SuccShop.aspx.cs" Inherits="SuccShop" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" style="width: 689px; height: 315px">
        <tr>
            <td align="center" colspan="3" style="width: 916px; color: #ff9966; height: 5px">
                收货人信息</td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="width: 916px; color: #ff9966; height: 5px">
                收 件 人：<asp:Label ID="Label2" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="width: 916px; color: #ff9966; height: 5px">
                收货地址：<asp:Label ID="Label3" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="width: 916px; color: #ff9966; height: 5px">
                联系电话：<asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="width: 916px; color: #ff9966; height: 5px">
                固定电话：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="请填写固定电话"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="width: 916px; color: #ff9966; height: 5px">
                付款方式：<asp:DropDownList ID="DropDownList2" runat="server" Width="144px">
                    <asp:ListItem>货到付款</asp:ListItem>
                    <asp:ListItem>其他</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="width: 916px; color: #ff9966; height: 5px">
                购物清单</td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="width: 916px; color: #ff9966; height: 49px">
                <span style="font-size: 12pt; color: #808080">
                    <asp:GridView ID="gvOrderInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="4" Font-Size="9pt" ForeColor="#333333" GridLines="None" PageSize="8"
                        Width="686px">
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <Columns>
                            <asp:TemplateField HeaderText="名称">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ShangPinName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="类别">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ShangPinTypeName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="价格">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ShangPinPrice") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                                
                            <asp:TemplateField HeaderText="数量">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("shuliang") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("shuliang") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                    <asp:Label ID="Label5" runat="server" Text="合计金额："></asp:Label><asp:Label ID="labMoney"
                        runat="server"></asp:Label>
                   </span></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; width: 916px; height: 24px;">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认订单" />
            </td>
        </tr>
    </table>
</asp:Content>

