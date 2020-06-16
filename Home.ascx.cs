using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Home : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("MMPwd.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ModifyMyInfo.aspx");
    }
    protected void LinkButton9_Click1(object sender, EventArgs e)
    {
        Response.Redirect("MyOrder.aspx");
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("AddMoney.aspx");
    }
}
