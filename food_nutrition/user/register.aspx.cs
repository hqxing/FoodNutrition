using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;//第一步，添加三个名称空间
using System.Data.SqlClient;
using System.Configuration;

public partial class user_register : System.Web.UI.Page
{
    //获取配置连接信息
    public static string connstr = ConfigurationManager.ConnectionStrings["FoodNutritionConnectionString"].ConnectionString;

    //建立连接对象 ，将配置信息作为 连接对象的参数
    SqlConnection conn = new SqlConnection(connstr);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            string str = "select * from users where username='" + txtusername.Text + "' ";

            SqlCommand cmd = new SqlCommand(str, conn);

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                Response.Write("<script>alert('用户名已被占用，请重新输入新用户名!')</script>");
                reader.Close();
            }
            else
            {
                reader.Close();

                string str1 = "insert into users  values('" + txtusername.Text + "','" + txtpassword.Text + "','" + RadioButtonList1.SelectedValue + "','" + txtemail.Text + "','" + txtphone.Text + "')";
                SqlCommand cmd1 = new SqlCommand(str1, conn);

                cmd1.ExecuteNonQuery();//因为插入语句没有最后的结果集需要存储
                                       // Response.Write("<script>alert('注册成功!')</script>");
                Session["username"] = txtusername.Text;
                Response.Redirect("~/index.aspx");
            }
        }

        catch
        {
            Response.Write("<script>alert('注册失败!')</script>");
        }
        finally { conn.Close(); }

    }
    protected void btncancle_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtpassword.Text = "";
        txtrepassword.Text = "";
        txtemail.Text = "";
        txtphone.Text = "";
        btncancle.CausesValidation = false;
        Response.Redirect("~/index.aspx");
    }
}