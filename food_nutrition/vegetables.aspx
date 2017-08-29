<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vegetables.aspx.cs" Inherits="vegetables" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>蔬菜篇</title>
    <link href="css/layout.css" rel="stylesheet" type="text/css"/>
    <link href="css/multiviewcss.css" rel="stylesheet" type="text/css"/>
</head>
<body>
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
                <img alt="" src="images/foodNutriton_banner.png" id="pic" style="border:0px;"/>               
            </div>
        </div>
        <div id="content1">
            <div class="food_left">
                <asp:TreeView ID="TreeView1" runat="server">
                    <Nodes>
                        <asp:TreeNode NavigateUrl="~/fruit.aspx" Text="水果类" Value="水果类">
                        </asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/meat.aspx" Text="肉类" Value="肉类"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/vegetables.aspx" Text="蔬菜类" Value="蔬菜类">
                        </asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/seafood.aspx" Text="鱼虾贝壳类" Value="鱼虾贝壳类"></asp:TreeNode>
                    </Nodes>
                    <NodeStyle CssClass="menu" />
                </asp:TreeView>
            </div>
            <div class="food_right">
                <div class="read_title"><span >食物营养</span>
                    <p style="text-align:right;">当前位置：<a href="food_nutriton.aspx">食物营养</a> > <a href="#">蔬菜类</a>  </p>
                </div>
                <div class="tab_box">      
                    <div class="tab_menu">
                        <ul>
                        <li> <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument="0" 
                    oncommand="ViewChangeCommand">黄瓜</asp:LinkButton></li>
                        <li><asp:LinkButton ID="LinkButton2" runat="server" CommandArgument="1" 
                    oncommand="ViewChangeCommand">大白菜</asp:LinkButton></li>
                        <li><asp:LinkButton ID="LinkButton3" runat="server" CommandArgument="2" 
                    oncommand="ViewChangeCommand">茄子</asp:LinkButton></li>
                       <li><asp:LinkButton ID="LinkButton4" runat="server" CommandArgument="3" 
                    oncommand="ViewChangeCommand">西红柿</asp:LinkButton></li>
                       <li><asp:LinkButton ID="LinkButton5" runat="server" CommandArgument="4" 
                    oncommand="ViewChangeCommand">西兰花</asp:LinkButton></li>                                                    
                        </ul>
        
                    </div>
                    <div class="foodlist">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <div>                               
                                <img alt="" src="images/huanggua.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>1. 抗肿瘤：</li>
                                        <li>黄瓜中含有的葫芦素C具有提高人体免疫功能的作用，可达到抗肿瘤的目的。此外，该物质还可治疗慢性肝炎；</li>
                                        <li>2. 抗衰老：</li>
                                        <li>老黄瓜中含有丰富的维生素E，可起到延年益寿、抗衰老的作用；黄瓜中的黄瓜酶，有很强的生物活性，能有效地促进机体的新陈代谢。用黄瓜捣汁涂擦皮肤，有润肤，舒展皱纹的功效；</li>
                                        <li>3. 防酒精中毒：</li>
                                        <li>黄瓜中所含的丙氨酸、精氨酸和谷胺酰胺对肝脏病人，特别是对酒精肝硬化患者有一定辅助治疗作用，可防酒精中毒；</li>
                                        <li>4. 降血糖：</li>
                                        <li>黄瓜中所含的葡萄糖甙、果糖等不参与通常的糖代谢，故糖尿病人及黄瓜代替淀粉类食物充饥，血糖非但不会升高，甚至会降低；</li>
                                        <li>5. 减肥强体：</li>
                                        <li>黄瓜中所含的丙醇二酸，可抑制糖类物质转变为脂肪。此外，黄瓜中的纤维素对促进人体肠道内腐败物质的排除，以及降低胆固醇有一定作用，能强身健体；</li>
                                        <li>6. 健脑安神</li>
                                        <li>黄瓜含有丰富的B族维生素，对改善大脑和神系统功能有利，能安神定志，辅助治疗失眠症。</li>
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>黄瓜味甘、性凉、苦、无毒，入脾、胃、大肠经；</p>
                                        <p>可清热利尿；</p>
                                        <p>主治除热，利水，解毒。治烦渴，咽喉肿痛，火眼，汤火伤。</p>
                                        <p>一般人群均可食用</p>
                                        <p>1. 适宜热病患者、肥胖、高血压、高血脂、水肿、癌症、嗜酒者多食；并且是糖尿病人首选的食品之一；</p>                                       
                                        <p>2. 但是脾胃虚弱、腹痛腹泻、肺寒咳嗽者都应少吃，因黄瓜性凉，胃寒患者食之易致腹痛泄泻。</p>
                                    </div>

                                </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/dabaicai.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>1. 白菜含有90%以上的纤维素。纤维素被现代营养学家称为“第七营养素”，不但能起到润肠、促进排毒的作用又刺激肠胃蠕动，促进大便排泄，帮助消化的功能。对预防肠癌有良好作用。纤维素的另一重要作用，就是能促进人体对动物蛋白质的吸收。</li>
                                        <li>2. 秋冬季节空气特别干燥，寒风对人的皮肤伤害极大。白菜中含有丰富的维生素C、维生素E，多吃白菜，可以起到很好的护肤和养颜效果。</li>
                                        <li>3. 美国纽约激素研究所的科学家发现，中国和日本妇女乳腺癌发病率之所以比西方妇女低得多，是由于她们常吃白菜的缘故。白菜中有一些微量元素，它们能帮助分解同乳腺癌相联系的雌激素。</li>           
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>白菜微寒、味甘、性平，归肠、胃经。</p>
                                        <p>有解热除烦、通利肠胃、养胃生津、除烦解渴、利尿通便、清热解毒；</p>
                                        <p>可用于肺热咳嗽、便秘、丹毒、漆疮。</p>
                                        <p>一般人群均可食用</p>
                                        <p>1. 特别适合肺热咳嗽、便秘、肾病患者多食，同时女性也应该多吃；</p>
                                        <p>2. 大白菜性偏寒凉，胃寒腹痛、大便溏泻及寒痢者不可多食。</p> 
                                    </div>

                                </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/qiezi.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>1. 保护心血管、抗坏血病：茄子含丰富的维生素P，这种物质能增强人体细胞间的粘着力，增强毛细血管的弹性，减低毛细血管的脆性及渗透性，防止微血管破裂出血，使心血管保持正常的功能。此外，茄子还有防治坏血病及促进伤品愈合的功效；</li>
                                        <li>2. 防治胃癌：茄子含有龙葵碱，能抑制消化系统肿瘤的增殖，对于防治胃癌有一定效果。此外，茄子还有清退癌热的作用；</li>
                                        <li>3. 抗衰老：茄子含有维生素E，有防止出血和抗衰老功能，常吃茄子，可使血液中胆固醇水平不致增高，对延缓人体衰老具有积极的意义。</li>           
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>味甘、性凉，入脾、胃、大肠经；</p>
                                        <p>可清热止血，消肿止痛；</p>
                                        <p>用于热毒痈疮、皮肤溃疡、口舌生疮、痔疮下血、便血、衄血等。</p>
                                        <p>中医学认为，茄子属于寒凉性质的食物。所以夏天食用，有助于清热解暑，对于容易长痱子、生疮疖的人，尤为适宜。消化不良、容易腹泻的人，则不宜多食，正如李时珍在《本草纲目》中所说：“茄性寒利，多食必腹痛下利。”</p>
                                        <p>一般人群均可食用</p>               
                                        <p>1. 可清热解暑，对于容易长痱子、生疮疖的人，尤为适宜；</p> 
                                        <p>2. 脾胃虚寒、哮喘者不宜多吃；体弱、便溏者不宜多食；手术前吃茄子，麻醉剂可能无法被正常地分解，会拖延病人苏醒时间，影响病人康复速度。</p>                                              
                                    </div>

                                </div>
                                </div>                                
                            </asp:View>
                            <asp:View ID="View4" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/xihongshi.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>番茄含有对心血管具有保护作用的维生素和矿物质元素，能减少心脏病的发作。</li>
                                        <li>番茄红素具有独特的抗氧化能力，能清除自由基，保护细胞，使脱氧核酸及基因免遭破坏，能阻止癌变进程。西红柿除了对前列腺癌有预防作用外，还能有效减少胰腺癌、直肠癌、喉癌、口腔癌、肺癌、乳腺癌等癌症的发病危险。</li>
                                        <li>番茄中的维C，有生津止渴，健胃消食，凉血平肝，清热解毒，降低血压之功效，对高血压、肾脏病人有良好的辅助治疗作用。多吃番茄具有抗衰老作用，使皮肤保持白皙。</li>
                                        <li>尼克酸能维持胃液的正常分泌，促进红血球的形成，有利于保持血管壁的弹性和保护皮肤。所以食用西红柿对防治动脉硬化、高血压和冠心病也有帮助。西红柿多汁，可以利尿，肾炎病人也宜食用。</li>
                                        <li>经常发生牙龈出血或皮下出血的患者，吃番茄有助于改善症状。</li>
                                        <li>番茄所含的苹果酸或柠檬酸，有助于胃液对脂肪及蛋白质的消化。</li>                          
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>西红柿性平、味甘、酸、微寒，归肝、胃、肺经；</p>
                                        <p>具有健胃消食，清热解毒，凉血平肝，生津止渴，补血养血和增进食欲的功效；</p>
                                        <p>可治口渴，食欲不振。</p>
                                        <p>一般人群均可食用。</p>
                                        <p>1. 适宜于热性病发热、口渴、食欲不振、习惯性牙龈出血、贫血、头晕、心悸、高血压、急慢性肝炎、急慢性肾炎、夜盲症和近视眼者食用； </p>
                                        <p>2. 急性肠炎、菌痢及溃疡活动期病人不宜食用。</p>                                       
                                    </div>

                                </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View5" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/xilanhua.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>1. 西兰花可能最显著的就是具有防癌抗癌的功效，菜花含维生素C较多，比大白菜、番茄、芹菜都高，尤其是在防治胃癌、乳腺癌方面效果尤佳。</li>
                                        <li>2.研究表明，患胃癌时人体血清硒的水平明显下降，胃液中的维C浓度也显著低于正常人，而菜花不但能给人补充一定量的硒和维C，同时也能供给丰富的胡萝卜素，起到阻止癌前病变细胞形成的作用，抑制癌肿生长。据美国营养学家研究，菜花内还有多种吲哚衍生物，此化合物有降低人体内雌激素水平的作用，可预防乳腺癌的发生。</li> 
                                        <li>3.花中提取的一种酶能预防癌症，这种物质叫萝卜子素，有提高致癌物解毒酶活性的作用。</li> 
                                        <li>4.另外西兰花还有增强机体免疫功能，菜花的维生素C含量极高，不但有利于人的生长发育，更重要的是能提高人体免疫功能，促进肝脏解毒，增强人的体质，增加抗病能力。</li>                                                                                      
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>一般人群均可食用</p>                               
                                    </div>
                                </div>
                                </div>
                            </asp:View>
                        </asp:MultiView>                      
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
