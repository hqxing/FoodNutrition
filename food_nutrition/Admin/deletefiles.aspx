<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="deletefiles.aspx.cs" Inherits="Admin_deletefiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/admin.css" rel="stylesheet" type="text/css"/> > 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="title"><span >资讯管理中心</span>
        <p class="current_position">当前位置：<a href="AdminDefault.aspx">管理员首页</a>><a href="#">插入资讯</a></p>
        <img alt="" src="../images/contentTigleBg.jpg" width="700px" />
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:FoodNutritionConnectionString %>" 
            DeleteCommand="DELETE FROM [files] WHERE [fileid] = @original_fileid" 
            InsertCommand="INSERT INTO [files] ([filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (@filename, @typeid, @filecontent, @publisher, @publishdate, @visitnum)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [files] ORDER BY [publishdate] DESC" 
            
            UpdateCommand="UPDATE [files] SET [filename] = @filename, [typeid] = @typeid, [filecontent] = @filecontent, [publisher] = @publisher, [publishdate] = @publishdate, [visitnum] = @visitnum WHERE [fileid] = @original_fileid AND (([filename] = @original_filename) OR ([filename] IS NULL AND @original_filename IS NULL)) AND (([typeid] = @original_typeid) OR ([typeid] IS NULL AND @original_typeid IS NULL)) AND (([filecontent] = @original_filecontent) OR ([filecontent] IS NULL AND @original_filecontent IS NULL)) AND (([publisher] = @original_publisher) OR ([publisher] IS NULL AND @original_publisher IS NULL)) AND (([publishdate] = @original_publishdate) OR ([publishdate] IS NULL AND @original_publishdate IS NULL)) AND (([visitnum] = @original_visitnum) OR ([visitnum] IS NULL AND @original_visitnum IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_fileid" Type="Int32" />
                <asp:Parameter Name="original_filename" Type="String" />
                <asp:Parameter Name="original_typeid" Type="Int32" />
                <asp:Parameter Name="original_filecontent" Type="String" />
                <asp:Parameter Name="original_publisher" Type="String" />
                <asp:Parameter Name="original_publishdate" Type="DateTime" />
                <asp:Parameter Name="original_visitnum" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="filename" Type="String" />
                <asp:Parameter Name="typeid" Type="Int32" />
                <asp:Parameter Name="filecontent" Type="String" />
                <asp:Parameter Name="publisher" Type="String" />
                <asp:Parameter Name="publishdate" Type="DateTime" />
                <asp:Parameter Name="visitnum" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="filename" Type="String" />
                <asp:Parameter Name="typeid" Type="Int32" />
                <asp:Parameter Name="filecontent" Type="String" />
                <asp:Parameter Name="publisher" Type="String" />
                <asp:Parameter Name="publishdate" Type="DateTime" />
                <asp:Parameter Name="visitnum" Type="Int32" />
                <asp:Parameter Name="original_fileid" Type="Int32" />
                <asp:Parameter Name="original_filename" Type="String" />
                <asp:Parameter Name="original_typeid" Type="Int32" />
                <asp:Parameter Name="original_filecontent" Type="String" />
                <asp:Parameter Name="original_publisher" Type="String" />
                <asp:Parameter Name="original_publishdate" Type="DateTime" />
                <asp:Parameter Name="original_visitnum" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="fileid" 
            DataSourceID="SqlDataSource1" GridLines="None" 
            onrowdeleted="GridView1_RowDeleted" onrowdeleting="GridView1_RowDeleting" 
            ShowHeader="False" Width="700px" CssClass="update_list">
            <Columns>
                <asp:TemplateField HeaderText="filename" SortExpression="filename">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("filename") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                                  NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>' 
                                  Text='<%# Eval("filename").ToString().Length>20?(Eval("filename").ToString().Substring(1,18)+"…"):Eval("filename") %>' 
                                  Target="_blank" ToolTip='<%# Eval("filename")%>' CssClass="update_list"></asp:HyperLink>
                    </ItemTemplate>                 
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="删除" CssClass="list_btn"
                            onclientclick="return confirm('你确认要删除该条新闻吗？')" BackColor="#00CC99" Font-Overline="False" Font-Size="12pt" Height="22px" Width="45px">删除</asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="45px" />
                </asp:TemplateField>
            </Columns>
            <HeaderStyle Height="0px" />
        </asp:GridView>
</asp:Content>

