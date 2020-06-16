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
using System.IO;
public partial class AdminManger_AddShangPin : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = data.GetDataReader("select * from ShangPinType");
            DropDownList1.DataValueField = "id";
            DropDownList1.DataTextField = "name";
            DropDownList1.DataBind();

            DropDownList2.DataSource = data.GetDataReader("select * from PinPaiType");
            DropDownList2.DataValueField = "id";
            DropDownList2.DataTextField = "name";
            DropDownList2.DataBind();

            DropDownList3.DataSource = data.GetDataReader("select * from  JiJieType");
            DropDownList3.DataValueField = "id";
            DropDownList3.DataTextField = "name";
            DropDownList3.DataBind();

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string res;
        upload up = new upload();
        res = up.Up(file1, "../files/");
        this.Label1.Visible = true;
        this.Label1.Text = up.Resup[Convert.ToInt32(res)];
        this.pic.Text = up.s;
        Image1.ImageUrl = "../files/" + pic.Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        data.RunSql("insert into ShangPinInfo (ShangPinName,ShangPinTypeID,ShangPinTypeName,ShangPinNum,ShangPinPhoto,ShangPinPrice,ShangPinIntroduce,ShangPinKuanshi,ShangYanSe,PinPaiTypeId,PinPaiTypeName,YuJing,JiJieId,JiJieName)values('" + title.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + pic.Text + "','" + TextBox2.Text + "','" + content1.Value + "','" + TextBox1.Text + "','" + TextBox4.Text + "','" + DropDownList2.SelectedValue + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox5.Text + "','" + DropDownList3.SelectedValue + "','" + DropDownList3.SelectedItem.Text + "') ");
        Alert.AlertAndRedirect("添加成功", "AddShangPin.aspx");
    }
}
