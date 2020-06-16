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
public partial class UserLogin : System.Web.UI.UserControl
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserId"] == null)
            {
                Login1.Visible = false;
                Login2.Visible = true;

            }
            else
            {
                Label1.Text = Session["UserName"].ToString();
                
                Login1.Visible = true;
                Login2.Visible = false;

            }
        }

    }
   
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (TxtUserName.Text == "" && TxtPassword.Text == "")
        {
            Alert.AlertAndRedirect("没有输入账号和密码！", "Default.aspx");
        }
        else
        {
            SqlDataReader dr;
            dr = data.GetDataReader("select * from  Users where UserName='" + TxtUserName.Text.Trim() + "'and pwd='" + TxtPassword.Text.Trim() + "'");
            if (dr.Read())
            {
                Session["UserId"] = dr["id"].ToString();
                Session["UserName"] = dr["UserName"].ToString();
                Session["XingMing"] = dr["XingMing"].ToString();

                Session["ZheKou"] = dr["ZheKou"].ToString();
                Response.Redirect("Default.aspx");
            }
            else
            {
                Alert.AlertAndRedirect("账号或者密码不对请重新登陆！", "Default.aspx");
            }
        }
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session["UserId"] = null;
        Session["UserName"] = null;
        Response.Redirect("Default.aspx");
    }
    protected void LinkButton3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("UserHome.aspx");
    }
}
