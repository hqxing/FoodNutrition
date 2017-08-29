<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="user_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>注册</title>
        <link href="../css/user.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login_bg">    
            <div class="line">
                <div class="linefont">
                    <div>用户名: </div>
                    <div>密 码:</div>
                    <div>重复密码:</div>
                    <div>性别:</div>
                    <div>邮箱:</div>
                    <div>电话:</div>
                </div>
                <div class="linetxtbox">            
                    <div>
                        <asp:TextBox ID="txtusername" runat="server" Width="120px"></asp:TextBox>  
                    </div> 
                    <div>
                        <asp:TextBox ID="txtpassword" runat="server" Width="120px"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="txtrepassword" runat="server" Width="120px"></asp:TextBox>             
                    </div>
                    <div>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" Width="100px">
                        <asp:ListItem Selected="True">男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div>
                        <asp:TextBox ID="txtemail" runat="server" Width="120px"></asp:TextBox>             
                    </div>
                    <div>
                        <asp:TextBox ID="txtphone" runat="server" Width="120px"></asp:TextBox>              
                    </div>                 
                </div>                                      
            </div>
                
            <div class="linebtn"> 
               <asp:Button ID="btnregister" runat="server" onclick="btnregister_Click" Text="注册" CssClass="btn" Height="28px" Width="60px"  />
               <asp:Button ID="btncancle" runat="server" Text="取消" CssClass="btn" Height="28px" Width="60px" onclick="btncancle_Click"  />
           </div>
        </div> 
    </form>
</body>
</html>
