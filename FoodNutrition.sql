SET NOCOUNT ON
GO
USE [master]
GO
if exists (select * from sysdatabases where name='FoodNutrition')
		drop database FoodNutrition
go

DECLARE @device_directory NVARCHAR(520)
SELECT @device_directory = SUBSTRING(filename, 1, CHARINDEX(N'master.mdf', LOWER(filename)) - 1)
FROM master.dbo.sysaltfiles WHERE dbid = 1 AND fileid = 1

EXECUTE (N'CREATE DATABASE FoodNutrition
  ON PRIMARY (NAME = N''FoodNutrition'', FILENAME = N''' + @device_directory + N'FoodNutrition.mdf'')
  LOG ON (NAME = N''FoodNutrition_log'',  FILENAME = N''' + @device_directory + N'FoodNutrition.ldf'')')
go

exec sp_dboption 'FoodNutrition','trunc. log on chkpt.','true'
exec sp_dboption 'FoodNutrition','select into/bulkcopy','true'
GO

set quoted_identifier on
GO
/****** Object:  Database [FoodNutrition]    Script Date: 11/30/2016 08:26:30 ******/

USE [FoodNutrition]
GO
/****** Object:  Table [dbo].[users]    Script Date: 11/30/2016 08:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](10) NULL,
	[password] [nvarchar](10) NULL,
	[sex] [nvarchar](2) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](20) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[users] ON
INSERT [dbo].[users] ([userid], [username], [password], [sex], [email], [phone]) VALUES (1, N'xing', N'123456', N'女', N'aa@163.com', N'87705771')
INSERT [dbo].[users] ([userid], [username], [password], [sex], [email], [phone]) VALUES (2, N'xingjd', N'123456', N'女', N'aa@163.com', N'87705771')
INSERT [dbo].[users] ([userid], [username], [password], [sex], [email], [phone]) VALUES (3, N'aaa', N'aa', NULL, NULL, NULL)
INSERT [dbo].[users] ([userid], [username], [password], [sex], [email], [phone]) VALUES (5, N'aab', N'aabbcc', NULL, NULL, NULL)
INSERT [dbo].[users] ([userid], [username], [password], [sex], [email], [phone]) VALUES (6, N'bb', N'bbbb', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[users] OFF
/****** Object:  Table [dbo].[type]    Script Date: 11/30/2016 08:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[typeid] [int] IDENTITY(1,1) NOT NULL,
	[typename] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_type] PRIMARY KEY CLUSTERED 
(
	[typeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[type] ON
INSERT [dbo].[type] ([typeid], [typename]) VALUES (1, N'膳食指南')
INSERT [dbo].[type] ([typeid], [typename]) VALUES (2, N'新闻资讯')
SET IDENTITY_INSERT [dbo].[type] OFF
/****** Object:  Table [dbo].[admin]    Script Date: 11/30/2016 08:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[adminid] [int] IDENTITY(1,1) NOT NULL,
	[adminName] [nvarchar](50) NULL,
	[adminPassword] [nvarchar](50) NULL,
	[adminEmaill] [nvarchar](50) NULL,
	[anquantishi] [nvarchar](100) NULL,
	[anquandaan] [nvarchar](100) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[adminid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON
INSERT [dbo].[admin] ([adminid], [adminName], [adminPassword], [adminEmaill], [anquantishi], [anquandaan]) VALUES (1, N'QingXing', N'1538113', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[admin] OFF
/****** Object:  Table [dbo].[files]    Script Date: 11/30/2016 08:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[files](
	[fileid] [int] IDENTITY(1,1) NOT NULL,
	[filename] [nvarchar](50) NULL,
	[typeid] [int] NULL,
	[filecontent] [nvarchar](max) NULL,
	[publisher] [nvarchar](50) NULL,
	[publishdate] [datetime] NULL,
	[visitnum] [int] NULL,
 CONSTRAINT [PK_files] PRIMARY KEY CLUSTERED 
(
	[fileid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[files] ON
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (1, N'学龄儿童膳食指南核心信息', 1, N'<div class="filecontent">
<p><strong>作者：</strong>马冠生<br/><span>《中国居民膳食指南（2016）》修订专家委员会委员、中国营养学会副理事长</span></P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;学龄儿童是指从6岁到不满18岁的未成年人。他们处于学习阶段，生长发育迅速，对能量和营养素的需要相对高于成年人。均衡的营养是儿童智力和体格正常发育、乃至一生健康的基础。这一时期也是饮食行为和生活方式形成的关键时期，家庭、学校和社会要积极开展饮食教育。学龄儿童膳食指南在一般人群膳食指南的基础上，补充以下核心信息。 </p>
<p class="pic_center"><img border="0" alt="" src="images/children1.jpg"/></P>
<p class="pic_source">图片来源于网络</P>
<p><strong>了解食物，学习烹饪，提高营养科学素养</strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;儿童期是学习营养健康知识、养成健康生活方式、提高营养健康素养的关键时期。他们不仅要认识食物、参与食物的选择和烹调，养成健康的饮食行为，更要积极学习营养健康知识，传承我国优秀饮食文化和礼仪，提高营养健康素养。家庭、学校和社会要共同努力，开展儿童少年的饮食教育。家长要将营养健康知识融入儿童少年的日常生活；学校可以开设符合儿童少年特点的营养与健康教育相关课程，营造校园营养环境。 </p>
<p><strong>三餐合理，规律进餐，培养良好饮食习惯 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;儿童应做到一日三餐，包括适量的谷薯类、蔬菜、水果、禽畜鱼蛋、豆类坚果，以及充足的奶制品。两餐间隔4～6小时，三餐定时定量。早餐提供的能量应占全天总能量的25%～30%、午餐占30%～40%、晚餐占30%～35%。要每天吃早餐，保证早餐的营养充足，早餐应包括谷薯类、禽畜肉蛋类、奶类或豆类及其制品和新鲜蔬菜水果等食物。三餐不能用糕点、甜食或零食代替。做到清淡饮食，少吃含高盐、高糖和高脂肪的快餐。</p>
<p><strong>合理选择零食，禁止饮酒，多饮水少喝含糖饮料 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;零食是指一日三餐以外吃的所有食物和饮料，不包括水，儿童可选择卫生、营养丰富的食物作为零食，如水果和能生吃的新鲜蔬菜、奶制品、大豆及其制品或坚果。油炸、高盐或高糖的食品不宜做零食。要保障充足饮水，每天800～1400ml，首选白开水，不喝或少喝含糖饮料，更不能饮酒。 </p>
<p><strong>不偏食节食不暴饮暴食，保持适宜体重增长</strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;儿童应做到不偏食挑食、不暴饮暴食，正确认识自己的体型，保证适宜的体重增长。营养不良的儿童，要在吃饱的基础上，增加鱼禽蛋肉、或豆制品等富含优质蛋白质食物的摄入。超重肥胖会损害儿童的体格和心理健康，要通过合理膳食和积极的身体活动预防超重肥胖。对于已经超重肥胖的儿童，应在保证体重合理增长的基础上，控制总能量摄入，逐步增加运动频率和运动强度。 </p>
<p><strong>增加户外活动，保证每天活动60分钟 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;有规律的运动、充足的睡眠与减少静坐时间可促进儿童生长发育、预防超重肥胖的发生，并能提高他们的学习效率。儿童少年要增加户外活动时间，做到每天累计至少60分钟中等强度以上的身体活动，其中每周至少3次高强度的身体活动（包括抗阻力运动和骨质增强型运动）；视屏时间每天不超过2小时，越少越好。 </p>
</div>', N'马冠生', CAST(0x0000A61800000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (2, N'老年人膳食指南的要点和操作指导', 1, N'<div class="filecontent">
<p><strong>作者：</strong>孙建琴教授<br/><span>《中国居民膳食指南（2016）》修订专家委员会委员、中国营养学会老年营养分会副主任委员、复旦大学附属华东医院临床营养中心主任</span> </P>
<p><strong>随着年龄增加，老年人器官功能可出现不同程度的衰退</strong></p>
<p>1、牙齿缺损、咀嚼和消化吸收能力下降。</p>
<p>2、视觉和听觉及味觉等感官反应迟顿、常常无法反映身体对食物、水的真实需求。</p>
<p>3、肌肉萎缩、瘦体组织量减少、体脂肪量增加；加上骨量丢失、关节及神经系统退行性病变等问题，使得老年人身体活动能力减弱，对能量、营养素的需求发生改变。 </p>
<p>4、老年人既容易发生营养不良、贫血、肌肉衰减、骨质疏松等与营养缺乏和代谢相关的疾病，又是心血管疾病、糖尿病、高血压等慢性病的高发人群。很多人多病共存，长期服用多种药物，很容易造成食欲不振，影响营养素吸收，加重营养失衡状况。 </p>
<p class="pic_center"><img border="0" alt="" src="images/oldMan.jpg"/></P>
<p class="pic_source">图片来源于网络</P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;因此针对这些问题对老年人膳食提出指导很有必要。一般人群膳食指南的内容也适合于老年人，此外，应用近年来老年营养领域的新理念和新技术，补充了适应老年人特点的膳食指导内容，目的是帮助老年人更好地适应身体机能的改变，努力做到合理膳食、均衡营养，减少和延缓疾病的发生和发展，延长健康的生命时间，促进在中国实现成功老龄化。 </p>
<p><strong>关键推荐</strong></p>
<p><strong>1.少量多餐细软、预防营养缺乏。</strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;食物多样，制作细软，少量多餐、预防营养缺乏。不少老年人牙齿缺损，消化液分泌和胃肠蠕动减弱，容易出现食欲下降和早饱现象，造成食物摄入量不足和营养素缺乏，因此老年人膳食更应注意合理设计、精准营养。对于高龄老人和身体虚弱以及体重出现明显下降的老人，应特别要注意增加餐次，除三餐外可增加两到三次加餐，保证充足的食物摄入。食量小的老年人，应注意在餐前和餐时少喝汤水，少吃汤泡饭。对于有吞咽障碍和80岁以上老人，可选择软食、进食中要细嚼慢咽、预防呛咳和误吸；对于贫血，钙和维生素D、维生素A等营养缺乏的老年人，建议在营养师和医生的指导下，选择适合自己的营养强化食品。</p>
<p><strong>2.主动足量饮水，积极户外活动。</strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;老年人身体对缺水的耐受性下降，要主动饮水，每天的饮水量达到1500ml～1700ml，首选温热的白开水。户外活动能够更好地接受紫外光照射，有利于体内维生素D合成和延缓骨质疏松的发展。一般认为老年人每天户外锻炼1~2次，每次1小时左右，以轻微出汗为宜；或每天至少六千步。 注意每次运动要量力而行，强度不要过大，运动持续时间不要过长，可以分多次运动。 </p>
<p><strong>3.延缓肌肉衰减；维持适宜体重。</strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;骨骼肌肉是身体的重要组成部分，延缓肌肉衰减对维持老年人活动能力和健康状况极为重要。延缓肌肉衰减的有效方法是吃动结合，一方面要增加摄入富含优质蛋白质的瘦肉、海鱼、豆类等食物，另一面要进行有氧运动和适当的抗阻运动。老年人体重应维持在正常稳定水平，不应过度苛求减重，体重过高或过低都会影响健康。从降低营养不良风险和死亡风险的角度考虑，70岁以上的老年人的BMI应不低于20kg/m2为好。血脂等指标正常的情况下，BMI上线值可略放宽到26kg/m2。</p>
<p><strong>4.摄入充足食物；鼓励陪伴进餐。 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;老年人每天应至少摄入12种及其以上的食物。采用多种方法增加食欲和进食量，吃好三餐。早餐宜有1-2种以上主食、1个鸡蛋、1杯奶、另有蔬菜或水果。中餐、晚餐宜有2种以上主食，1-2个荤菜、1-2种蔬菜、1个豆制品。饭菜应色香味美、温度适宜。老年人应积极主动参与家庭和社会活动，主动与家人或朋友一起进餐或活动，积极快乐享受生活。适当参与食物的准备与烹饪，通过变换烹饪方法和食物的花色品种，烹制自己喜爱的食物，提升进食的乐趣，享受家庭喜悦和情亲快乐。对于孤寡、独居老年人，建议多结交朋友，或者去集体用餐地点（社区老年食堂或助餐点、托老所用餐）， 增进交流，促进食欲，摄入更多丰富食物。 对于生活自理有困难的老年人，家人应多陪伴，、采用辅助用餐、送餐上门等方法，保障食物摄入和营养状况。家人应对老年人更加关心照顾，陪伴交流，注意饮食和体重变化，及时发现和预防疾病的发生和发展。 </p>
</div>', N'孙建琴 ', CAST(0x0000A61A00000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (3, N'新版膳食指南（三）：食物多样，谷类为主', 1, N'<div class="filecontent">
<p><strong>作者：</strong>杨晓光<br/><span>《中国居民膳食指南（2016）》修订专家委员会副主任委员、中国疾控中心营养所 教授</span></P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;食物多样是平衡膳食模式的基本原则。谷物为主是平衡膳食的基础,谷类食物含有丰富的碳水化合物，它是提供人体所需能量的最经济、最重要的食物来源。 </p>
<p><strong>关键推荐 </strong></p>
<p>1、每天的膳食应包括谷薯类、蔬菜水果类、畜禽鱼蛋奶类、大豆坚果类等食物。 </p>
<p>2、平均每天摄入12种以上食物，每周25种以上。 </p>
<p>3、每天摄入谷薯类食物250～400g，其中全谷物和杂豆类50～150g，薯类50～100g。</p>
<p>4、食物多样、谷类为主是平衡膳食模式的重要特征。</p>
<p class="pic_center"><img border="0" alt="" src="images/baota.jpg"/></P>
<p class="pic_source">图片来源于网络</P>
<p><strong>为什么这么推荐？ </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;每一种食物都有不同的营养特点。只有食物多样，才能满足平衡膳食模式的需要。中国的平衡膳食模式，是中国营养学会膳食指南专家委员会根据中国居民膳食营养素参考摄入量、我国居民营养与健康状况、食物资源和饮食特点所设计的理想膳食模式。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;这个模式所推荐的食物种类和比例，能最大程度地满足人体正常生长发育及各种生理活动的需要，并且可降低包括心血管疾病、高血压等多种疾病的发病风险，是保障人体营养和健康的基础。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;根据2012年中国居民营养与健康调查数据，我国居民膳食中50%以上的能量、蛋白质、B1、烟酸、锌和镁，40%的B2、铁和30%的钙都是来自谷薯类及杂豆类食物。谷物为主也是最经济、合理能量来源。全谷物富含维生素B、脂肪酸、营养更丰富。杂豆和薯类以碳水化合物为主，所以放于此以满足主食多样化需要。 </P>
<p><strong>对健康的重要性</strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;我们知道，人体必需的营养素有40余种，这些营养素均需要从食物中获得。人类需要的基本食物一般可分为谷薯类、蔬菜水果类、畜禽鱼蛋奶类、大豆坚果类和油脂类五大类，不同食物中的营养素及有益膳食成分的种类和含量不同。除供6月龄内婴儿的母乳外，没有任何一种食物可以满足人体所需的能量及全部营养素。因此，只有多种食物组成的膳食才能满足人体对能量和各种营养素的需要。只有一日三餐食物多样化，才有可能达到平衡膳食。 </p>
<p class="pic_center"><img border="0" alt="" src="images/grain1.jpg"/></P>
<p class="pic_source">图片来源于网络</P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;谷类为主，也是中国人平衡膳食模式的重要特征。谷类食物含有丰富的碳水化合物，它是提供人体所需能量的最经济、最重要的食物来源，也是提供B族维生素、矿物质、膳食纤维和蛋白质的重要食物来源，在保障儿童青少年生长发育，维持人体健康方面发挥着重要作用。 </P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;然而，近30年来，我国居民膳食模式正在悄然发生着变化，居民的谷类消费量逐年下降，动物性食物和油脂摄入量逐年增多，导致能量摄入过剩；谷类过度精加工导致B族维生素、矿物质和膳食纤维丢失而引起摄入量不足，这些因素都可能增加慢性非传染性疾病的发生风险。 </P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;因此，坚持谷类为主，特别是增加全谷物摄入，有利于降低2型糖尿病、心血管疾病、结直肠癌等与膳食相关的慢性病的发病风险，可减少体重增加的风险，增加全谷物和燕麦摄入具有改善血脂异常的作用。</P>
<p><strong>日常如何实现?</strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;新膳食指南建议我国居民的平衡膳食，应做到食物多样，每天的膳食应包括谷薯类、蔬菜水果类、畜禽鱼蛋奶类、大豆坚果类等食物。除了烹调油和调味品，平均每天摄入12种以上食物，每周25种以上食物。</P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;若量化一日三餐的食物“多样”性，其建议指标为：谷类、薯类、杂豆类的食物品种数平均每天3种以上，每周5种以上；蔬菜、菌藻和水果类的食物品种数平均每天有4种以上，每周10种以上；鱼、蛋、禽肉、畜肉类的食物品种数平均每天3种以上，每周5种以上；奶、大豆、坚果类的食物品种数平均每天有2种，每周5种以上。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;按照一日三餐食物品种数的分配，早餐至少摄入4～5个品种，午餐摄入5～6个食物品种；晚餐4～5个食物品种；加上零食1～2个品种。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;所谓谷类为主，就是谷类食物所提供的能量要占膳食总能量的一半般以上；谷类为主，也是中国人平衡膳食模式的重要特征，是平衡膳食的基础，一日三餐都要摄入充足的谷类食物。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;在家吃饭，每餐都应该有米饭、馒头、面条等主食类食物，各餐主食可选不同种类的谷类食材。采用各种烹调加工方法将谷物制作成不同口味、风味的主食，可丰富谷类食物的选择，易于实现谷物为主的膳食模式。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;在外就餐，特别是聚餐时，容易忽视主食。点餐时，宜先点主食或蔬菜类，不能只点肉菜或酒水；就餐时，主食和菜肴同时上桌，不要在用餐结束时才把主食端上桌，从而导致主食吃得很少或不吃主食的情况。 </p>
<p><strong>全谷、杂豆、薯类推荐选择  </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;全谷物，是指未经精细化加工或虽经碾磨/粉碎/压片等处理仍保留了完整谷粒所具备的胚乳、胚芽、麸皮及其天然营养成分的谷物。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;我国传统饮食习惯中作为主食的稻米、小麦、大麦、燕麦、黑麦、黑米、玉米、裸麦、高粱、青稞、黄米、小米、粟米、荞麦、薏米等，如果加工得当均可作为全谷物的良好来源。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;杂豆指除了大豆之外红豆、绿豆、黑豆、花豆。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;薯类有马铃薯（土豆）、甘薯（红薯、山芋）、芋薯（芋头、山药）和木薯，目前，我国居民马铃薯和芋薯又常被作为蔬菜食用。薯类中碳水化合物含量25%左右，蛋白质、脂肪含量较低；马铃薯中钾的含量也非常丰富，薯类中的维生素C含量较谷类高，甘薯中的胡萝卜素含量比谷类高，甘薯中还含有丰富的纤维素、半纤维素和果胶等，可促进肠道蠕动，预防便秘。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;与精制谷物相比，全谷物及杂豆类可提供更多的B族维生素、矿物质、膳食纤维等营养成分及有益健康的植物化合物，全谷物、薯类和杂豆的血糖生成指数远低于精制米面。 </p>
</div>', N'杨晓光', CAST(0x0000A60A00000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (4, N'新版膳食指南（一）：吃动平衡，保持健康体重，塑造美好生活', 1, N'<div class="filecontent">
<p><strong>作者：</strong>常翠青<br/><span>《中国居民膳食指南》修订专家委员会委员、北京大学第三医院运动医学研究所 研究员</span></P>
<p><strong>关键推荐 </strong></p>
<p>1、各年龄段人群都应天天运动、保持健康体重。 </p>
<p>2、食不过量，控制总能量摄入，保持能量平衡。 </p>
<p>3、每周至少进行5天中等强度身体活动，累计150分钟以上。</p>
<p>4、坚持日常身体活动，身体活动总量至少相当于每天6000步。 </p>
<p>5、减少久坐时间，每小时起来动一动。 </p>
<p class="pic_center"><img border="0" alt="" src="images/baota.jpg"/></P>
<p class="pic_source">图片来源于网络</P>
<p><strong>为什么这么推荐？ </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;体重由脂肪体重和去脂体重构成，是客观评价人体营养和健康状况的重要指标。健康体重，指维持机体各项生理功能正常进行，充分发挥身体功能的体重，其体重构成的各组分比例恰当。体重过低或过高，或体重构成的组分比例失衡（如体脂过高，去脂体重过低）都是不健康的表现。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;通常采用体质指数（BMI）来判断体重是否健康，我国成人正常的BMI应在18.5-23.9之间，如果小于18.5为体重不足，如果大于等于24为超重，大于等于28为肥胖。BMI的计算是体重(kg)除以身高平方(m)2。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;能量是人体维持新陈代谢、生长发育、从事体力活等生命活动的基础，不同人群所需要的能量不同。身体活动消耗的能量至少应占总能量的15%，对一般人群而言，也就是240-360千卡。刨除日常家务、职业活动之外，还需要再加主动身体活动40分钟，即快步走6000步（5.4-6.0千米每小时）的运动量。</p>
<p><strong>对健康的重要性 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;吃和动是影响体重的两个主要因素。吃的过少或/和运动过量，能量摄入不足或/和能量消耗过多，导致营养不良，体重过低（低体重，消瘦），体虚乏力，增加感染性疾病风险；吃的过多或/和运动不足，能量摄入过量或/和消耗过少，会导致体重超重、肥胖，增加慢性病风险。因此吃动应平衡，保持健康体重。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;通过合理的“吃”和科学的“动”，不仅可以保持健康体重，打造美好体型，还可以增进心肺功能，改善糖、脂代谢和骨健康，调节心理平衡，增强机体免疫力，降低肥胖、心血管疾病、2型糖尿病、癌症等威胁人类健康的慢性病的风险，提高生活质量，减少过早死亡，延年益寿。 </p>
</div>', N'杨月欣', CAST(0x0000A61100000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (5, N'新版膳食指南（二）多吃蔬果、奶类、大豆', 1, N'<div class="filecontent">
<p><strong>作者：</strong>杨月欣<br/><span>《中国居民膳食指南（2016）》修订专家委员会主任委员 中国疾控中心营养与健康所 教授</span></P>
<p class="pic_center"><img border="0" alt="" src="images/baota.jpg"/></P>
<p class="pic_source">图片来源于网络</P>
<p><strong>关键推荐 </strong></p>
<p>蔬菜水果是平衡膳食的重要组成部分，奶类富含钙，大豆富含优质蛋白质。  </p>
<p>餐餐有蔬菜，保证每天摄入300～500g蔬菜，深色蔬菜应占1/2。 </p>
<p>天天吃水果，保证每天摄入200～350g的新鲜水果，果汁不能代替鲜果。</p>
<p>吃各种各样的奶制品，相当于每天液态奶300g。</p>
<p>经常吃豆制品，适量吃坚果。 </p>
<p class="pic_center"><img border="0" alt="" src="images/food.jpg"/></P>
<p class="pic_source">图片来源于网络</P>
<p><strong>为什么这么推荐？ </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;食物与人体健康关系的研究发现，蔬菜水果的摄入不足，是世界各国居民死亡前十大高危因素。新鲜蔬菜和水果能量低，微量营养素丰富，也是植物化合物的来源。蔬菜水果摄入可降低脑卒中和冠心病的发病风险以及心血管疾病的死亡风险，降低胃肠道癌症、糖尿病等的发病风险，循证研究科学证据等级高。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;奶类和大豆类食物在改善城乡居民营养，特别是提高贫困地区居民的营养状况方面具有重要作用。在各国膳食指南中，蔬果奶豆类食物都作为优先推荐摄入的食物种类。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;目前，我国居民蔬菜摄入量逐渐下降，水果、大豆、奶类摄入量仍处于较低水平。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;根据我国2010～2012年中国居民营养与健康状况监测结果显示，我国城乡居民平均每标准人日蔬菜的摄入量为269.7g，奶类及其制品的摄入量为24.7g，大豆类及制品摄入量为10.9g。与2002年相比，蔬菜、水果、奶类和大豆类摄入量没有明显增加。 </p>
<p><strong>对健康的重要性 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;蔬菜和水果富含维生素、矿物质、膳食纤维，且能量低，对于满足人体微量营养素的需要，保持人体肠道正常功能以及降低慢性病的发生风险等具有重要作用。蔬果中还含有各种植物化合物、有机酸、芳香物质和色素等成分，能够增进食欲，帮助消化，促进人体健康。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;奶类富含钙，是优质蛋白质和B族维生素的良好来源；奶类品种繁多，液态奶、酸奶、奶酪和奶粉等都可选用。我国居民长期钙摄入不足，每天摄入300g奶或相当量乳制品可以较好补充不足。增加奶类摄入有利于儿童少年生长发育，促进成人骨健康。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;大豆富含优质蛋白质、必需脂肪酸、维生素E，并含有大豆异黄酮、植物固醇等多种植物化合物。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;另外坚果富含脂类和多不饱和脂肪酸、蛋白质等营养素，是膳食的有益补充。 </p>
</div>', N'杨月欣', CAST(0x0000A60C00000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (6, N'感恩节，美国人吃的火鸡有什么营养呢？', 2, N'<div class="filecontent">
<p><strong>作者：</strong>刘萍萍<br/><span>中国营养学会会员、华大基因营养师、科普作者</span></P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;每年11月份的第四个星期四，是美国和加拿大的感恩节。美国人和加拿大人在这一天吃火鸡大餐，就像中国人中秋节吃月饼一样，是一种风俗习惯。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;火鸡（Turkey）又叫吐绶鸡，是一种原产于北美洲的家禽，本为野生，现已驯化为肉用家禽。因为土鸡的样子像土耳其人的服装——身黑头红，所以被人们称为“土耳其”（Turkey）[1]。
<p class="pic_center"><img border="0" alt="" src="images/turkey1.jpg"/></P>
<p class="pic_source">图片来源于网络</P>
<p><strong>火鸡的营养怎么样呢？</strong></p>
<P>&nbsp;&nbsp;&nbsp;&nbsp;火鸡属于禽类，在营养上，其实类似于我们经常吃的鸡。</P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;首先，它属于<strong>高蛋白质</strong>的食物。根据中国食物成分表的检测数据，每100克鸡腿、鸡胸脯肉中分别含蛋白质16克、19.4克，而同等重量的火鸡腿、火鸡胸脯肉中也分别含有蛋白质20克、22.4克[2]。</P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;其次，火鸡中含有<strong>较低的脂肪和胆固醇</strong>，这是相对猪、牛、羊等畜肉而言的。例如，每100克火鸡腿中含脂肪1.2克，胆固醇58毫克。而我们经常吃的猪肉，即便是瘦肉，脂肪含量也有6.2克，胆固醇则为81毫克。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;而且，在脂肪酸的组成比例上，包括火鸡在内的禽肉（如鸡、鸭、鹅），以<strong>单不饱和脂肪酸为主</strong>，而畜肉（如猪、牛、羊）以饱和脂肪酸为主，猪肉脂肪中的饱和脂肪酸含量一般占35%-45%，羊肉45%-55%，牛肉50%-60%[3]。目前的研究认为，<strong>饱和脂肪酸的过多摄入会对心血管系统带来危害</strong>，而单不饱和脂肪酸和多不饱和脂肪酸对机体健康有一定的<strong>保护作用</strong>，当然，这个有益作用的前提是摄入的能量不过量[3]。</P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;此外，火鸡中还含有较丰富的维生素（如烟酸）、矿物质（如铁）等营养成分</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;由于目前我国多数居民吃畜肉（特别是猪肉）比较多，禽和鱼类较少，这对居民营养健康不利，因此需要<strong>适当调整肉类品种比例，建议优先选择鱼和禽类。</strong></p>
<p><strong>火鸡能怎么吃？</strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;火鸡既可以拿来烧烤，也可以煮汤，或是其它创意的吃法。</P>
<p class="pic_center"><img border="0" alt="" src="images/turkey2.jpg"/></P>
<p class="pic_source">图片来源于网络</P>
<P><strong>烧烤</strong>：烤火鸡的做法有多种，例如先用各种调料对火鸡进行腌制，并且在火鸡腹腔中提前塞好各种填料，如洋葱、胡萝卜、芹菜等。</P>
<P><strong>煮汤</strong>：例如用火鸡腿肉和蘑菇、胡萝卜、鸡蛋等食材一起煮汤。</P>
<p><strong>其它</strong>：如腐乳风味火鸡卷、番茄九层塔火鸡饼等。</P>
<p><strong>火鸡虽然营养又美味，但也不能一次性吃太多哦。</strong></P>
<p>根据《中国居民膳食指南（2016版）》的建议，畜禽肉的推荐摄入量为<strong>每周280-525克</strong>。而且，不同的食物，营养各有特点，只有<strong>食物多样化</strong>才能保证营养全面。</p>
<p>参考资料</P>
<P>[1]王盼盼.火鸡及其制品.肉类研究, 2011, 25(1):1-8	 </P>
<p>[2]杨月欣,王光亚,潘兴昌 主编.中国食物成分表 第2版.北京大学医学出版社	</P>
<P>[3]中国营养学会.中国居民膳食指南（2016版）.人民卫生出版社</P>
<P>审稿：中国疾控中心营养与健康所副研究员 徐维盛博士</P>          
</div>', N'刘萍萍', CAST(0x0000A6C700000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (7, N'糖尿病人到底能不能吃水果？', 2, N'<div class="filecontent">
<p><strong>作者：</strong>刘萍萍<br/><span>中国营养学会会员、华大基因营养师、科普作者</span></P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;很多糖尿病患者认为水果是甜的所以不能吃。其实，水果真的是糖尿病人的禁忌吗？如果吃，要吃哪种好？吃多少？</P>
<P><strong>甜的水果糖尿病人就不能吃吗？</strong></P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;有些水果虽然吃起来很甜，但并不代表它升血糖速度就一定很快。这是因为，水果中的糖大部分是果糖，果糖本身甜度就比较高。而且，相比葡萄糖，果糖升高血糖的作用要小一些。同时，水果中还含有大量的膳食纤维，后者对降低血糖反应有一定的作用。</P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;因此，<strong>我们不能单凭水果的口感，来判断它适不适合糖尿病人吃。</strong>	 </P>
<P><strong>选择低GI水果相对更安全</strong></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;GI，即“<strong>血糖生成指数</strong>”，它是衡量食物引起人体餐后血糖反应的一项有效指标。 一般来说，GI小于55为低GI食物，55-70为中GI食物，大于70为高GI食物[1]。 也就是说，GI越低的食物对血糖波动的影响越小。</P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;常见水果中，低、中、高GI水果分别如：<strong>低GI</strong>：樱桃、李子、柚、鲜桃、梨、苹果等；<strong>中GI</strong>：芒果、菠萝等；<strong>高GI</strong>：西瓜等。因此，糖尿病人选择低GI的水果，相对更安全些。</P>
<p class="pic_center"><img border="0" alt="" src="images/fruit1.jpg"/></P>
<p class="pic_source">图片来源于网络</P>
<p><strong>因此，糖尿病人选择低GI的水果，相对更安全些。</strong></P>
<p>高GI水果也不是完全不能吃	 </P>
<p>因为还要看血糖负荷。</P>
<p><strong>食物血糖负荷（GL）</strong>为食物GI值与可利用碳水化合物的乘积，将摄入碳水化合物的质与量结合起来，能更全面估价膳食总血糖效应[2]。就拿我们爱吃的西瓜来说吧，它的GI值是72，属于高GI食物，碳水化合物含量为5.8克/100克[3]。</P>
<p class="pic_center"><img border="0" alt="" src="images/fruit2.jpg"/></P>
<p class="pic_source">图片来源于网络</P>
<p>当我们吃下100克（一小块）西瓜时，食物的血糖负荷为GL=72×5.8÷100=4。 如果是吃100克（半碗）大米饭，其GL值是21，是西瓜的5倍多。 也就是说，虽然西瓜的GI值很高，但因为吃的量少，GL值也很低，一般不会引起血糖的大幅度变化。 </p>
<p class="pic_center"><img border="0" alt="" src="images/fruit3.jpg"/></P>
<p><strong>糖尿病人吃水果注意事项：</strong></P>
<p><strong>1.挑对时机</strong>建议糖友把水果放在两餐之间来吃，如早上10点，下午3点，避免在饭后马上吃水果，以免血糖发生大的波动。&nbsp;<br/><STRONG>2.吃对量</STRONG>把每天吃水果的量控制在100-200克之间。&nbsp;<STRONG>3.形式合理</STRONG>尽量生吃水果，而不是煮熟了吃；吃完整的水果，而不是果汁、水果罐头等。</P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;总而言之，水果并不是糖尿病人的禁忌。在血糖控制得好的情况下，是可以适当吃水果的。建议尽量选择对血糖影响比较小的水果，同时注意相应减少主食的量，并监测好餐后血糖。</P>
<p>参考资料：1.中国营养学会.中国居民膳食指南（2016版）.人民卫生出版社2.姜春花，蔡美琴，刘秀玲等.血糖指数结合血糖负荷在糖尿病防治中的应用与效果评价.营养学报, 2009, 31(4):334-3383.杨月欣,王光亚,潘兴昌 主编.中国食物成分表 第2版.北京大学医学出版社	 </P>
<p>审核：于康 中国营养学会科普工作委员会 副主任委员</P>
<div>
', N'刘萍萍', CAST(0x0000A6C200000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (8, N'给肝肿瘤患者的一些饮食建议', 2, N'<div class="filecontent">
<p><strong>作者：</strong>马跃青<br/><span> 中国营养学会会员、北京南郊肿瘤医院营养科；营养与食品卫生学硕士毕业，国家二级公共营养师，公共卫生执业医师，营养技师。</span></P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;肝肿瘤在我国的发病率很高，导致肝肿瘤发病的原因有很多，包括病毒感染、进食含黄曲霉毒素的食物、化学致癌物、喝酒、疾病、营养、免疫以及遗传因素等。肝脏是人体的化工厂，参与多种营养物质的代谢。肝肿瘤的生长可能导致肝功能障碍，并常常合并肝硬化、肝功能损伤及营养不良。合理的饮食营养可帮助患者改善营养状况，减轻肝脏负担，促进肝细胞修复，减少术后并发症。但千万不要听信传言某种食品可以治疗肝肿瘤，均衡饮食，才是王道！</P>
<p class="pic_center"><img border="0" alt="" src="images/cancer.jpg"/></P>
<p class="pic_source">图片来源于网络</P>
<p><strong>不同病情的患者应采取不同的营养治疗和饮食原则：</strong></P>
<p><strong>一、普通肝肿瘤患者采取低脂高植物蛋白饮食，宜清淡好消化。</strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;食物中须保证一定量的主食，如面条、馒头、米饭、玉米、红薯、小米等；富含维生素和矿物质的蔬菜和水果，如西红柿、油菜、莴笋、菜花、猕猴桃、橘子、草莓等；含有优质蛋白质的豆制品，如豆浆、豆腐、豆皮等，以及脱脂牛奶、酸奶等奶制品。不宜进食太多的脂肪，如肥肉、油炸食品、干果类、香肠等食物应禁食。低脂肪饮食不仅可减轻肝肿瘤患者的消化道症状，如恶心、呕吐、腹胀等，而且还可以在一定程度上减轻肝区的疼痛。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;饮食模式可改为4～6次/天。食欲不佳、进食不足情况下可选择一些健脾胃、助消化的食物，如山药、白扁豆、山楂片、白萝卜、酸奶、多酶片等。适当增加水果、蜂蜜、藕粉、果酱、果汁、甜点心、果冻、枣泥等，以避免低血糖，也有利于肝功能恢复。烹饪方式宜采用蒸、煮、汆、炖。</P>
<p><strong>二、肝硬化严重患者应保证主食和蛋白质的摄入，注意避免一切生、硬、脆、粗糙的食物。</strong></P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;避免如带刺的鱼、带碎骨的肉、干炸丸子、坚果、粗杂粮、菜帮子、洋葱、韭菜、干豆类、蒜苗、笋等食物。尽量不吃凉拌菜，食物应咀嚼碎后再吞咽。</P>
<p><strong>三、腹水水肿患者应严格限制钠和水的摄入量，不食用各种酱菜、腐乳等含盐多的食品。</strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;饮食上选用含钾丰富的食物，如香蕉，苦瓜、白萝卜、青椒、波菜、空心菜等，以补充丢失的钾。</P>
<p><strong>四、放化疗患者饮食应以营养丰富，滋润生津为宜。</strong></P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;同时辅以健脾开胃之品，如莲藕、白扁豆、荸荠、龙眼肉、甜橙、荔枝、葡萄、冬瓜、鸭蛋、鹌鹑蛋、燕窝等。可选用益气健脾，养血解毒，清淡爽口的食物，如山药粉、鸭蛋、萝卜、莲藕、冬瓜、红枣、橘子、鲜桃、西瓜、甲鱼、鲫鱼等。</P>
<p><strong>五、肝肿瘤患者应戒酒，忌油腻、刺激性食物。</strong></P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;避免吃对肝功能有损害的药物和食物，如发霉的、烟熏、腌制、高温烧烤、油炸食物及含有人工合成的香精、色素的熟食饮料等。要定时、定量、少食多餐以减少胃肠道的负担。肝功能障碍常导致多种维生素摄入、吸收不良，应根据需要联合补充。</P>
<p>审阅：于康 中国营养学会科普工作委员会 副主任委员</p>
</div>', N'马跃青', CAST(0x0000A6BE00000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (9, N'黑芝麻糊里的秘密', 2, N'<div class="filecontent">
<p><strong>作者：</strong>张学斌<br/><span> 国家高级公共营养师、中国营养学会会员</span></P>
<p><strong>黑芝麻，黑营养，你真的了解黑芝麻糊吗？ </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;在忙碌的工作之余，不少人都喜欢冲杯热气腾腾的黑芝麻糊作为加餐。因为营养丰富、香气扑鼻的黑芝麻是作零食的绝佳选择。如今超市的货架上也摆满了不同品牌的黑芝麻糊，但是这些产品究竟含有多少黑芝麻呢？我们一起来瞧一瞧。</P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;近日逛超市，就顺便看了下几款热卖的黑芝麻糊。结果出乎我的意料，在这几款产品中芝麻的含量并不高！</p>
<p class="pic_center"><img border="0" alt="" src="images/zhimahu1.jpg"/></P>
<p class="pic_source"><img border="0" alt="" src="images/zhimahu2.jpg"/></P>
<p>&nbsp;&nbsp;&nbsp;&nbsp;首先是看配料表，《预包装食品通则》中规定，食品中各配料应按添加量的递减顺序排列。在这几款产品的配料表中，黑芝麻排在了大米和白砂糖之后，其添加量为10%~15%不等； </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;其次是看营养成分表，根据查食物成分表可知：每百克黑芝麻中蛋白质、脂肪和碳水化合物含量分别为19.1g、46.1g和24.0g；而相同重量的市售黑芝麻糊中这些营养素的含量分别为5.0g、8.0g和70g。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;由此可见，这些产品和黑芝麻的营养价值绝不可同日而语。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;终上所述，市售黑芝麻糊其实是以大米为主要原料生产出来的食品。而这样的黑芝麻糊却不是所有人都适合，因为这些产品含有大量的大米和糖分导致其血糖生成指数很高。因此，需要控制血糖的人们要慎重选择或者搭配其他低升糖指数的食物一同食用。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;最后，营养师提醒大家，在购买食品的时候一定要仔细查看其配料表和营养成分表，选择真正适合自己的食物才是最好的方式。 </p>
<p>参考资料：《预包装食品通则》《中国食物成分表2004》 </p>
<p>审核：徐维盛 博士中国疾控中心营养与健康所 副研究员 </p>
</div>', N'张学斌', CAST(0x0000A6B300000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (10, N'漫谈蜂产品', 2, N'<div class="filecontent">
<p><strong>作者：</strong>莫宝庆<br/><span> 中国营养学会老年营养分会副主任委员</span></P>
<p><strong>蜂产品是蜜蜂所产的产物，按其来源和形成的不同可分为三大类：</strong></p>
<p>（1）蜜蜂的采制物。如蜂蜜、蜂花粉、蜂胶等； </p>
<p>（2）蜜蜂的分泌物。如蜂王浆、蜂毒、蜂蜡等；</p>
<p>（3）蜜蜂自身生长发育过程中各虫态的躯体。如蜜蜂幼虫、蜜蜂蛹等。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;目前，日常生活中常见的主要蜂产品包括蜂蜜、蜂胶、蜂乳。对于蜜蜂来说，三者的关系是，蜂蜜是蜜蜂的日常食物，蜂王浆是蜂王的终生补品和幼蜂的滋补品，蜂胶则是蜜蜂的药品。 </p>
<p class="pic_center"><img border="0" alt="" src="images/honey1.jpg"/></P>
<p class="pic_source">图片来源于网络</P>
<p><strong>蜂蜜</strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;蜂蜜是蜜蜂从开花植物的花中采得花蜜后在蜂巢中酿制而成的物质。其含有较多的糖分（主要是果糖、葡萄糖，两者占蜂蜜总糖分的85%~95%），一定量的矿物质（如磷、钙、钾、钠、铁、铜、锰、镁、锌、硅、铬、镍和钴）、维生素（如维生素B2、烟酸、泛酸、维生素C等），此外，还含有生物活性物质，如黄酮、酚类化合物（酚酸类）、香豆素类等，也有一些蔗糖酶、葡萄糖氧化酶、淀粉酶、过氧化氢酶、磷酸酶以及还原酶、类蛋白酶和脂酶等。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;蜂蜜的主要作用是提供糖分，还可起辅助抗氧化、润肠通便的作用，外用时还有助于抗感染。其含有的果糖吸收慢、转变为脂肪的速度也慢，故更适合于老年人食用。但糖尿病人宜慎喝。 </p>
<p><strong>蜂胶 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;蜂胶是蜜蜂从植物芽孢或树干上采集树脂后，将这些树脂混入其上腭腺、蜡腺的分泌物中，加工而成的一种具有芳香气味的胶状固体物，是蜜蜂筑巢用的一种填充和黏合材料。蜂胶是一种极为稀少的天然资源，素有“紫色黄金”之称。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;蜂胶通常由50%的树脂和香脂、30%的蜂蜡、10%的芳香挥发油、5%的花粉及5%的夹杂物组成，含有丰富的B族维生素、烟酸、维生素A原、各种氨基酸、多糖、酶类（淀粉酶、组织蛋白酶、脂肪酶、胰蛋白酶等）、脂肪酸、甾类化合物、矿物质。类黄酮是蜂胶中的主要活性成分，约有20多种，含量一般在8%以上，高者可达40%以上。蜂胶中还含有大量的有机酸类化合物（如苯甲酸、对羟甲酸等），醇类化合物、萜烯类化合物含量也较丰富，因此，蜂胶具有广谱抗菌、免疫调节、改善睡眠、调节血糖、调节血脂的作用，还有良好的缓解口腔溃疡、防辐射作用。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;蜂胶不溶于水，而易溶于乙醚、氯仿、乙醇。通常的食用方法是用37℃～56℃的白酒浸泡饮用。因此，蜂胶不能作为普通食品，只是保健食品的原料。如果过多食用，还会引起过敏。因此，食用者要按推荐的每日食用量来食用，且婴幼儿、孕妇不宜食用蜂胶。 </p>
<p><strong>蜂乳 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;蜂乳又称蜂王浆，是由5～15日龄工蜂食用蜂蜜和花粉后，从工蜂的咽下腺、上颚腺和脑后腺等腺体（即王浆腺）分泌出的乳状物质，又被称作蜂皇浆、王乳，生产王浆的原料来源于工蜂作为食物的蜂蜜和发酵花粉。蜂乳是蜜蜂供给蜂王和3日龄内幼虫食用的全营养高活性浆状物，相当于哺乳动物的乳汁，因此而得此名。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;蜂乳中含有丰富的氨基酸、蛋白质、维生素（维生素B1、维生素B2、烟酸、泛酸、肌醇、叶酸、生物素等）、矿物质（如硒、锗、铬、锌、铁、铜、镁等20多种矿物质）以及脂类、核酸、酶类（如超氧化物歧化酶，SOD）等生物活性物质，还含有牛磺酸，其中蛋白质和脂肪酸是王浆主要的生物活性成分。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;蜂乳具有良好的调节免疫功能作用，有助于睡眠改善，还有益于美容。如果用于增强保健作用，一般一天喝5~20克即可，初服者为5克左右，35岁以下者10克左右，中老年人15~20克，可分数次喝，每次3~5克；也可在医生的指导下进行食用。如果食用过多，会引起过敏。蜂乳宜用温水，不宜用开水冲调。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;蜂乳中含微量的性激素，如雌二醇、孕酮、睾酮等，因此也有美容作用。但所含激素的数量并不高，如每100克蜂乳中含有的雌二醇仅为416.7纳克，孕酮116.7纳克，睾酮108.2纳克。虽然这些微量的激素对成人不会产生什么影响，但儿童服用后可能存在性早熟的风险。所以，儿童经常服用些蜂蜜就可以了，不宜服用蜂乳。 </p>
</div>', N'莫宝庆', CAST(0x0000A6B100000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (11, N'新版膳食指南（四）：适量吃鱼、禽、蛋、瘦肉', 1, N'<div class="filecontent">
<p><strong>作者：</strong>郭俊生<br/><span> 《中国居民膳食指南》修订专家委员会副主任委员、第二军医大学海医系军队卫生学研究室 教授 </span></P>
<p><strong>关键推荐 </strong></p>
<p>（1）鱼、禽、蛋和瘦肉摄入要适量。 </p>
<p>（2）每周吃鱼280~525g，畜禽肉280~525g，蛋类280~350g，平均每天摄入总量120~200g。</p>
<p>（3）优先选择鱼和禽。</p>
<p>(4)吃鸡蛋不弃蛋黄。</p>
<p>(5)少吃肥肉、烟熏和腌制肉制品。</p>
<p><strong>重要性</strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;鱼、禽、蛋和瘦肉含有丰富的蛋白质、脂类、维生素A、B族维生素、铁、锌等营养素，是平衡膳食的重要组成部分,是人体营养需要的重要来源。根据2012年全国营养调查结果计算此类食物对人体营养需要的贡献率，满足人体营养需要20%以上的营养素有蛋白质、维生素A、维生素B2、烟酸、磷、铁、锌、硒、铜等，其中蛋白质、铁、硒、铜等达到30%以上。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;但是此类食物的脂肪含量普遍较高，有些含有较多的饱和脂肪酸和胆固醇，摄入过多可增加肥胖、心血管疾病的发生风险，因此其摄入量不宜过多，应当适量摄入。 </p>
<p class="pic_center"><img border="0" alt="" src="images/baota.jpg"/></P>
<p class="pic_source">图片来源于网络</P>
<p><strong>如何选择？ </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;鱼类，脂肪含量相对较低，且含有较多的不饱和脂肪酸，有些鱼类富含二十碳五烯酸（EPA）和二十二碳六烯酸（DHA），对预防血脂异常和心血管疾病等有一定作用，可首选；禽类脂肪含量也相对较低，其脂肪酸组成优于畜类脂肪，应先于畜肉选择。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;蛋黄，是蛋类中的维生素和矿物质的主要来源，尤其富含磷脂和胆碱，对健康十分有益，尽管胆固醇含量较高，但若不过量摄入，对人体健康不会产生影响，因此吃鸡蛋不要丢弃蛋黄。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;肥的畜肉，脂肪含量较多，能量密度高，摄入过多往往是肥胖、心血管疾病和某些肿瘤发生的危险因素，但瘦肉脂肪含量较低，矿物质含量丰富，利用率高，因此应当选吃瘦肉，少吃肥肉。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;动物内脏如肝、肾等，含有丰富的脂溶性维生素、B族维生素、铁、硒和锌等，适量摄入可弥补日常膳食的不足，可定期摄入，建议每月可食用动物内脏食物2～3次，每次25g左右。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;烟熏和腌制肉风味独特，是人们喜爱的食品，但由于在熏制和腌制过程中，易遭受多环芳烃类和甲醛等多种有害物质的污染，过多摄入可增加某些肿瘤的发生风险，应当少吃。 </p>
</div>', N'郭俊生', CAST(0x0000A60800000000 AS DateTime), NULL)
INSERT [dbo].[files] ([fileid], [filename], [typeid], [filecontent], [publisher], [publishdate], [visitnum]) VALUES (12, N'新版膳食指南（五）少盐少油，控糖限酒', 1, N'<div class="filecontent">
<p><strong>作者：</strong>翟凤英<br/><span>《中国居民膳食指南（2016）》修订专家委员会副主任委员、中国疾控中心营养所 教授 </span></P>
<p><strong>关键推荐 </strong></p>
<p>（1）培养清淡饮食习惯，少吃高盐和油炸食品。成人每天食盐不超过6g，每天烹调油25~30g。  </p>
<p>（2）控制添加糖的摄入量，每天摄入不超过50g，最好控制在约25克以下。</p>
<p>（3）每日反式脂肪酸摄入量不超过2g。</p>
<p>(4)足量饮水，成年人每天7~8杯（1500~1700ml），提倡饮用白开水和茶水；不喝或少喝含糖饮料。 </p>
<p>(5)儿童少年、孕妇、乳母不应饮酒。成人如饮酒，男性一天饮用酒的酒精量不超过25g，女性不超过15g。 </p>
<p class="pic_center"><img border="0" alt="" src="images/baota.jpg"/></P>
<p class="pic_source">图片来源于网络</P>
<p><strong>盐</strong></p>
<p><strong>一、我们为什么要少吃盐 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;大多菜肴以咸作基础味，是食盐让我们享受到了美味佳肴。高血压流行病学调查证实，人群的血压水平和高血压的患病率均与食盐的摄入量密切相关。50岁以上的人、有家族性高血压的人、超重和肥胖者，其血压对食盐摄入量的变化更为敏感，膳食中的食盐如果增加，发生心脑血管意外的危险性就大大增加。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;中国营养学会建议健康成年人一天食盐（包括酱油和其他食物中的食盐量）的摄入量是不超过6克。但2012年的调查显示，我国居民每人日平均摄入食盐10.5克。因此，减少食盐量仍需努力。</p>
<p><strong>二、如何减少盐摄入量 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;首先要自觉纠正因口味过咸而过量添加食盐和酱油的不良习惯，对每天食盐摄入采取总量控制，用量具量出，每餐按量放入菜肴。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;一般20mL酱油中含有3克食盐，10克蛋黄酱含1.5克食盐，如果菜肴需要用酱油和酱类，应按比例减少食盐用量。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;习惯过咸味食物者，为满足口感的需要，可在烹制菜肴时放少许醋，提高菜肴的鲜香味，帮助自己适应少盐食物。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;烹制菜肴时如果加糖会掩盖咸味，所以不能仅凭品尝来判断食盐是否过量,使用量具更准确。此外，还要注意减少酱菜、腌制食品以及其他过咸食品的摄入量。 </p>
<p><strong>油</strong></p>
<p><strong>一、烹调油的两面性 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;类饮食离不开油，烹调油除了可以增加食物的风味，还是人体必需脂肪酸和维生素E的重要来源，并且有助于食物中脂溶性维生素的吸收利用。但是过多脂肪摄入会增加慢性疾病发生的风险。 </p>
<p><strong>二、如何科学用油 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;科学用油包括“少用油”和“巧用油”，即控制烹调油的食用总量不超过30克/天，并且搭配多种植物油，尽量少食用动物油和人造黄油或起酥油。 </p>
<p><strong>“少用油”小窍门 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;使用带刻度的油壶来控制炒菜用油；选择合理的烹饪方法，如蒸、煮、炖、拌等，使用煎炸代替油炸；少吃富含饱和脂肪和反式脂肪酸的食物，例如饼干、蛋糕、糕点、加工肉制品以及薯条/薯片等。 </p>
<p><strong>怎么“巧用油” </strong>动物油的饱和脂肪酸比例较高；植物油则以不饱和脂肪酸为主。不同植物油又各具特点，如橄榄油、茶油、菜籽油的单不饱和脂肪酸含量较高，玉米油、葵花籽油则富含亚油酸，胡麻油（亚麻籽油）中富含a-亚麻酸。因此应当经常更换烹调油的种类，食用多种植物油，减少动物油的用量。</p>
<p><strong>添加糖 </strong></p>
<p><strong>一、为什么控制添加糖 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;添加糖是指人工加入到食品中的糖类，包括饮料中的糖，具有甜味特征，常见的有白砂糖、绵白糖、冰糖和红糖。添加糖是纯能量食物，不含其他营养成分，过多摄入会增加龋齿及超重肥胖发生的风险。因此，平衡膳食中不要求添加糖，若需要摄入建议每天摄入量不超过50g，最好控制在约25g以下。</p>
<p><strong>二、如何控制添加糖摄入量 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;对于儿童青少年来说，含糖饮料是添加糖的主要来源，建议不喝或少喝含糖饮料。添加糖的另外一个主要来源是包装食品如糕点、甜点、冷饮等，减少此类食品的摄入，也可控制添加糖。此外，家庭烹饪时也会使用糖作为佐料加入菜肴中，如红烧、糖醋等，在烹饪时应注意尽量少加糖。喝茶、咖啡时也容易摄入过多的糖，需要引起注意。 </p>
<p><strong>酒 </strong></p>
<p><strong>一、为什么要限酒 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;酒虽然是我们饮食文化的一部分，但是从营养学的角度看，酒中没有任何营养元素。有许多科学证据证明酒精是造成肝损伤、胎儿酒精综合征、痛风、结直肠癌、乳腺癌、心血管疾病的危险因素。此外，由于酒含有较多的能量，特别是高度白酒，经常饮酒会造成能量过剩；同时，酒会影响食物营养素的吸收，造成营养素缺乏。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;还有对于孕妇、乳母、儿童少年、特殊状况或特定职业人群以及驾驶机动工具的人员，即使少量饮酒也会对健康、工作或生活造成不良影响。</p>
<p><strong>二、如何做到限酒 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;从健康的考虑出发，男性和女性成年人每日饮酒应该不超过酒精25克和15克。换算成不同酒类，25克酒精相当于啤酒750ml，葡萄酒250ml，38°白酒75克，高度白酒50克；15克酒精相当于啤酒450ml，葡萄酒150ml，38°白酒50克，高度白酒30克。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;倡导中华民族良好的传统饮食文化，在庆典、聚会等场合不劝酒、不酗酒，饮酒时注意餐桌礼仪，饮酒不以酒醉为荣，做到自己饮酒适度，他人心情愉悦。 </p>
<p><strong>水</strong></p>
<p><strong>一、为什么推荐饮水 </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;水是人体含量最多的组成成分（约占75%），是维持人体正常生理功能的重要营养素。水能促进和参与体内物质代谢，有利于营养物质的消化吸收；能协助物质运输，既是体内运输营养物质的载体，又是排泄代谢废物的媒介；保持组织器官的形态，调节人体体温，是组织系统的湿润剂。 </p>
<p><strong>二、如何做到饮用足够的水  </strong></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;人体补充水分的最好方式是饮用白开水。在温和气候条件下，成年男性每日最少饮用1700mL（约8.5杯）水，女性最少饮用1500mL（约7.5杯）水。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;最好的饮水方式是少量多次，每次1杯（200mL），不鼓励一次大量饮水，尤其是在进餐前，大量饮水会冲淡胃液，影响食物的消化吸收。除了早、晚各1杯水外，在三餐前后可以饮用1-2杯水，分多次喝完；也可以饮用较淡的茶水替代一部分白开水。此外，在炎热夏天，饮水量也需要相应地增加。 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;对于运动量大、劳动强度高或暴露于高温、干燥等特殊环境下的人，如运动员、农民、军人、矿工、建筑工人、消防队员等，全天的饮水推荐量大大超过普通人的，并需要考虑同时补充一定量的矿物质（盐分）。 </p>
</div>', N'翟凤英', CAST(0x0000A60600000000 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[files] OFF
/****** Object:  Table [dbo].[pinglun]    Script Date: 11/30/2016 08:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pinglun](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fileid] [int] NOT NULL,
	[comment] [nvarchar](140) NULL,
	[publishdate] [datetime] NULL,
	[username] [nvarchar](10) NULL,
 CONSTRAINT [PK_pinglun] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[pinglun] ON
INSERT [dbo].[pinglun] ([id], [fileid], [comment], [publishdate], [username]) VALUES (1, 1, N'值得阅读', CAST(0x0000A1F200000000 AS DateTime), N'匿名用户')
INSERT [dbo].[pinglun] ([id], [fileid], [comment], [publishdate], [username]) VALUES (2, 1, N'一般般吧，不是很好', CAST(0x0000A1F300000000 AS DateTime), N'xing')
INSERT [dbo].[pinglun] ([id], [fileid], [comment], [publishdate], [username]) VALUES (3, 2, N'太好了，我喜欢', CAST(0x0000A1F300000000 AS DateTime), N'匿名用户')
SET IDENTITY_INSERT [dbo].[pinglun] OFF
/****** Object:  ForeignKey [FK_type_type]    Script Date: 11/30/2016 08:26:31 ******/
ALTER TABLE [dbo].[type]  WITH CHECK ADD  CONSTRAINT [FK_type_type] FOREIGN KEY([typeid])
REFERENCES [dbo].[type] ([typeid])
GO
ALTER TABLE [dbo].[type] CHECK CONSTRAINT [FK_type_type]
GO
/****** Object:  ForeignKey [FK_type_files]    Script Date: 11/30/2016 08:26:31 ******/
ALTER TABLE [dbo].[files]  WITH CHECK ADD  CONSTRAINT [FK_type_files] FOREIGN KEY([typeid])
REFERENCES [dbo].[type] ([typeid])
GO
ALTER TABLE [dbo].[files] CHECK CONSTRAINT [FK_type_files]
GO
/****** Object:  ForeignKey [FK_pinglun_files]    Script Date: 11/30/2016 08:26:31 ******/
ALTER TABLE [dbo].[pinglun]  WITH CHECK ADD  CONSTRAINT [FK_pinglun_files] FOREIGN KEY([fileid])
REFERENCES [dbo].[files] ([fileid])
GO
ALTER TABLE [dbo].[pinglun] CHECK CONSTRAINT [FK_pinglun_files]
GO
