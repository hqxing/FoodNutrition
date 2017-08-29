using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class readfile : System.Web.UI.Page
{
    public static string connectionstring = ConfigurationManager.ConnectionStrings["FoodNutritionConnectionString"].ConnectionString;
    SqlConnection conn = new SqlConnection(connectionstring);
    protected void Page_Load(object sender, EventArgs e)
    {
        //判断是否已登录
        if (Session["username"] == null)
            lbtnexit.Visible = false;
        else
        {
            lbtnexit.Visible = true;
            lbtnlogin.Visible = false;
            lbtnregister.Visible = false;
            lblloginmessage.Text = "欢迎您" + Session["username"];
        }
        //读取发布者、发布日期、文章内容
        int fileid;
        fileid = int.Parse(Request.QueryString["fileid"]);
        //fileid = int.Parse(Request.Params["fileid"]);

        try
        { 
            conn.Open();
            string sql = "select * from files where fileid='" + fileid + "'";
            SqlCommand command = new SqlCommand(sql, conn);
            SqlDataReader dr = command.ExecuteReader();
            if (dr.Read())
            {
                lblfilename.Text = dr.GetString(1).ToString();
                lblpublisher.Text = "发布者：" + dr.GetString(4).ToString() + " 发布日期：" + dr.GetDateTime(5).ToShortDateString();
                lblfilecontent.Text = dr.GetString(3).ToString();
            }
        }
        catch { Response.Write("<script>alert('出错')</script>"); }
        finally { conn.Close(); }

    }

    //登录注册退出事件
    protected void lbtnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/login.aspx");
    }
    protected void lbtnregister_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/user/register.aspx");
    }
    protected void lbtnexit_Click(object sender, EventArgs e)
    {
        Session.Abandon();//注销会话期
        lblloginmessage.Text = "";
        lbtnexit.Visible = false;
        lbtnlogin.Visible = true;
        lbtnregister.Visible = true;
    }

}