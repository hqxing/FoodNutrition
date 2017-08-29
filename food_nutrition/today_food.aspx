<%@ Page Language="C#" AutoEventWireup="true" CodeFile="today_food.aspx.cs" Inherits="today_food" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>今日搭配</title>
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
                <p style="text-align:right;">当前位置：<a href="index.aspx">首页</a> > <a href="#">今日搭配</a>  </p>
            </div>
            <div class="dapei">
                <h1>油菜炒虾仁</h1>
                <p>原料：对虾肉50克，油菜250克，姜、葱适量。</p>
                <p>制作方法：</p>
                <p>1． 将虾肉洗净切成薄片，虾片用酱油、料酒、淀粉拌好；油菜梗叶分开，洗净后切成3厘米长段。</p>
                <p>2． 锅中加入食油，烧热后先下虾片煸几下即起出。</p>
                <p>3． 再把油锅熬热加盐，先煸炒油菜梗，再煸油菜叶，至半熟时倒入虾片，并加入佐料姜、葱等，用旺火快炒几下即可起锅装盘。</p>
                <p>功效：此菜具有营养强壮身体的作用，可提高机体抗病能力。老年体弱者可常食。</p>
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
