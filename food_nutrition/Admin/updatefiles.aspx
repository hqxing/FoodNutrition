<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="updatefiles.aspx.cs" Inherits="Admin_updatefiles" %>

<%@ Register Assembly="CuteEditor" Namespace="CuteEditor" TagPrefix="CE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/admin.css" rel="stylesheet" type="text/css"/> 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title"><span >资讯管理中心</span>
        <p class="current_position">当前位置：<a href="AdminDefault.aspx">管理员首页</a>><a href="#">插入资讯</a></p>
        <img alt="" src="../images/contentTigleBg.jpg" width="700px" />
    </div>
    <asp:Panel ID="Panel1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:FoodNutritionConnectionString %>" 
        SelectCommand="SELECT [fileid], [filename],[filecontent] FROM [files] ORDER BY [publishdate] DESC">
        </asp:SqlDataSource>
        <br /> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="fileid" onrowediting="GridView1_RowEditing"   
        DataSourceID="SqlDataSource1" GridLines="None" ShowHeader="False" CssClass="update_list">
        <Columns>
            <asp:TemplateField SortExpression="filename">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                                  NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>' 
                                  Text='<%# Eval("filename").ToString().Length>20?(Eval("filename").ToString().Substring(1,18)+"…"):Eval("filename") %>' 
                                  Target="_blank" ToolTip='<%# Eval("filename")%>' >
                    </asp:HyperLink>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("filename") %>'></asp:Label>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit" CssClass="list_btn">编辑</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        </asp:GridView>
    </asp:Panel>
    
    <asp:Panel ID="Panel2" runat="server">
        <asp:Button ID="btnupdate" runat="server" Text="更新" class="updateBtn" onclick="btnupdate_Click" />
        <asp:Button ID="btncancle" runat="server" Text="取消" class="updateBtn" onclick="btncancle_Click" />
        <br />
        <div class="update">
            <span>文件名:</span><asp:TextBox ID="txtfilename" runat="server" Text='<%# Bind("filename") %>' cssclass="updateText"></asp:TextBox>
        </div>
        <div class="update">
            <span>发布者:</span><asp:TextBox ID="txtpublisher" runat="server" Text='<%# Bind("publisher") %>' cssclass="updateText"></asp:TextBox>
        </div>
        <div class="update">
            <span> 文件内容：</span>                                   
            <br />
        </div>
        <div class="insertcontent">
            <CE:Editor ID="fileeditor" runat="server" DownLevelRows="20" Height="650px"  Width="600px" Text='<%# Bind("filecontent") %>'></CE:Editor>                                 
        </div>

    </asp:Panel>

</asp:Content>

