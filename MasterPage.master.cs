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

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
           

            DlGoodsType.DataSource = data.GetDataReader("select * from  ShangPinType  order by  id desc ");
            DlGoodsType.DataBind();


            DataList1.DataSource = data.GetDataReader("select * from  PinPaiType  order by  id desc ");
            DataList1.DataBind();

            DataList2.DataSource = data.GetDataReader("select * from  JiJieType  order by  id desc ");
            DataList2.DataBind();
            
        }

    }
    protected string CutChar(string strChar, int intLength)
    {
        //取得自定义长度的字符串
        if (strChar.Length > intLength)
        { return strChar.Substring(0, intLength); }
        else
        { return strChar; }

    }
}
