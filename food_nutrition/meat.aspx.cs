using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class meat : System.Web.UI.Page
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

        if (Page.IsPostBack == false)
        {
            MultiView1.ActiveViewIndex = 0;	//MultiView1控件中显示第一个视图。
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
    protected void ViewChangeCommand(object sender, CommandEventArgs e)
    {
        int viewIndex = int.Parse(e.CommandArgument.ToString());
        //将LinkButton所代表的视图在MultiView1中显示
        MultiView1.ActiveViewIndex = viewIndex;

    }

}