<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fruit.aspx.cs" Inherits="fruit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>水果篇</title>
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
                    <p style="text-align:right;">当前位置：<a href="food_nutriton.aspx">食物营养</a> > <a href="#">水果类</a>  </p>
                </div>
                <div class="tab_box">      
                    <div class="tab_menu">
                        <ul>
                        <li> <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument="0" 
                    oncommand="ViewChangeCommand">苹果</asp:LinkButton></li>
                        <li><asp:LinkButton ID="LinkButton2" runat="server" CommandArgument="1" 
                    oncommand="ViewChangeCommand">梨</asp:LinkButton></li>
                        <li><asp:LinkButton ID="LinkButton3" runat="server" CommandArgument="2" 
                    oncommand="ViewChangeCommand">香蕉</asp:LinkButton></li>
                       <li><asp:LinkButton ID="LinkButton4" runat="server" CommandArgument="3" 
                    oncommand="ViewChangeCommand">橙子</asp:LinkButton></li>
                       <li><asp:LinkButton ID="LinkButton5" runat="server" CommandArgument="4" 
                    oncommand="ViewChangeCommand">葡萄</asp:LinkButton></li>                                                    
                        </ul>
        
                    </div>
                    <div class="foodlist">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <div>                               
                                <img alt="" src="images/pingguo.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>1. 苹果中的胶质和微量元素铬能保持血糖的稳定，还能有效地降低胆固醇；</li>
                                        <li>2. 在空气污染的环境中，多吃苹果可改善呼吸系统和肺功能，保护肺部免受污染和烟尘的影响；</li>
                                        <li>3. 苹果中含的多酚及黄酮类天然化学抗氧化物质，可以减少肺癌的危险，预防铅中毒；</li>
                                        <li>4. 苹果特有的香味可以缓解压力过大造成的不良情绪，还有提神醒脑的功效；</li>
                                        <li>5. 苹果中富含粗纤维，可促进肠胃蠕动，协助人体顺利排出废物，减少有害物质对皮肤的危害；</li>
                                        <li>6. 苹果中含有大量的镁、硫、铁，铜、碘、锰、锌等微量元素，可使皮肤腻、润滑、红润有光泽。</li>
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>苹果味甘，性凉；</p>
                                        <p>具有生津止渴、润肺除烦、健脾益胃、养心益气、润肠、止泻、解暑、醒酒等功效。</p>
                                        <p>一般人群均可食用</p>
                                        <p>1. 慢性胃炎、消化不良、气滞不通者，便秘、慢性腹泻、神经性结肠炎，高血压、膏血脂和肥胖患者，癌症患者、贫血和维生素缺乏者尤其适合。准妈妈每天吃个苹果可以减轻孕期反应；</p>
                                        <p>2. 肾炎和糖尿病患者不宜多吃。</p>
                                    </div>

                                </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/li.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>1. 梨中含有丰富的B族维生素，能保护心脏，减轻疲劳，增强心肌活力，降低血压；</li>
                                        <li>2. 梨所含的配糖体及鞣酸等成分，能祛痰止咳，对咽喉有养护作用；</li>
                                        <li>3. 梨有较多糖类物质和多种维生素，易被人体吸收，增进食欲，对肝脏具有保护作用；</li>
                                        <li>4. 梨性凉并能清热镇静，常食能使血压恢复正常，改善头晕目眩等症状；</li>
                                        <li>5. 食梨能防止动脉粥样硬化，抑制致癌物质亚硝胺的形成，从而防癌抗癌；</li>
                                        <li>6. 梨中的果胶含量很高，有助于消化、通利大便。</li>
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>味甘微酸、性凉，入肺、胃经；</p>
                                        <p>具有生津，润燥，清热，化痰，解酒的作用；</p>
                                        <p>用于热病伤阴或阴虚所致的干咳、口渴、便秘等症，也可用于内热所致的烦渴、咳喘、痰黄等症。</p>
                                        <p>一般人群均可食用</p>
                                        <p>1. 缺乏维生素C及血钾偏低者宜食用；</p>
                                        <p>2. 酸性体质之人或食用酸性食品时，食用梨可调节酸碱平衡；</p> 
                                        <p>3. 有喉咙发痒干痛、音哑、或有急慢性支气管炎等症者均宜食用；</p> 
                                        <p>4. 慢性支气管炎、肺结核患者，高血压、心脏病、肝炎、肝硬化患者，饮酒后或宿醉未醒者尤其适合；</p> 
                                        <p>5. 梨性凉，故脾虚胃寒、慢性肠炎、寒痰咳嗽或外感风寒咳嗽及拉肚子的人忌食；</p> 
                                        <p>6. 慢性肠炎、胃寒病、糖尿病患者忌食生梨；</p> 
                                        <p>7. 孕妇在生产后以及女性月经来潮期间，或有寒性痛经者忌食生梨。</p> 
                                    </div>

                                </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/xiangjiao.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>1. 香蕉含有大量糖类物质及其他营养成分，可充饥、补充营养及能量；</li>
                                        <li>2. 香蕉性寒能清肠热，味甘能润肠通便，可治疗热病烦渴等症；</li>
                                        <li>3. 香蕉能缓和胃酸的刺激，保护胃黏膜；</li>
                                        <li>4. 香蕉中含血管紧张素转化酶抑制物质，可以抑制血压的升高；</li>
                                        <li>5. 香蕉果肉甲醇提取物对细菌、真菌有抑制作用，可消炎解毒；</li>
                                        <li>6. 香蕉中大量的碳水化合物、膳食纤维等可以防癌抗癌。</li>
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>香蕉味甘、性寒，入肺、大肠经；</p>
                                        <p>具有清热，生津止渴，润肺滑肠的功效；</p>
                                        <p>主治温热病、口烦渴、大便秘结、痔疮出血等症。</p>
                                        <p>一般人群均可食用</p>
                                        <p>1. 尤其适合口干烦躁、咽干喉痛者，大便干燥、痔疮、大便带血者，上消化道溃疡者，饮酒过量而宿醉未解者，高血压、冠心病、动脉硬化者；</p>
                                        <p>2. 癌症病人及放疗、化疗后宜食；</p> 
                                        <p>3. 脾胃虚寒、便溏腹泻者不宜多食、生食，胃酸过的多者不可食用，急慢性肾炎及肾功能不全者忌食。</p> 
                                        <p>4. 慢性支气管炎、肺结核患者，高血压、心脏病、肝炎、肝硬化患者，饮酒后或宿醉未醒者尤其适合；</p> 
                                        <p>4. 关节炎或肌肉痛患者忌食；</p> 
                                        <p>5. 忌空腹时大量食用香蕉。</p>                                        
                                    </div>

                                </div>
                                </div>                                
                            </asp:View>
                            <asp:View ID="View4" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/chengzi.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>1. 橙子含有大量维生素C和胡萝卜素，可以抑制致癌物质的形成，还能软化和保护血管，促进血液循环，降低胆固醇和血脂；</li>
                                        <li>2. 研究显示，每天喝3杯橙汁可以增加体内高密度脂蛋白(HDL)的含量，从而降低患心脏病的可能,橙汁内含有一种特定的化学成分即类黄酮和柠檬素，可以促进HDL增加，并运送低密度脂蛋白(LDL)到体外；</li>
                                        <li>3. 经常食用橙子对预防胆囊疾病有效；</li>
                                        <li>4. 橙子发出的气味有利于缓解人们的心理压力，但仅有助于女性克服紧张情绪，对男性的作用却不大。</li>              
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>橙性凉、味甘酸；</p>
                                        <p>具有生津止渴，帮助消化，和胃止痛等功效。</p>
                                        <p>主治温热病、口烦渴、大便秘结、痔疮出血等症。</p>
                                        <p>一般人群均可食用</p>                                       
                                        <p>1. 胸膈满闷、恶心欲吐者，饮酒过多、宿醉未醒者尤宜食用；</p>                                        
                                        <p>2. 糖尿病患者忌食。</p>                                        
                                    </div>

                                </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View5" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/putao.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>1.葡萄中的糖主要是葡萄糖，能很快的被人体吸收。当人体出现低血糖时，若及时饮用葡萄汁，可很快使症状缓解；</li>
                                        <li>2.法国科学家研究发现，葡萄能比阿斯匹林更好地阻止血栓形成，并且能降低人体血清胆固醇水平，降低血小板的凝聚力，对预防心脑血管病有一定作用；</li>
                                        <li>3.葡萄中含的类黄酮是一种强力抗氧化剂，可抗衰老，并可清除体内自由基；</li>
                                        <li>4.葡萄中含有一种抗癌微量元素，可以防止健康细胞癌变，阻止癌细胞扩散。葡萄汁可以帮助器官植手术患者减少排异反应，促进早日康复。</li>              
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>葡萄性平、味甘酸，入肺、脾、肾经；</p>
                                        <p>有补气血、益肝肾、生津液、强筋骨、止咳除烦、补益气血、通利小便的功效；</p>
                                        <p>主治气血虚弱、肺虚咳嗽、心悸盗汗、风湿痹痛、淋症、浮肿等症，也可用于脾虚气弱、气短乏力、水肿、小便不利等病症的辅助治疗。</p>
                                        <p>一般人群均可食用</p>                                       
                                        <p>1. 肾炎、高血压、水肿患者，儿童、孕妇、贫血患者，神经衰弱、过度疲劳、体倦乏力、未老先衰者，肺虚咳嗽、盗汗者，风湿性关节炎、四肢筋骨疼痛者，癌症患者尤其适合食用；</p>                                        
                                        <p>2. 糖尿病患者，便秘者不宜多吃；脾胃虚寒者不宜多食，多食则令人泄泻。</p>                                        
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
