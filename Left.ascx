<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Left.ascx.cs" Inherits="Left" %>

                   
                     <asp:DataList ID="DlShangPinType" runat="server"   ForeColor="#333333">
                            <ItemTemplate>
                      
                     <a href='ShangPinTypeList.aspx?id=<%#Eval("id")%>'><span class="red">&nbsp;<%#Eval("Name")%></span></a>
                                    </a> 
                            </ItemTemplate>
                           
                        </asp:DataList>
              