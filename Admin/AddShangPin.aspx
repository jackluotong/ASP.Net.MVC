<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddShangPin.aspx.cs" EnableEventValidation="false" ValidateRequest="false"  Inherits="AdminManger_AddShangPin" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>服装购物网站</title>
       <link href="css/public.css" rel="stylesheet" type="text/css"> 
    <link rel="stylesheet" href="../kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="../kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="../kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="../kindeditor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="../kindeditor/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('#content1', {
				cssPath : '../kindeditor/plugins/code/prettify.css',
				uploadJson : 'upload_json.ashx',
				fileManagerJson : 'file_manager_json.ashx',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
</head>
<body >
    <form id="form1" runat="server">
    <div>
    <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#e3ebfe" align="center">
<tr>
 <td height="26" >
  <table width="98%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td align="center" style="height: 22px">
      添加服装信息</td>
 </tr>
</table>
</td>
</tr>
</table>
    </div>
        <table align="center" bgcolor="#e3ebfe" border="0" cellpadding="2" cellspacing="1"
            style="margin-top: 8px" width="98%">
            <tr bgcolor="#e7e7e7">
                <td colspan="10" height="24">
                    服装名称：<asp:TextBox ID="title" runat="server" Style="border-right: #ffcc00 1px solid;
                        border-top: #ffcc00 1px solid; border-left: #ffcc00 1px solid; border-bottom: #ffcc00 1px solid"
                        Width="341px"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    服装类别：<asp:DropDownList ID="DropDownList1" runat="server" Width="213px">
                    </asp:DropDownList></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" height="24">
                    服装品牌：<asp:DropDownList ID="DropDownList2" runat="server" Width="213px">
                    </asp:DropDownList></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" height="24">
                    服装季节：<asp:DropDownList ID="DropDownList3" runat="server" Width="213px">
                    </asp:DropDownList></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    销售单价：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    服装规格：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    服装颜色：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    库存数量：<asp:TextBox ID="TextBox3" runat="server" Width="61px"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    预警数量：<asp:TextBox ID="TextBox5" runat="server" Width="61px"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" height="24">
                    <asp:Image ID="Image1" runat="server" Width="126px" /><br />
                    <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                        id="file1" runat="server" class="inputBox" style="width: 141px" type="file" />&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="上传图片" />
                    <asp:Label ID="Label1" runat="server" Visible="False" Width="60px"></asp:Label>
                    &nbsp; &nbsp;</td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="center" colspan="10" height="24">
                    服装描述</td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="left" colspan="10" height="24">
                    <textarea id="content1" runat="server" cols="100" rows="8" style="visibility: hidden;
                        width: 100%; height: 200px"></textarea>&nbsp;</td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="center" colspan="10" height="24">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
