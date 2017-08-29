<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminDefault.aspx.cs" Inherits="Admin_AdminDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/admin.css" rel="stylesheet" type="text/css"/>       
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title">
        <span >新闻资讯</span>
        <p class="current_position">当前位置：<a href="#">管理员首页</a>  </p>
    </div>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodNutritionConnectionString %>" SelectCommand="SELECT [fileid], [filename], [publishdate] FROM [files] ORDER BY [publishdate] DESC">
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="fileid" DataSourceID="SqlDataSource1" GridLines="None" ShowHeader="False" CssClass="title_list">
            <Columns>
                <asp:TemplateField SortExpression="filename">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("filename") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>' Text='<%# Eval("filename").ToString().Length>20?Eval("filename").ToString().Substring(0,18)+"...":Eval("filename") %>' ToolTip='<%# Eval("filename") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="publishdate" SortExpression="publishdate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("publishdate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# "["+ Eval("publishdate","{0:yyyy-MM-dd}")+"]" %>' Width="100px" ForeColor="Silver"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
