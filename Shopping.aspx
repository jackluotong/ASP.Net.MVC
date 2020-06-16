<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shopping.aspx.cs" Inherits="Shopping" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="1" cellpadding="0" cellspacing="0" style="width: 724px; height: 361px">
        <tr>
            <td align="center" style="vertical-align: bottom; width: 883px; height: 50px; text-align: center">
                &nbsp;<asp:LinkButton ID="lbtnCheck" runat="server" Font-Underline="False" ForeColor="Black"
                    OnClick="lbtnCheck_Click">生成订单</asp:LinkButton>
                <asp:LinkButton ID="lbtnClear" runat="server" Font-Underline="False" ForeColor="Black"
                    OnClick="lbtnClear_Click">清空购物车</asp:LinkButton>
                <br />
                订单号：<asp:Label ID="Label5" runat="server" Width="158px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3" style="vertical-align: top; height: 191px; text-align: center">
                <asp:GridView ID="gvOrderInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CellPadding="4" Font-Size="9pt" ForeColor="#333333" GridLines="None" OnPageIndexChanging="gvOrderInfo_PageIndexChanging"
                    OnRowCancelingEdit="gvOrderInfo_RowCancelingEdit" OnRowDataBound="gvOrderInfo_RowDataBound"
                    OnRowDeleting="gvOrderInfo_RowDeleting" OnRowEditing="gvOrderInfo_RowEditing"
                    OnRowUpdating="gvOrderInfo_RowUpdating" PageSize="8" Width="100%">
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
                        <asp:CommandField HeaderText="删除" ShowDeleteButton="True">
                            <ControlStyle Font-Underline="False" ForeColor="Black" />
                            <ItemStyle Font-Underline="False" />
                        </asp:CommandField>
                        <asp:CommandField EditText="修改" HeaderText="修改数量" ShowEditButton="True" />
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
            <td align="center" colspan="3" style="height: 20px; background-color: #f0f5d5">
                &nbsp;<asp:Label ID="Label1" runat="server" Text="合计金额："></asp:Label>
                <asp:Label ID="labMoney" runat="server"></asp:Label>
                &nbsp; &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

