<%@ Page Language="C#" AutoEventWireup="true" CodeFile="meat.aspx.cs" Inherits="meat" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>肉类篇</title>
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
                    <p style="text-align:right;">当前位置：<a href="food_nutriton.aspx">食物营养</a> > <a href="#">肉类</a>  </p>
                </div>
                <div class="tab_box">      
                    <div class="tab_menu">
                        <ul>
                        <li> <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument="0" 
                    oncommand="ViewChangeCommand">鸡肉</asp:LinkButton></li>
                        <li><asp:LinkButton ID="LinkButton2" runat="server" CommandArgument="1" 
                    oncommand="ViewChangeCommand">鸭肉</asp:LinkButton></li>
                        <li><asp:LinkButton ID="LinkButton3" runat="server" CommandArgument="2" 
                    oncommand="ViewChangeCommand">鹅肉</asp:LinkButton></li>
                       <li><asp:LinkButton ID="LinkButton4" runat="server" CommandArgument="3" 
                    oncommand="ViewChangeCommand">猪肉</asp:LinkButton></li>
                       <li><asp:LinkButton ID="LinkButton5" runat="server" CommandArgument="4" 
                    oncommand="ViewChangeCommand">牛肉</asp:LinkButton></li>                                                    
                        </ul>
        
                    </div>
                    <div class="foodlist">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <div>                               
                                <img alt="" src="images/jirou.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <p>鸡肉蛋白质含量较高，且易被人体吸收入利用，有增强体力，强壮身体的作用。 </p>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>性平、温、味甘，入脾、胃经；</p>
                                        <p>可温中益气，补精添髓；</p>
                                        <p>一般人群均可食用</p>
                                        <p>用于治疗虚劳瘦弱、中虚食少、泄泻头晕心悸、月经不调、产后乳少、消渴、水肿、小便数频、遗精、耳聋耳鸣等。</p>
                                        <p>常吃鸡肉炒菜花可增强肝脏的解毒功能，提高免疫力，防止感冒和坏血病。</p>
                                        <p>一般人群均可食用，老人、病人、体弱者更宜食用。</p>
                                        <p>1. 感冒发热、内火偏旺、痰湿偏重之人、肥胖症、患有热毒疖肿之人、高血压、血脂偏高、胆囊炎、胆石症的人忌食；</p>
                                        <p>2. 鸡肉性温，助火，肝阳上亢及口腔糜烂、皮肤疖肿、大便秘结者不宜食用；</p>
                                        <p>3. 动脉硬化、冠心病和高血脂患者忌饮鸡汤；感冒伴有头痛、乏力、发热的人忌食鸡肉，鸡汤。 </p>
                                    </div>

                                </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/yarou.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <p>鸭肉中的脂肪酸熔点低，易于消化。所含B族维生素和维生素E较其他肉类多，能有效抵抗脚气病，神经炎和多种炎症，还能抗衰老。鸭肉中含有较为丰富的烟酸，它是构成人体内两种重要辅酶的成分之一，对心肌梗死等心脏疾病患者有保护作用。</p>                                    
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>鸭肉性寒、味甘、咸，归脾、胃、肺、肾经；</p>
                                        <p>可大补虚劳、滋五脏之阴、清虚劳之热、补血行水、养胃生津、止咳自惊、消螺蛳积、清热健脾、虚弱浮肿；</p>
                                        <p>治身体虚弱、病后体虚、营养不良性水肿。</p>
                                        <p>一般人群均可食用</p>
                                        <p>1. 适用于体内有热、上火的人食用；发低热、体质虚弱、食欲不振、大便干燥和水肿的人，食之更佳。同时适宜营养不良，产后病后体虚、盗汗、遗精、妇女月经少、咽干口渴者食用；还适宜癌症患者及放疗化疗后，糖尿病，肝硬化腹水，肺结核，慢性肾炎浮肿者食用；</p>
                                        <p>2. 对于素体虚寒，受凉引起的不思饮食，胃部冷痛．腹泻清稀，腰痛及寒性痛经以及肥胖、动脉硬化、慢性肠炎应少食；感冒患者不宜食用。</p>           
                                    </div>

                                </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/erou.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <p>鹅肉含蛋白质，脂肪，维生素A、B族维生素，烟酸，糖。其中蛋白质的含量很高，同时富含人体必需的多种氨基酸以及多种维生素、微量元素矿物质，并且脂肪含量很低。鹅肉营养丰富，脂肪含量低，不饱和脂肪酸含量高，对人体健康十分有利。</p>                                    
                                    <p>同时鹅肉作为绿色食品于2002年被联合国粮农组织列为21世纪重点发展的绿色食品之一。具有益气补虚、和胃止渴、止咳化痰，解铅毒等作用。适宜身体虚弱、气血不足、营养不良之人食用。还可补虚益气，暖胃生津，凡经常口渴、乏力、气短、食欲不振者，可常喝鹅汤，吃鹅肉，这样既可补充老年糖尿病患者营养，又可控制病情发展，还可治疗和预防咳嗽病症，尤其对治疗感冒和急慢性气管炎、慢性肾炎、老年浮肿；治肺气肿、哮喘痰壅有良效。特别适合在冬季进补。 </p>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>鹅肉性平、味甘；</p>
                                        <p>具有益气补虚、和胃止渴、止咳化痰，解铅毒等作用。</p>
                                        <p>可补虚益气，暖胃生津。</p>
                                        <p>而鹅血、鹅胆、鹅肫等制成的鹅血片、鹅血清、胆红素、去氧鹅胆酸芋药品，可用于癌症、胆结石等疾病的治疗。</p>       
                                        <p>一般人群均可食用</p> 
                                        <p>1. 尤其适宜身体虚弱、气血不足、营养不良之人食用，凡经常口渴、乏力、气短、食欲不振者，可常喝鹅汤，吃鹅肉，对治疗感冒和急慢性气管炎、慢性肾炎、老年浮肿、肺气肿、哮喘痰壅等有良效，特别适合在冬季进补；</p> 
                                        <p>2. 皮肤疮毒、瘙痒症者、痼疾者忌食，高血压病、血脂血症、动脉硬化之人忌食。</p>                                             
                                    </div>
                                </div>
                                </div>                                
                            </asp:View>
                            <asp:View ID="View4" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/zhurou.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <p>猪肉为人类提供优质蛋白质和必需的脂肪酸。猪肉可提供血红素（有机铁）和促进铁吸收的半胱氨酸，能改善缺铁性贫血。 </p>                                    
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>味甘咸、性平，入脾、胃、肾经；</p>
                                        <p>具有补肾养血，滋阴润燥之功效；</p>
                                        <p>主治热病伤津、消渴羸瘦、肾虚体弱、产后血虚、燥咳、便秘、补虚、滋阴、润燥、滋肝阴，润肌肤，利二便和止消渴。</p>
                                        <p>猪肉煮汤饮下可急补由于津液不足引起的烦燥、干咳、便秘和难产。</p>
                                        <p>一般人群均可食用</p>                                       
                                        <p>1. 适宜阴虚不足，头晕，贫血，老人燥咳无痰，大便干结，以及营养不良者食用；</p>                                        
                                        <p>2. 对湿热偏重、痰湿偏盛，舌苔厚腻之人，忌食猪肉。</p>                                        
                                    </div>

                                </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View5" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/niurou.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>1. 牛肉富含蛋白质，氨基酸组成比猪肉更接近人体需要，能提高机体抗病能力，对生长发育及术后，病后调养的人在补充失血、修复组织等方面特别适宜，寒冬食牛肉可暖胃，是该季节的补益佳品；</li>
                                        <li>2. 牛肉有补中益气，滋养脾胃，强健筋骨，化痰息风，止渴止涎之功效，适宜于中气下隐、气短体虚、筋骨酸软、贫血久病及面黄目眩之人食用；</li>
                                        <li>3. 水牛肉能安胎补神，黄牛肉能安中益气、健脾养胃、强筋壮骨。 </li>                        
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>味甘、性平，归脾、胃经；</p>
                                        <p>牛肉具有补脾胃、益气血、强筋骨、消水肿等功效。</p>
                                        <p>老年人将牛肉与仙人掌同食，可起到抗癌止痛、提高机体免疫功能的效果；</p>
                                        <p>牛肉加红枣炖服，则有助肌肉生长和促伤口愈合之功效。</p>
                                        <p>一般人群均可食用</p>                                       
                                        <p>1. 适宜于生长发育、术后、病后调养的人、中气下隐、气短体虚、筋骨酸软、贫血久病及黄目眩之人食用；</p>                                        
                                        <p>2. 感染性疾病、肝病、肾病的人慎食；黄牛肉为发物，患疮疥湿疹、痘痧、瘙痒者慎用。</p>                                        
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
