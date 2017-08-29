<%@ Page Language="C#" AutoEventWireup="true" CodeFile="seafood.aspx.cs" Inherits="seafood" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>鱼虾贝壳篇</title>
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
                    <p style="text-align:right;">当前位置：<a href="food_nutriton.aspx">食物营养</a> > <a href="#">鱼虾贝壳类</a>  </p>
                </div>
                <div class="tab_box">      
                    <div class="tab_menu">
                        <ul>
                        <li> <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument="0" 
                    oncommand="ViewChangeCommand">草鱼</asp:LinkButton></li>
                        <li><asp:LinkButton ID="LinkButton2" runat="server" CommandArgument="1" 
                    oncommand="ViewChangeCommand">鲫鱼</asp:LinkButton></li>
                        <li><asp:LinkButton ID="LinkButton3" runat="server" CommandArgument="2" 
                    oncommand="ViewChangeCommand">河虾</asp:LinkButton></li>
                       <li><asp:LinkButton ID="LinkButton4" runat="server" CommandArgument="3" 
                    oncommand="ViewChangeCommand">扇贝</asp:LinkButton></li>
                       <li><asp:LinkButton ID="LinkButton5" runat="server" CommandArgument="4" 
                    oncommand="ViewChangeCommand">鱿鱼（干）</asp:LinkButton></li>                                                    
                        </ul>
        
                    </div>
                    <div class="foodlist">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <div>                               
                                <img alt="" src="images/caoyu.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>1. 草鱼含有丰富的不饱和脂肪酸，对血液循环有利，是心血管病人的良好食物；</li>
                                        <li>2. 草鱼含有丰富的硒元素，经常食用有抗衰老、养颜的功效，而且对肿瘤也有一定的防治作用；</li>
                                        <li>3. 对于身体瘦弱、食欲不振的人来说，草鱼肉嫩而不腻，可以开胃、滋补。</li>
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>草鱼味甘、性温、无毒，入肝、胃经；</p>
                                        <p>具有暖胃和中、平降肝阳、祛风、治痹、截疟、益肠明眼目之功效；</p>
                                        <p>主治虚劳、风虚头痛、肝阳上亢、高血压、头痛、久疟。</p>
                                        <p>一般人群均可食用</p>
                                        <p>尤其适宜虚劳、风虚头痛、肝阳上亢高血压、头痛、久疟、心血管病人。</p>
                                    </div>

                                </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/jiyu.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>1. 鲫鱼所含的蛋白质质优、齐全、易于消化吸收，是肝肾疾病，心脑血管疾病患者的良好蛋白质来源，常食可增强抗病能力，肝炎、肾炎、高血压、心脏病，慢性支气管炎等疾病患者可经常食用；</li>
                                        <li>2. 鲫鱼有健脾利湿，和中开胃，活血通络、温中下气之功效，对脾胃虚弱、水肿、溃疡、气管炎、哮喘、糖尿病有很好的滋补食疗作用；产后妇女炖食鲫鱼汤，可补虚通乳；</li>
                                        <li>3. 鲫鱼肉嫩味鲜，可做粥、做汤、做菜、做小吃等。尤其适于做汤，鲫鱼汤不但味香汤鲜，而且具有较强的滋补作用，非常适合中老年人和病后虚弱者食用，也特别适合产妇食用。 </li>
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>鲫鱼味甘、性平，入脾、胃、大肠经；具有健脾、开胃、益气、利水、通乳、除湿之功效。</p>
                                        <p>一般人群均可食用</p>
                                        <p>1. 适宜慢性肾炎水肿，肝硬化腹水，营养不良性浮肿之人食用；适宜孕妇产后乳汁缺少之人食用；适宜脾胃虚弱，饮食不香之人食用；适宜小儿麻疹初期，或麻疹透发不快者食用；适宜痔疮出血，慢性久痢者食用；</p>
                                        <p>2. 感冒发热期间不宜多吃。</p>                                                                             
                                    </div>

                                </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/xia.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>1. 虾营养丰富，且其肉质松软，易消化，对身体虚弱以及病后需要调养的人是极好的食物；</li>
                                        <li>2. 虾中含有丰富的镁，镁对心脏活动具有重要的调节作用，能很好的保护心血管系统，它可减少血液中胆固醇含量，防止动脉硬化，同时还能扩张冠状动脉，有利于预防高血压及心肌梗死；</li>
                                        <li>3. 虾的通乳作用较强，并且富含磷、钙、对小儿、孕妇尤有补益功效；</li>
                                        <li>4. 日本大阪大学的科学家最近发现，虾体内的虾青素有助于消除因时差反应而产生的“时差症”。 </li>                                     
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>淡水虾性温味甘、微温，入肝、肾经；</p>
                                        <p>虾肉有补肾壮阳，通乳抗毒、养血固精、化瘀解毒、益气滋阳、通络止痛、开胃化痰等功效；</p>
                                        <p>适宜于肾虚阳痿、遗精早泄、乳汁不通、筋骨疼痛、手足抽搐、全身搔痒、皮肤溃疡、身体虚弱和神经衰弱等病人食用。</p>
                                        <p>一般人群均可食用</p>
                                        <p>1. 中老年人、孕妇、心血管病患者、肾虚阳痿、男性不育症、腰脚瘙弱无力之人更适合食用；同时适宜中老年人缺钙所致的小腿抽筋者食用；</p>
                                        <p>2. 宿疾者、正值上火之时不宜食虾；体质过敏，如患过敏性鼻炎、支气管炎、反复发作性过敏性皮炎的老年人不宜吃虾；另外虾为动风发物，患有皮肤疥癣者忌食。</p>                                                                              
                                    </div>

                                </div>
                                </div>                                
                            </asp:View>
                            <asp:View ID="View4" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/shanbei.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>贝类软体动物中，含一种具有降低血清胆固醇作用的代尔太7-胆固醇和24-亚甲基胆固醇，它们兼有抑制胆固醇在肝脏合成和加速排泄胆固醇的独特作用，从而使体内胆固醇下降。</li>                                       
                                        <li>它们的功效比常用的降胆固醇的药物谷固醇更强。人们在食用贝类食物后，常有一种清爽宜人的感觉，这对解除一些烦恼症状无疑是有益的。</li>                                                
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>一般人群均可食用</p>                                       
                                        <p>1. 适宜高胆固醇、高血脂体质的人以及患有甲状腺肿大、支气管炎、胃病等疾病的人；</p>                                        
                                        <p>2. 许多贝类是发物，有宿疾者应慎食；贝类性多寒凉，故脾胃虚寒者不宜多吃。</p>                                        
                                    </div>

                                </div>
                                </div>
                            </asp:View>
                            <asp:View ID="View5" runat="server">
                                <div class="food_top">                               
                                <img alt="" src="images/youyugan.jpg" class="food_pic"/>
                                <div class="yiyangjiazhi">
                                    <span>营养价值</span>
                                    <ul>
                                        <li>1. 鱿鱼富含钙、磷、铁元素，利于骨骼发育和造血，能有效治疗贫血；</li>
                                        <li>2.鱿鱼除富含蛋白质和人体所需的氨基酸外，鱿鱼还含有大量的牛黄酸，可抑制血液中的胆固醇含量，缓解疲劳，恢复视力，改善肝脏功能；</li>
                                        <li>3. 其所含多肽和硒有抗病毒、抗射线作用。 </li>                                       
                                    </ul>
                                </div>
                                <div class="food_tips">
                                    <span>食物小贴士</span>
                                    <div>
                                        <p>鱿鱼有滋阴养胃、补虚润肤的功能。</p>
                                        <p>一般人群均可食用</p>
                                        <p>脾胃虚寒、高血脂、高胆固醇血症、动脉硬化等心血管病及肝病患者、湿疹、荨麻疹等疾病患者忌食。</p>                                     
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
