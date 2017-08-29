<%@ Page Language="C#" AutoEventWireup="true" CodeFile="readfile.aspx.cs" Inherits="readfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/layout.css" rel="stylesheet" type="text/css"/> 
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <div id="header">
            <div id="top">               
                <img alt ="" src="images/logo.png" id="logo" />
                <img alt="" src="images/top_bg.jpg" id="top_bg" /> 
                <div class="loginbtn">
                    <asp:Label ID="lblloginmessage" runat="server" ></asp:Label>
                    <asp:LinkButton ID="lbtnlogin" runat="server" onclick="lbtnlogin_Click">登录</asp:LinkButton>
                    <asp:LinkButton ID="lbtnregister" runat="server" onclick="lbtnregister_Click">注册</asp:LinkButton>
                    <asp:LinkButton ID="lbtnexit" runat="server" onclick="lbtnexit_Click">退出</asp:LinkButton>
                </div>                                                                                               
            </div>                             
            <div id="nav">                
                <ul>
                    <li><a href="index.aspx" title="首页">首页</a></li>
                    <li><a href="news.aspx" title="新闻资讯">新闻资讯</a></li>
                    <li><a href="food_nutriton.aspx" title="食物营养">食物营养</a></li>                                         
                    <li><a href="contact_us.aspx" title="学科动态">联系我们</a></li>                                           	                                                 
                </ul>
            </div>

        </div>
        <div id="content">
            <div class="read_title"><span >新闻资讯</span>
                <p style="text-align:right;">当前位置：<a href="index.aspx">首页</a> > <a href="#">新闻资讯</a>  </p>
            </div>
            <div class="article_titlename">
                <asp:Label ID="lblfilename" runat="server"/>
            </div>
            <p><img alt="" src="images/contentTigleBg.jpg" /></p>       
            <div class="article_Date"> 
                <asp:Label ID="lblpublisher" runat="server"  />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblpublishdate" runat="server"  /> 
             </div>                                  
            <div class="article_Content">
                <asp:Label ID="lblfilecontent" runat="server"    />                      
                <br />                                 
            </div>                              
        </div>
        <div id="footer">
            <p>版权所有：15软件外包服务</p>
            <p>何青杏</p>
            <p>1538113</p>            
        </div>   
    </div>
    </form>
</body>
</html>
