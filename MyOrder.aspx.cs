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

public partial class MyOrder : System.Web.UI.Page
{
    SqlHelper sqloperate = new SqlHelper();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = " 服装购物网站";
        if (Session["UserName"] == null)
        {
            Response.Write("<script>alert('您还没有登录，请登录后再使用该功能!');location='javascript:history.go(-1)';</script>");
        }
        if (!IsPostBack)
        {
            BinderOrder();

            SqlDataReader dr1;
            dr1 = sqloperate.GetDataReader("select OrderID from XiaShouDD where OrderMember='" + Convert.ToString(Session["UserName"]) + "' and IsCheckout='是'");
            if (dr1.Read())
            {

                string sqlstrtprice = "select sum(ShangPinPrice*shuliang) as tprice from XiaShouDD"
                    + " where OrderMember='" + Convert.ToString(Session["UserName"]) + "' and IsCheckout='是'";

                SqlDataReader dr;
                dr = sqloperate.GetDataReader(sqlstrtprice);
                dr.Read();
                labMoney.Text = Convert.ToString(float.Parse(dr["tprice"].ToString()));


            }
            else
            {
                labMoney.Text = "0";

            }
        }
    }
    public void gvDataBind(GridView gv, string sqlstr)
    {
        sqlconn.Open();
        SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlconn);
        DataSet myds = new DataSet();
        myda.Fill(myds);
        gv.DataSource = myds;
        gv.DataBind();
        sqlconn.Close();
    }
    private void BinderOrder()
    {
        string sqlstr = "select * from vb_OrderInfo where Ordeuser='" + Convert.ToString(Session["UserName"]) + "' ";
        gvOrderInfo.DataKeyNames = new string[] { "OrderID" };
        gvDataBind(gvOrderInfo, sqlstr);


    }
    protected void gvOrderInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        gvOrderInfo.PageIndex = e.NewPageIndex;
        string sqlstr = "select *  from XiaShouDD where Ordeuser='" + Convert.ToString(Session["UserName"]) + "' ";
        gvOrderInfo.DataKeyNames = new string[] { "OrderID" };
        gvDataBind(gvOrderInfo, sqlstr);

    }
}
