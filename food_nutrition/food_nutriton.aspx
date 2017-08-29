<%@ Page Language="C#" AutoEventWireup="true" CodeFile="food_nutriton.aspx.cs" Inherits="food_nutriton" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>食物营养</title>
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
            <div class="food_content">
                <div class="food_one">
                    <div class="food_type"><a href="fruit.aspx" target="_blank">水果篇</a></div><br />
                    <img alt="" src="images/shuiguo.jpg" />
                </div>
                <div class="food_one">
                    <div class="food_type"><a href="vegetables.aspx" target="_blank">蔬菜篇</a></div><br />
                    <img alt="" src="images/shucai.jpg" />                
                </div>
            </div> 
            <div class="food_content">
                <div class="food_one">
                    <div class="food_type"><a href="meat.aspx" target="_blank">肉类篇</a></div><br />
                    <img alt="" src="images/roulei.jpg" />                 
                </div>
                <div class="food_one">
                    <div class="food_type"><a href="seafood.aspx" target="_blank">鱼虾贝壳篇</a></div><br />
                    <img alt="" src="images/yuxiabeikelei.jpg" />                    
                </div>
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
