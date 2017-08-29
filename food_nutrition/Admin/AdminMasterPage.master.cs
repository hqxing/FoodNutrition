using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminName"] == null)
            lbtnexit.Visible = false;
        else
        {
            lbtnexit.Visible = true;
            lbtnlogin.Visible = false;
            lblloginmessage.Text = "欢迎您" + Session["adminName"];
        }
    }

    protected void lbtnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Admin_login.aspx");
    }

    protected void lbtnexit_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        lblloginmessage.Text = "";
        lbtnexit.Visible = false;
        lbtnlogin.Visible = true;
        Response.Redirect("~/index.aspx");
    }
}
