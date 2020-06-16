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
using System.Data.SqlClient;
public partial class SearchGoods : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvbind();
            DropDownList1.DataSource = data.GetDataReader("select * from ShangPinType");
            DropDownList1.DataValueField = "id";
            DropDownList1.DataTextField = "name";
            DropDownList1.DataBind();
            DropDownList1.Items.Add("所有类别");
            DropDownList1.Items[this.DropDownList1.Items.Count - 1].Value = " ";
            DropDownList1.SelectedIndex = this.DropDownList1.Items.Count - 1;


            DropDownList2.DataSource = data.GetDataReader("select * from dbo.JiJieType");
            DropDownList2.DataValueField = "id";
            DropDownList2.DataTextField = "name";
            DropDownList2.DataBind();
            DropDownList2.Items.Add("所有季节");
            DropDownList2.Items[this.DropDownList2.Items.Count - 1].Value = " ";
            DropDownList2.SelectedIndex = this.DropDownList2.Items.Count - 1;



            DropDownList3.DataSource = data.GetDataReader("select * from dbo.PinPaiType");
            DropDownList3.DataValueField = "id";
            DropDownList3.DataTextField = "name";
            DropDownList3.DataBind();
            DropDownList3.Items.Add("所有品牌");
            DropDownList3.Items[this.DropDownList3.Items.Count - 1].Value = " ";
            DropDownList3.SelectedIndex = this.DropDownList3.Items.Count - 1;




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
    private void gvbind()
    {
        string sqlstr = "";
        sqlstr = "select  * from ShangPinInfo order by ShangPinClick desc ";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        con.Open();

        SqlDataAdapter sda = new SqlDataAdapter(sqlstr, con);

        DataSet ds = new DataSet();
        sda.Fill(ds);
        PagedDataSource objPds = new PagedDataSource();
        objPds.DataSource = ds.Tables[0].DefaultView;

        objPds.AllowPaging = true;
        objPds.PageSize = 16;

        int CurPage;
        if (Request.QueryString["Page"] != null)
            CurPage = Convert.ToInt32(Request.QueryString["Page"]);
        else
            CurPage = 1;

        objPds.CurrentPageIndex = CurPage - 1;
        lblCurrentPage.Text = CurPage.ToString();
        lblSumPage.Text = objPds.PageCount.ToString();

        if (!objPds.IsFirstPage)
        {
            this.hyfirst.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + 1;
            lnkPrev.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage - 1);
        }

        if (!objPds.IsLastPage)
        {
            hylastpage.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + objPds.PageCount;

            lnkNext.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage + 1);
        }

        this.DataList1.DataSource = objPds;
        this.DataList1.DataBind();
        con.Close();


    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {

        Response.Redirect("SearchShangPinList.aspx?ShangPinName=" + TxtName.Text + "&ShangPinTypeName=" + DropDownList1.SelectedItem.Text + "&JiJieName=" + DropDownList2.SelectedItem.Text + "&PinPaiTypeName=" + DropDownList3.SelectedItem.Text);
    }
}
