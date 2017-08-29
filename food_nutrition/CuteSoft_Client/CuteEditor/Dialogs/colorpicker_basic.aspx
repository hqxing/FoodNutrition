<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<script runat="server">
string GetDialogQueryString;
override protected void OnInit(EventArgs args)
{
	if(Context.Request.QueryString["Dialog"]=="Standard")
	{	
	if(Context.Request.QueryString["IsFrame"]==null)
	{
		string FrameSrc="colorpicker_basic.aspx?IsFrame=1&"+Request.ServerVariables["QUERY_STRING"];
		CuteEditor.CEU.WriteDialogOuterFrame(Context,"[[MoreColors]]",FrameSrc);
		Context.Response.End();
	}
	}
	string s="";
	if(Context.Request.QueryString["Dialog"]=="Standard")	
		s="&Dialog=Standard";
	
	GetDialogQueryString="Theme="+Context.Request.QueryString["Theme"]+s;	
	base.OnInit(args);
}
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)" />
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)" />
		<script type="text/javascript" src="Load.ashx?type=dialogscript&verfix=1006&file=DialogHead.js"></script>
		<script type="text/javascript" src="Load.ashx?type=dialogscript&verfix=1006&file=Dialog_ColorPicker.js"></script>
		<link href='Load.ashx?type=themecss&file=dialog.css&theme=[[_Theme_]]' type="text/css"
			rel="stylesheet" />
		<style type="text/css">
			.colorcell
			{
				width:16px;
				height:17px;
				cursor:hand;
			}
			.colordiv,.customdiv
			{
				border:solid 1px #808080;
				width:16px;
				height:17px;
				font-size:1px;
			}
			#ajaxdiv{padding:10px;margin:0;text-align:center; background:#eeeeee;}
		</style>
		<title>[[NamedColors]]</title>
		<script>
								
		var OxO5882=["Green","#008000","Lime","#00FF00","Teal","#008080","Aqua","#00FFFF","Navy","#000080","Blue","#0000FF","Purple","#800080","Fuchsia","#FF00FF","Maroon","#800000","Red","#FF0000","Olive","#808000","Yellow","#FFFF00","White","#FFFFFF","Silver","#C0C0C0","Gray","#808080","Black","#000000","DarkOliveGreen","#556B2F","DarkGreen","#006400","DarkSlateGray","#2F4F4F","SlateGray","#708090","DarkBlue","#00008B","MidnightBlue","#191970","Indigo","#4B0082","DarkMagenta","#8B008B","Brown","#A52A2A","DarkRed","#8B0000","Sienna","#A0522D","SaddleBrown","#8B4513","DarkGoldenrod","#B8860B","Beige","#F5F5DC","HoneyDew","#F0FFF0","DimGray","#696969","OliveDrab","#6B8E23","ForestGreen","#228B22","DarkCyan","#008B8B","LightSlateGray","#778899","MediumBlue","#0000CD","DarkSlateBlue","#483D8B","DarkViolet","#9400D3","MediumVioletRed","#C71585","IndianRed","#CD5C5C","Firebrick","#B22222","Chocolate","#D2691E","Peru","#CD853F","Goldenrod","#DAA520","LightGoldenrodYellow","#FAFAD2","MintCream","#F5FFFA","DarkGray","#A9A9A9","YellowGreen","#9ACD32","SeaGreen","#2E8B57","CadetBlue","#5F9EA0","SteelBlue","#4682B4","RoyalBlue","#4169E1","BlueViolet","#8A2BE2","DarkOrchid","#9932CC","DeepPink","#FF1493","RosyBrown","#BC8F8F","Crimson","#DC143C","DarkOrange","#FF8C00","BurlyWood","#DEB887","DarkKhaki","#BDB76B","LightYellow","#FFFFE0","Azure","#F0FFFF","LightGray","#D3D3D3","LawnGreen","#7CFC00","MediumSeaGreen","#3CB371","LightSeaGreen","#20B2AA","DeepSkyBlue","#00BFFF","DodgerBlue","#1E90FF","SlateBlue","#6A5ACD","MediumOrchid","#BA55D3","PaleVioletRed","#DB7093","Salmon","#FA8072","OrangeRed","#FF4500","SandyBrown","#F4A460","Tan","#D2B48C","Gold","#FFD700","Ivory","#FFFFF0","GhostWhite","#F8F8FF","Gainsboro","#DCDCDC","Chartreuse","#7FFF00","LimeGreen","#32CD32","MediumAquamarine","#66CDAA","DarkTurquoise","#00CED1","CornflowerBlue","#6495ED","MediumSlateBlue","#7B68EE","Orchid","#DA70D6","HotPink","#FF69B4","LightCoral","#F08080","Tomato","#FF6347","Orange","#FFA500","Bisque","#FFE4C4","Khaki","#F0E68C","Cornsilk","#FFF8DC","Linen","#FAF0E6","WhiteSmoke","#F5F5F5","GreenYellow","#ADFF2F","DarkSeaGreen","#8FBC8B","Turquoise","#40E0D0","MediumTurquoise","#48D1CC","SkyBlue","#87CEEB","MediumPurple","#9370DB","Violet","#EE82EE","LightPink","#FFB6C1","DarkSalmon","#E9967A","Coral","#FF7F50","NavajoWhite","#FFDEAD","BlanchedAlmond","#FFEBCD","PaleGoldenrod","#EEE8AA","Oldlace","#FDF5E6","Seashell","#FFF5EE","PaleGreen","#98FB98","SpringGreen","#00FF7F","Aquamarine","#7FFFD4","PowderBlue","#B0E0E6","LightSkyBlue","#87CEFA","LightSteelBlue","#B0C4DE","Plum","#DDA0DD","Pink","#FFC0CB","LightSalmon","#FFA07A","Wheat","#F5DEB3","Moccasin","#FFE4B5","AntiqueWhite","#FAEBD7","LemonChiffon","#FFFACD","FloralWhite","#FFFAF0","Snow","#FFFAFA","AliceBlue","#F0F8FF","LightGreen","#90EE90","MediumSpringGreen","#00FA9A","PaleTurquoise","#AFEEEE","LightCyan","#E0FFFF","LightBlue","#ADD8E6","Lavender","#E6E6FA","Thistle","#D8BFD8","MistyRose","#FFE4E1","Peachpuff","#FFDAB9","PapayaWhip","#FFEFD5"];var colorlist=[{n:OxO5882[0],h:OxO5882[1]},{n:OxO5882[2],h:OxO5882[3]},{n:OxO5882[4],h:OxO5882[5]},{n:OxO5882[6],h:OxO5882[7]},{n:OxO5882[8],h:OxO5882[9]},{n:OxO5882[10],h:OxO5882[11]},{n:OxO5882[12],h:OxO5882[13]},{n:OxO5882[14],h:OxO5882[15]},{n:OxO5882[16],h:OxO5882[17]},{n:OxO5882[18],h:OxO5882[19]},{n:OxO5882[20],h:OxO5882[21]},{n:OxO5882[22],h:OxO5882[23]},{n:OxO5882[24],h:OxO5882[25]},{n:OxO5882[26],h:OxO5882[27]},{n:OxO5882[28],h:OxO5882[29]},{n:OxO5882[30],h:OxO5882[31]}];var colormore=[{n:OxO5882[32],h:OxO5882[33]},{n:OxO5882[34],h:OxO5882[35]},{n:OxO5882[36],h:OxO5882[37]},{n:OxO5882[38],h:OxO5882[39]},{n:OxO5882[40],h:OxO5882[41]},{n:OxO5882[42],h:OxO5882[43]},{n:OxO5882[44],h:OxO5882[45]},{n:OxO5882[46],h:OxO5882[47]},{n:OxO5882[48],h:OxO5882[49]},{n:OxO5882[50],h:OxO5882[51]},{n:OxO5882[52],h:OxO5882[53]},{n:OxO5882[54],h:OxO5882[55]},{n:OxO5882[56],h:OxO5882[57]},{n:OxO5882[58],h:OxO5882[59]},{n:OxO5882[60],h:OxO5882[61]},{n:OxO5882[62],h:OxO5882[63]},{n:OxO5882[64],h:OxO5882[65]},{n:OxO5882[66],h:OxO5882[67]},{n:OxO5882[68],h:OxO5882[69]},{n:OxO5882[70],h:OxO5882[71]},{n:OxO5882[72],h:OxO5882[73]},{n:OxO5882[74],h:OxO5882[75]},{n:OxO5882[76],h:OxO5882[77]},{n:OxO5882[78],h:OxO5882[79]},{n:OxO5882[80],h:OxO5882[81]},{n:OxO5882[82],h:OxO5882[83]},{n:OxO5882[84],h:OxO5882[85]},{n:OxO5882[86],h:OxO5882[87]},{n:OxO5882[88],h:OxO5882[89]},{n:OxO5882[90],h:OxO5882[91]},{n:OxO5882[92],h:OxO5882[93]},{n:OxO5882[94],h:OxO5882[95]},{n:OxO5882[96],h:OxO5882[97]},{n:OxO5882[98],h:OxO5882[99]},{n:OxO5882[100],h:OxO5882[101]},{n:OxO5882[102],h:OxO5882[103]},{n:OxO5882[104],h:OxO5882[105]},{n:OxO5882[106],h:OxO5882[107]},{n:OxO5882[108],h:OxO5882[109]},{n:OxO5882[110],h:OxO5882[111]},{n:OxO5882[112],h:OxO5882[113]},{n:OxO5882[114],h:OxO5882[115]},{n:OxO5882[116],h:OxO5882[117]},{n:OxO5882[118],h:OxO5882[119]},{n:OxO5882[120],h:OxO5882[121]},{n:OxO5882[122],h:OxO5882[123]},{n:OxO5882[124],h:OxO5882[125]},{n:OxO5882[126],h:OxO5882[127]},{n:OxO5882[128],h:OxO5882[129]},{n:OxO5882[130],h:OxO5882[131]},{n:OxO5882[132],h:OxO5882[133]},{n:OxO5882[134],h:OxO5882[135]},{n:OxO5882[136],h:OxO5882[137]},{n:OxO5882[138],h:OxO5882[139]},{n:OxO5882[140],h:OxO5882[141]},{n:OxO5882[142],h:OxO5882[143]},{n:OxO5882[144],h:OxO5882[145]},{n:OxO5882[146],h:OxO5882[147]},{n:OxO5882[148],h:OxO5882[149]},{n:OxO5882[150],h:OxO5882[151]},{n:OxO5882[152],h:OxO5882[153]},{n:OxO5882[154],h:OxO5882[155]},{n:OxO5882[156],h:OxO5882[157]},{n:OxO5882[158],h:OxO5882[159]},{n:OxO5882[160],h:OxO5882[161]},{n:OxO5882[162],h:OxO5882[163]},{n:OxO5882[164],h:OxO5882[165]},{n:OxO5882[166],h:OxO5882[167]},{n:OxO5882[168],h:OxO5882[169]},{n:OxO5882[170],h:OxO5882[171]},{n:OxO5882[172],h:OxO5882[173]},{n:OxO5882[174],h:OxO5882[175]},{n:OxO5882[176],h:OxO5882[177]},{n:OxO5882[178],h:OxO5882[179]},{n:OxO5882[180],h:OxO5882[181]},{n:OxO5882[182],h:OxO5882[183]},{n:OxO5882[184],h:OxO5882[185]},{n:OxO5882[186],h:OxO5882[187]},{n:OxO5882[188],h:OxO5882[189]},{n:OxO5882[190],h:OxO5882[191]},{n:OxO5882[192],h:OxO5882[193]},{n:OxO5882[194],h:OxO5882[195]},{n:OxO5882[196],h:OxO5882[197]},{n:OxO5882[198],h:OxO5882[199]},{n:OxO5882[200],h:OxO5882[201]},{n:OxO5882[202],h:OxO5882[203]},{n:OxO5882[204],h:OxO5882[205]},{n:OxO5882[206],h:OxO5882[207]},{n:OxO5882[208],h:OxO5882[209]},{n:OxO5882[210],h:OxO5882[211]},{n:OxO5882[212],h:OxO5882[213]},{n:OxO5882[214],h:OxO5882[215]},{n:OxO5882[216],h:OxO5882[217]},{n:OxO5882[218],h:OxO5882[219]},{n:OxO5882[220],h:OxO5882[221]},{n:OxO5882[156],h:OxO5882[157]},{n:OxO5882[222],h:OxO5882[223]},{n:OxO5882[224],h:OxO5882[225]},{n:OxO5882[226],h:OxO5882[227]},{n:OxO5882[228],h:OxO5882[229]},{n:OxO5882[230],h:OxO5882[231]},{n:OxO5882[232],h:OxO5882[233]},{n:OxO5882[234],h:OxO5882[235]},{n:OxO5882[236],h:OxO5882[237]},{n:OxO5882[238],h:OxO5882[239]},{n:OxO5882[240],h:OxO5882[241]},{n:OxO5882[242],h:OxO5882[243]},{n:OxO5882[244],h:OxO5882[245]},{n:OxO5882[246],h:OxO5882[247]},{n:OxO5882[248],h:OxO5882[249]},{n:OxO5882[250],h:OxO5882[251]},{n:OxO5882[252],h:OxO5882[253]},{n:OxO5882[254],h:OxO5882[255]},{n:OxO5882[256],h:OxO5882[257]},{n:OxO5882[258],h:OxO5882[259]},{n:OxO5882[260],h:OxO5882[261]},{n:OxO5882[262],h:OxO5882[263]},{n:OxO5882[264],h:OxO5882[265]},{n:OxO5882[266],h:OxO5882[267]},{n:OxO5882[268],h:OxO5882[269]},{n:OxO5882[270],h:OxO5882[271]},{n:OxO5882[272],h:OxO5882[273]}];
		
		</script>
	</head>
	<body>
		<div id="ajaxdiv">
			<div class="tab-pane-control tab-pane" id="tabPane1">
				<div class="tab-row">
					<h2 class="tab">
						<a tabindex="-1" href='colorpicker.aspx?<%=GetDialogQueryString%>'>
							<span style="white-space:nowrap;">
								[[WebPalette]]
							</span>
						</a>
					</h2>
					<h2 class="tab selected">
							<a tabindex="-1" href='colorpicker_basic.aspx?<%=GetDialogQueryString%>'>
								<span style="white-space:nowrap;">
									[[NamedColors]]
								</span>
							</a>
					</h2>
					<h2 class="tab">
							<a tabindex="-1" href='colorpicker_more.aspx?<%=GetDialogQueryString%>'>
								<span style="white-space:nowrap;">
									[[CustomColor]]
								</span>
							</a>
					</h2>
				</div>
				<div class="tab-page">			
					<table class="colortable" align="center">
						<tr>
							<td colspan="16" height="16"><p align="left">Basic:
								</p>
							</td>
						</tr>
						<tr>
							<script>
								var OxOfa23=["length","\x3Ctd class=\x27colorcell\x27\x3E\x3Cdiv class=\x27colordiv\x27 style=\x27background-color:","\x27 title=\x27"," ","\x27 cname=\x27","\x27 cvalue=\x27","\x27\x3E\x3C/div\x3E\x3C/td\x3E",""];var arr=[];for(var i=0;i<colorlist[OxOfa23[0]];i++){arr.push(OxOfa23[1]);arr.push(colorlist[i].n);arr.push(OxOfa23[2]);arr.push(colorlist[i].n);arr.push(OxOfa23[3]);arr.push(colorlist[i].h);arr.push(OxOfa23[4]);arr.push(colorlist[i].n);arr.push(OxOfa23[5]);arr.push(colorlist[i].h);arr.push(OxOfa23[6]);} ;document.write(arr.join(OxOfa23[7]));
							</script>
						</tr>
						<tr>
							<td colspan="16" height="12"><p align="left"></p>
							</td>
						</tr>
						<tr>
							<td colspan="16"><p align="left">Additional:
								</p>
							</td>
						</tr>
						<script>
							var OxO31dd=["length","\x3Ctr\x3E","\x3Ctd class=\x27colorcell\x27\x3E\x3Cdiv class=\x27colordiv\x27 style=\x27background-color:","\x27 title=\x27"," ","\x27 cname=\x27","\x27 cvalue=\x27","\x27\x3E\x3C/div\x3E\x3C/td\x3E","\x3C/tr\x3E",""];var arr=[];for(var i=0;i<colormore[OxO31dd[0]];i++){if(i%16==0){arr.push(OxO31dd[1]);} ;arr.push(OxO31dd[2]);arr.push(colormore[i].n);arr.push(OxO31dd[3]);arr.push(colormore[i].n);arr.push(OxO31dd[4]);arr.push(colormore[i].h);arr.push(OxO31dd[5]);arr.push(colormore[i].n);arr.push(OxO31dd[6]);arr.push(colormore[i].h);arr.push(OxO31dd[7]);if(i%16==15){arr.push(OxO31dd[8]);} ;} ;if(colormore%16>0){arr.push(OxO31dd[8]);} ;document.write(arr.join(OxO31dd[9]));
						</script>
						<tr>
							<td colspan="16" height="8">
							</td>
						</tr>
						<tr>
							<td colspan="16" height="12">
								<input checked id="CheckboxColorNames" style="width: 16px; height: 20px" type="checkbox">
								<span style="width: 118px;">Use color names</span>
							</td>
						</tr>
						<tr>
							<td colspan="16" height="12">
							</td>
						</tr>
						<tr>
							<td colspan="16" valign="middle" height="24">
							<span style="height:24px;width:50px;vertical-align:middle;">Color : </span>&nbsp;
							<input type="text" id="divpreview" size="7" maxlength="7" style="width:180px;height:24px;border:#a0a0a0 1px solid; Padding:4;"/>
					
							</td>
						</tr>
				</table>
			</div>
		</div>
		<div id="container-bottom">
			<input type="button" id="buttonok" value="[[OK]]" class="formbutton" style="width:70px"	onclick="do_insert();" /> 
			&nbsp;&nbsp;&nbsp;&nbsp; 
			<input type="button" id="buttoncancel" value="[[Cancel]]" class="formbutton" style="width:70px"	onclick="do_Close();" />	
		</div>
	</div>
	</body>
</html>

