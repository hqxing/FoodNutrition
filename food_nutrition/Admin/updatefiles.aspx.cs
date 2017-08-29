using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_updatefiles : System.Web.UI.Page
{
    public static string connectiotnstring = ConfigurationManager.ConnectionStrings["FoodNutritionConnectionString"].ConnectionString;
    SqlConnection conn = new SqlConnection(connectiotnstring);
    public static int fileid;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminName"] == null)
            Response.Write("<script>alert('你还没有登录，没有更新文件权限');window.location.replace('AdminDefault.aspx')</script>");
            Panel2.Visible = false;
    }


    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Panel2.Visible = true;
        DataKey key = GridView1.DataKeys[e.NewEditIndex];
        fileid = int.Parse(key[0].ToString());
        Panel1.Visible = false;


        try
        {
            conn.Open();


            string str1 = "select * from files where fileid='" + fileid + "'";
            SqlCommand cmd = new SqlCommand(str1, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtfilename.Text = dr.GetString(1).ToString();
                txtpublisher.Text = dr.GetString(4).ToString();
                fileeditor.Text = dr.GetString(3).ToString();

                dr.Close();

            }

        }
        catch
        {
            Response.Write("<script>alert('编辑错误')</script>");
        }
        finally { conn.Close(); }
    }


    protected void btnupdate_Click(object sender, EventArgs e)
    {


        try
        {
            conn.Open();

            string str2 = "update files set filecontent='" + fileeditor.Text + "' ,filename='" + txtfilename.Text + "',publisher='" + txtpublisher.Text + "' where fileid='" + fileid + "'";
            SqlCommand cmd = new SqlCommand(str2, conn);
            cmd.ExecuteNonQuery();
            Response.Redirect("~/Admin/AdminDefault.aspx");

        }
        catch
        {
            Response.Write("<script>alert('更新错误')</script>");
        }

        finally
        {
            conn.Close();
            Panel2.Visible = false;
            Panel1.Visible = true;

        }
    }
    protected void btncancle_Click(object sender, EventArgs e)
    {

        Panel2.Visible = false;
        Panel1.Visible = true;
    }

    protected void GridView1_PreRender(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}