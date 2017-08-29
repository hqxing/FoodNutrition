<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="insertfiles.aspx.cs" Inherits="insertfiles" %>
<%@ Register assembly="CuteEditor" namespace="CuteEditor" tagprefix="CE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">     
    <link href="../css/admin.css" rel="stylesheet" type="text/css"/> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title"><span >资讯管理中心</span>
        <p class="current_position">当前位置：<a href="AdminDefault.aspx">管理员首页</a>><a href="#">插入资讯</a></p>
        <img alt="" src="../images/contentTigleBg.jpg" width="700px" />
    </div>
    <div>
        <div class="insert"><span>发布者：</span><asp:TextBox ID="txtpublisher" runat="server"  CssClass="insertText" /></div>
        <div class="insert"><span>文件名：</span><asp:TextBox ID="txtfilename" runat="server" CssClass="insertText"></asp:TextBox></div>
        <div class="insert"><span>文件类型：</span>
            <asp:DropDownList ID="drpfiletype" runat="server" CssClass="insertdrop" DataSourceID="SqlDataSource1" DataTextField
                ="typename" DataValueField="typeid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodNutritionConnectionString %>" SelectCommand="SELECT * FROM [type]">
            </asp:SqlDataSource>
        </div>
        <div class="insert"><span>文件内容：</span></div>
        <div class="insertcontent">
            <CE:editor ID="fileeditor" runat="server" width="630px" height="650px" DownLevelRows="20"></CE:editor>
        </div>
        <div>
            <asp:Button ID="insertBtn" runat="server" Text="插入" CssClass="insertBtn" OnClick="btninsert_Click" />
        </div>
    </div>

</asp:Content>

