﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact_us.aspx.cs" Inherits="contact_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>联系我们</title>
    <link href="css/layout.css" rel="stylesheet" type="text/css"/> 
    <script type="text/javascript" src="js/pic_return.js"></script>
</head>
<body onload="myMain()">
    <form id="form1" runat="server">
    <div id="container" >
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
            <div id="banner">
                <div class="inturn">
		            <div> <!--shuzi-->
    		        <a id="url" href="#"> <img alt="" src="images/i1.jpg" id="pic" style="border:0px;"/></a>
    	            </div>
    	            <div class="textalt"><!--tupian-->
    		            <a href="javascript:changeimg(1);" id="xxjdjj1" class="axx" target="_self">1</a>
    		            <a href="javascript:changeimg(2);" id="xxjdjj2" class="bxx" target="_self">2</a>
    		            <a href="javascript:changeimg(3);" id="xxjdjj3" class="axx" target="_self">3</a>
    		            <a href="javascript:changeimg(4);" id="xxjdjj4" class="axx" target="_self">4</a>
    		            <a href="javascript:changeimg(5);" id="xxjdjj5" class="axx" target="_self">5</a>
    	            </div>
                </div>
            </div>
        </div>
       <div id="content">
            <div class="contact_content">
                <br />
                <p>Email：12345678@163.com</p>
                <br /><br />
                <p>Tell：020-9876543</p>
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
