using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
            lbtnexit.Visible = false;
        else
        {
            lbtnexit.Visible = true;
            lbtnlogin.Visible = false;
            lbtnregister.Visible = false;
            lblloginmessage.Text = "欢迎您" + Session["username"];
        }
    }
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