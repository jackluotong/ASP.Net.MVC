<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserStReg.aspx.cs" Inherits="UserStReg" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<script type="text/javascript">
/*********************************************************
 * 	使用方法
 * 		控件调用onclick="fPopCalendar(event,this,this)"
 * 	如下，给控件设置为readonly
 * 	<input type="text" style="border:1px solid #cccccc;" 
 * 		size="15" onclick="fPopCalendar(event,this,this)" 
 * 		onfocus="this.select()" readonly="readonly" />
 * 	
 * 	如果页面乱码，把下面包含汉字的定义项放到页面中即可
********************************************************/
var gMonths=new Array("一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月");
var WeekDay=new Array("日","一","二","三","四","五","六");
var strToday="今天";
var strYear="年";
var strMonth="月";
var strDay="日";
var splitChar="-";
var startYear=1000;
var endYear=2050;
var dayTdHeight=12;
var dayTdTextSize=12;
var gcNotCurMonth="#E0E0E0";
var gcRestDay="#FF0000";
var gcWorkDay="#444444";
var gcMouseOver="#79D0FF";
var gcMouseOut="#F4F4F4";
var gcToday="#444444";
var gcTodayMouseOver="#6699FF";
var gcTodayMouseOut="#79D0FF";
var gdCtrl=new Object();
var goSelectTag=new Array();
var gdCurDate=new Date();
var giYear=gdCurDate.getFullYear();
var giMonth=gdCurDate.getMonth()+1;
var giDay=gdCurDate.getDate();
function $(){var elements=new Array();for(var i=0;i<arguments.length;i++) {var element=arguments[i];if(typeof(arguments[i])=='string'){element=document.getElementById(arguments[i]);}if(arguments.length==1){return element;}elements.Push(element);}return elements;}
Array.prototype.Push=function(){var startLength=this.length;for(var i=0;i<arguments.length;i++){this[startLength+i]=arguments[i];}return this.length;}
String.prototype.HexToDec=function(){return parseInt(this,16);}
String.prototype.cleanBlank=function(){return this.isEmpty()?"":this.replace(/\s/g,"");}
function checkColor(){var color_tmp=(arguments[0]+"").replace(/\s/g,"").toUpperCase();var model_tmp1=arguments[1].toUpperCase();var model_tmp2="rgb("+arguments[1].substring(1,3).HexToDec()+","+arguments[1].substring(1,3).HexToDec()+","+arguments[1].substring(5).HexToDec()+")";model_tmp2=model_tmp2.toUpperCase();if(color_tmp==model_tmp1 ||color_tmp==model_tmp2){return true;}return false;}
function $V(){return $(arguments[0]).value;}
function fPopCalendar(evt,popCtrl,dateCtrl){evt.cancelBubble=true;gdCtrl=dateCtrl;fSetYearMon(giYear,giMonth);var point=fGetXY(popCtrl);with($("calendardiv").style){left=point.x+"px";top=(point.y+popCtrl.offsetHeight+1)+"px";visibility='visible';zindex='99';position='absolute';}$("calendardiv").focus();}
function fSetDate(iYear,iMonth,iDay){var iMonthNew=new String(iMonth);var iDayNew=new String(iDay);if(iMonthNew.length<2){iMonthNew="0"+iMonthNew;}if(iDayNew.length<2){iDayNew="0"+iDayNew;}gdCtrl.value=iYear+splitChar+iMonthNew+splitChar+iDayNew;fHideCalendar();}
function fHideCalendar(){$("calendardiv").style.visibility="hidden";for(var i=0;i<goSelectTag.length;i++){goSelectTag[i].style.visibility="visible";}goSelectTag.length=0;}
function fSetSelected(){var iOffset=0;var iYear=parseInt($("tbSelYear").value);var iMonth=parseInt($("tbSelMonth").value);var aCell=$("cellText"+arguments[0]);aCell.bgColor=gcMouseOut;with(aCell){var iDay=parseInt(innerHTML);if(checkColor(style.color,gcNotCurMonth)){iOffset=(innerHTML>10)?-1:1;}iMonth+=iOffset;if(iMonth<1){iYear--;iMonth=12;}else if(iMonth>12){iYear++;iMonth=1;}}fSetDate(iYear,iMonth,iDay);}
function Point(iX,iY){this.x=iX;this.y=iY;}
function fBuildCal(iYear,iMonth){var aMonth=new Array();for(var i=1;i<7;i++){aMonth[i]=new Array(i);}var dCalDate=new Date(iYear,iMonth-1,1);var iDayOfFirst=dCalDate.getDay();var iDaysInMonth=new Date(iYear,iMonth,0).getDate();var iOffsetLast=new Date(iYear,iMonth-1,0).getDate()-iDayOfFirst+1;var iDate=1;var iNext=1;for(var d=0;d<7;d++){aMonth[1][d]=(d<iDayOfFirst)?(iOffsetLast+d)*(-1):iDate++;}for(var w=2;w<7;w++){for(var d=0;d<7;d++){aMonth[w][d]=(iDate<=iDaysInMonth)?iDate++:(iNext++)*(-1);}}return aMonth;}
function fDrawCal(iYear,iMonth,iCellHeight,iDateTextSize){var colorTD=" bgcolor='"+gcMouseOut+"' bordercolor='"+gcMouseOut+"'";var styleTD=" valign='middle' align='center' style='height:"+iCellHeight+"px;font-weight:bolder;font-size:"+iDateTextSize+"px;";var dateCal="";dateCal+="<tr>";for(var i=0;i<7;i++){dateCal+="<td"+colorTD+styleTD+"color:#990099'>"+WeekDay[i]+"</td>";}dateCal+="</tr>";for(var w=1;w<7;w++){dateCal+="<tr>";for(var d=0;d<7;d++){var tmpid=w+""+d;dateCal+="<td"+styleTD+"cursor:pointer;' onclick='fSetSelected("+tmpid+")'>";dateCal+="<span id='cellText"+tmpid+"'></span>";dateCal+="</td>";}dateCal+="</tr>";}return dateCal;}
function fUpdateCal(iYear,iMonth){var myMonth=fBuildCal(iYear,iMonth);var i=0;for(var w=1;w<7;w++){for(var d=0;d<7;d++){with($("cellText"+w+""+d)){parentNode.bgColor=gcMouseOut;parentNode.borderColor=gcMouseOut;parentNode.onmouseover=function(){this.bgColor=gcMouseOver;};parentNode.onmouseout=function(){this.bgColor=gcMouseOut;};if(myMonth[w][d]<0){style.color=gcNotCurMonth;innerHTML=Math.abs(myMonth[w][d]);}else{style.color=((d==0)||(d==6))?gcRestDay:gcWorkDay;innerHTML=myMonth[w][d];if(iYear==giYear && iMonth==giMonth && myMonth[w][d]==giDay){style.color=gcToday;parentNode.bgColor=gcTodayMouseOut;parentNode.onmouseover=function(){this.bgColor=gcTodayMouseOver;};parentNode.onmouseout=function(){this.bgColor=gcTodayMouseOut;};}}}}}}
function fSetYearMon(iYear,iMon){$("tbSelMonth").options[iMon-1].selected=true;for(var i=0;i<$("tbSelYear").length;i++){if($("tbSelYear").options[i].value==iYear){$("tbSelYear").options[i].selected=true;}}fUpdateCal(iYear,iMon);}
function fPrevMonth(){var iMon=$("tbSelMonth").value;var iYear=$("tbSelYear").value;if(--iMon<1){iMon=12;iYear--;}fSetYearMon(iYear,iMon);}
function fNextMonth(){var iMon=$("tbSelMonth").value;var iYear=$("tbSelYear").value;if(++iMon>12){iMon=1;iYear++;}fSetYearMon(iYear,iMon);}
function fGetXY(aTag){var oTmp=aTag;var pt=new Point(0,0);do{pt.x+=oTmp.offsetLeft;pt.y+=oTmp.offsetTop;oTmp=oTmp.offsetParent;}while(oTmp.tagName.toUpperCase()!="BODY");return pt;}
function getDateDiv(){var noSelectForIE="";var noSelectForFireFox="";if(document.all){noSelectForIE="onselectstart='return false;'";}else{noSelectForFireFox="-moz-user-select:none;";}var dateDiv="";dateDiv+="<div id='calendardiv' onclick='event.cancelBubble=true' "+noSelectForIE+" style='"+noSelectForFireFox+"position:absolute;z-index:99;visibility:hidden;border:1px solid #999999;'>";dateDiv+="<table border='0' bgcolor='#E0E0E0' cellpadding='1' cellspacing='1' >";dateDiv+="<tr>";dateDiv+="<td><input type='button' id='PrevMonth' value='&lt;' style='height:20px;width:20px;font-weight:bolder;' onclick='fPrevMonth()'>";dateDiv+="</td><td><select id='tbSelYear' style='border:1px solid;' onchange='fUpdateCal($V(\"tbSelYear\"),$V(\"tbSelMonth\"))'>";for(var i=startYear;i<endYear;i++){dateDiv+="<option value='"+i+"'>"+i+strYear+"</option>";}dateDiv+="</select></td><td>";dateDiv+="<select id='tbSelMonth' style='border:1px solid;' onchange='fUpdateCal($V(\"tbSelYear\"),$V(\"tbSelMonth\"))'>";for(var i=0;i<12;i++){dateDiv+="<option value='"+(i+1)+"'>"+gMonths[i]+"</option>";}dateDiv+="</select></td><td>";dateDiv+="<input type='button' id='NextMonth' value='&gt;' style='height:20px;width:20px;font-weight:bolder;' onclick='fNextMonth()'>";dateDiv+="</td>";dateDiv+="</tr><tr>";dateDiv+="<td align='center' colspan='4'>";dateDiv+="<div style='background-color:#cccccc'><table width='100%' border='0' cellpadding='3' cellspacing='1'>";dateDiv+=fDrawCal(giYear,giMonth,dayTdHeight,dayTdTextSize);dateDiv+="</table></div>";dateDiv+="</td>";dateDiv+="</tr><tr><td align='center' colspan='4' nowrap>";dateDiv+="<span style='cursor:pointer;font-weight:bolder;' onclick='fSetDate(giYear,giMonth,giDay)' onmouseover='this.style.color=\""+gcMouseOver+"\"' onmouseout='this.style.color=\"#000000\"'>"+strToday+":"+giYear+strYear+giMonth+strMonth+giDay+strDay+"</span>";dateDiv+="</tr></tr>";dateDiv+="</table></div>";return dateDiv;}
with(document){onclick=fHideCalendar;write(getDateDiv());}
</script>
<table cellpadding="2" class="registeInfo" width="100%">
                            <tr>
                                <td align="right" style="height: 35px" width="120">
                                    登录帐号：</td>
                                <td style="height: 35px">
                                    <asp:TextBox ID="txtname" runat="server" Width="109px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                                        ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr style="color: #000000">
                                <td align="right">
                                    姓名：</td>
                                <td>
                                    <asp:TextBox ID="XingMing" runat="server" Width="166px"></asp:TextBox></td>
                            </tr>
                            <tr style="color: #000000">
                                <td align="right">
                                    性别：</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="89px">
                                        <asp:ListItem>男</asp:ListItem>
                                        <asp:ListItem>女</asp:ListItem>
                                    </asp:DropDownList></td>
                            </tr>
    <tr style="color: #000000">
        <td align="right">
            家庭住址：</td>
        <td>
            <asp:TextBox ID="Address" runat="server" Width="401px"></asp:TextBox></td>
    </tr>
                            <tr>
                                <td align="right">
                                    年龄：</td>
                                <td>
                                    <asp:TextBox ID="Age" runat="server" Width="58px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    电子邮件：</td>
                                <td>
                                    <label for="ksIDType3">
                                        <asp:TextBox ID="txtemal" runat="server" Width="166px"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemal"
                                            ErrorMessage="格式不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemal"
                                            ErrorMessage="必填"></asp:RequiredFieldValidator></label></td>
                            </tr>
                              <tr>
                                <td align="right">
                                    联系电话：</td>
                                <td>
                                    <asp:TextBox ID="Tel" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Tel"
                                        ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                            </tr>
                        
                            <tr>
                                <td align="right">
                                    用户头像：</td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Width="134px" /><br />
                                    <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                                        id="file1" runat="server" class="inputBox" style="width: 141px" type="file" /><asp:Button
                                            ID="Button2" runat="server" CausesValidation="False" CssClass="formbutton" Height="22px"
                                            OnClick="Button2_Click" Text="上传头像" Width="89px" /><asp:Label ID="Label1" runat="server"
                                                Visible="False" Width="60px"></asp:Label>
                                </td>
                            </tr>
    <tr>
        <td align="right">
            会员生日：</td>
        <td>
            <input id="txttime" runat="server" onclick="fPopCalendar(event,this,this)" onfocus="this.select()"
                readonly="readonly" size="15" style="border-right: #cccccc 1px solid; border-top: #cccccc 1px solid;
                border-left: #cccccc 1px solid; border-bottom: #cccccc 1px solid" type="text" /></td>
    </tr>
                            <tr>
                                <td align="right">
                                    登录密码：</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1"
                                        ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td align="right" style="height: 127px">
                                    用户描述：</td>
                                <td style="height: 127px">
                                    <asp:TextBox ID="txtds" runat="server" Height="115px" TextMode="MultiLine" Width="473px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="注册" /></td>
                            </tr>
                        </table>
</asp:Content>

