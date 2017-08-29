using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class insertfiles : System.Web.UI.Page
{
    public static string connectionstring = ConfigurationManager.ConnectionStrings["FoodNutritionConnectionString"].ConnectionString;
    SqlConnection conn = new SqlConnection(connectionstring);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminName"] == null)
            Response.Write("<script>alert('你还没有登录，没有插入文件权限');window.location.replace('AdminDefault.aspx')</script>");
    }
    protected void btninsert_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            string str = "insert into files(filename,typeid,filecontent,publisher,publishdate) values('" + txtfilename.Text + "','" + drpfiletype.SelectedValue + "','" + fileeditor.Text + "','" + txtpublisher.Text + "','" + System.DateTime.Now + "')";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.ExecuteNonQuery();
            this.Response.Write("<script>alert('插入成功!')</script>");
            Response.Redirect("~/Admin/AdminDefault.aspx");
        }
        catch
        {
            this.Response.Write("<script>alert('插入不成功!')</script>");
        }
        finally
        {
            conn.Close();
        }

    }

}