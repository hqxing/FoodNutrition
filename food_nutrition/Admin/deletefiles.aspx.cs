using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_deletefiles : System.Web.UI.Page
{
    public static string connectionstring = ConfigurationManager.ConnectionStrings["FoodNutritionConnectionString"].ConnectionString;
    SqlConnection conn = new SqlConnection(connectionstring);
    public static int fileid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminName"] == null)
            Response.Write("<script>alert('你还没有登录，没有删除文件权限');window.location.replace('AdminDefault.aspx')</script>");
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataKey key = GridView1.DataKeys[e.RowIndex];
        fileid = int.Parse(key[0].ToString());
        try
        {
            conn.Open();

            string str = "select * from pinglun where fileid='" + fileid + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                //Response.Write("<script>alert('请先删除其它表中的关联数据')</script>");
                //e.Cancel = true;
                //dr.Close();
                //用下面语句代替上面三条语句，则可同步删除关联表中的数据
                Response.Write("<script>alert('请先删除其它表中的关联数据，确定要同步删除关联表中的数据吗？')</script>");
                dr.Close();
                string str1 = "delect from pinglun where fileid='" + fileid + "'";
                SqlCommand cmd1 = new SqlCommand(str1, conn);
                cmd1.ExecuteNonQuery();

            }


        }
        catch
        {
            Response.Write("<script>alert('删除错误')</script>");
        }

        finally
        {
            conn.Close();
        }
    }
}