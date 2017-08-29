<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="user_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录</title>
    <link href="../css/user.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">           
        <div class="login_bg">
            <div class="line">
                <div class="linefont">用户名: </div>
                <div class="linetxtbox"><asp:TextBox ID="txtusername" runat="server" Width="120px"></asp:TextBox> </div>
            </div>
            <div class="line">
                <div class="linefont">密 码:</div>
                <div class="linetxtbox"> <asp:TextBox ID="txtpassword" runat="server" Width="120px" TextMode="Password"></asp:TextBox></div>
            </div>
            <div class="linebtn">
                <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" Text="登录" CssClass="btn" Height="28px" Width="60px" />
                <asp:Button ID="btncancle" runat="server" Text="取消" CssClass="btn" Height="28px" onclick="btncancle_Click" Width="60px" />
            </div> 
         <div class="link_admin"><a href="../Admin/Admin_login.aspx">管理员请登录</a></div>             
        </div>
        
    </form>
</body>
</html>
