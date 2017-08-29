<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
            <div class="shang">
                <div class="one">
                    <div class="title_one">
                        <p>
                            <img src="images/title1.png" class="title_pic" />
                            膳食指南
                        </p>
                    </div>
                    <div class="content_one">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:FoodNutritionConnectionString %>" SelectCommand="SELECT * FROM [files] WHERE [typeid]=1 ORDER BY [publishdate] DESC">
                        </asp:SqlDataSource>

                        <br />
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl='<%# "~/readfile.aspx?fileid="+Eval("fileid") %>' Text='<%#Eval("filename").ToString().Length>20?Eval("filename").ToString().Substring(0,20)+"...":Eval("filename") %>' ToolTip='<%#Eval("filename") %>' Target="_blank">
                                HyperLink
                                </asp:HyperLink>
                            </ItemTemplate>
                        </asp:DataList>

                    </div>
                </div>
                <div class="two">
                    <div class="title_two">
                        <p>
                            <img alt="" src="images/title2.png" class="title_pic" />
                            今日搭配
                        </p>                        
                    </div>
                    <div class="content_two">
                        <img alt="" src="images/today_food.jpg" class="today_food" />
                        <div>
                            <span class="today_foodname">油菜炒虾仁</span>
                            <p class="today_cook">原料：<br />熟米饭500克，白茯苓10克，水发香菇75克，胡萝卜、青菜各50个，鸡蛋1个，盐、味精各适量。<br />制作方法：<br />1． 将虾肉洗净切成薄片，虾片用酱油、料酒、淀粉拌好；油菜梗叶分开，洗净后切成3厘米...

                                <br /><span><a href="today_food.aspx">more</a></span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="xia"">
                <div class ="three">
                    <div class="title_three">
                    <p>
                        <img alt="" src="images/title3.png" class="title_pic" />
                        友情链接
                    </p>                    
                </div>
                    <div class="link_content">
                    <a title="WHO" href="http://www.who.int/en/" target="_blank"><img alt="" src="images/link1.jpg" class="link_pic" /></a>
                    <a title="FAO" href="http://www.fao.org/home/en/" target="_blank"><img alt="" src="images/link2.jpg" class="link_pic"  /></a>
                    <a title="中国科协" href="http://www.cast.org.cn/" target="_blank"><img alt="" src="images/link3.jpg" class="link_pic"  /></a>
                    <a title="中国疾控中心" href="http://www.chinacdc.cn/" target="_blank"><img alt="" src="images/link4.jpg" class="link_pic"  /></a>
                    <a title="卫计委" href="http://www.nhfpc.gov.cn/" target="_blank"><img alt="" src="images/link5.jpg" class="link_pic"  /></a>
                    <a title="中国学生营养与健康促进会" href="http://www.casnhp.org.cn/" target="_blank"><img alt="" src="images/link6.jpg" class="link_pic"  /></a>
                    <a title="农业部" href="http://www.moa.gov.cn/" target="_blank"><img alt="" src="images/link7.jpg" class="link_pic"  /></a>                
                </div>
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
