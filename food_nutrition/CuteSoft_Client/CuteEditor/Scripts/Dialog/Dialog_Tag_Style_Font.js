var OxO6613=["SetStyle","length","","GetStyle","GetText",":",";","cssText","sel_font","div_font_detail","sel_fontfamily","cb_decoration_under","cb_decoration_over","cb_decoration_through","cb_style_bold","cb_style_italic","sel_fontTransform","sel_fontsize","inp_fontsize","sel_fontsize_unit","inp_color","inp_color_Preview","outer","div_demo","disabled","selectedIndex","style","value","font","fontFamily","color","backgroundColor","textDecoration","checked","overline","underline","line-through","fontWeight","bold","fontStyle","italic","fontSize","options","textTransform","font-family","overline ","underline ","line-through ","onclick"];function pause(Ox4a3){var Oxa8= new Date();var Ox4a4=Oxa8.getTime()+Ox4a3;while(true){Oxa8= new Date();if(Oxa8.getTime()>Ox4a4){return ;} ;} ;} ;function StyleClass(Ox201){var Ox4a6=[];var Ox4a7={};if(Ox201){Ox4ac();} ;this[OxO6613[0]]=function SetStyle(name,Ox4f,Ox4a9){name=name.toLowerCase();for(var i=0;i<Ox4a6[OxO6613[1]];i++){if(Ox4a6[i]==name){break ;} ;} ;Ox4a6[i]=name;Ox4a7[name]=Ox4f?(Ox4f+(Ox4a9||OxO6613[2])):OxO6613[2];} ;this[OxO6613[3]]=function GetStyle(name){name=name.toLowerCase();return Ox4a7[name]||OxO6613[2];} ;this[OxO6613[4]]=function Ox4ab(){var Ox201=OxO6613[2];for(var i=0;i<Ox4a6[OxO6613[1]];i++){var Ox27=Ox4a6[i];var p=Ox4a7[Ox27];if(p){Ox201+=Ox27+OxO6613[5]+p+OxO6613[6];} ;} ;return Ox201;} ;function Ox4ac(){var arr=Ox201.split(OxO6613[6]);for(var i=0;i<arr[OxO6613[1]];i++){var p=arr[i].split(OxO6613[5]);var Ox27=p[0].replace(/^\s+/g,OxO6613[2]).replace(/\s+$/g,OxO6613[2]).toLowerCase();Ox4a6[Ox4a6[OxO6613[1]]]=Ox27;Ox4a7[Ox27]=p[1];} ;} ;} ;function GetStyle(Ox137,name){return  new StyleClass(Ox137.cssText).GetStyle(name);} ;function SetStyle(Ox137,name,Ox4f,Ox4ad){var Ox4ae= new StyleClass(Ox137.cssText);Ox4ae.SetStyle(name,Ox4f,Ox4ad);Ox137[OxO6613[7]]=Ox4ae.GetText();} ;function ParseFloatToString(Ox24){var Ox8=parseFloat(Ox24);if(isNaN(Ox8)){return OxO6613[2];} ;return Ox8+OxO6613[2];} ;var sel_font=Window_GetElement(window,OxO6613[8],true);var div_font_detail=Window_GetElement(window,OxO6613[9],true);var sel_fontfamily=Window_GetElement(window,OxO6613[10],true);var cb_decoration_under=Window_GetElement(window,OxO6613[11],true);var cb_decoration_over=Window_GetElement(window,OxO6613[12],true);var cb_decoration_through=Window_GetElement(window,OxO6613[13],true);var cb_style_bold=Window_GetElement(window,OxO6613[14],true);var cb_style_italic=Window_GetElement(window,OxO6613[15],true);var sel_fontTransform=Window_GetElement(window,OxO6613[16],true);var sel_fontsize=Window_GetElement(window,OxO6613[17],true);var inp_fontsize=Window_GetElement(window,OxO6613[18],true);var sel_fontsize_unit=Window_GetElement(window,OxO6613[19],true);var inp_color=Window_GetElement(window,OxO6613[20],true);var inp_color_Preview=Window_GetElement(window,OxO6613[21],true);var outer=Window_GetElement(window,OxO6613[22],true);var div_demo=Window_GetElement(window,OxO6613[23],true);UpdateState=function UpdateState_Font(){inp_fontsize[OxO6613[24]]=sel_fontsize_unit[OxO6613[24]]=(sel_fontsize[OxO6613[25]]>0);div_font_detail[OxO6613[24]]=sel_font[OxO6613[25]]>0;div_demo[OxO6613[26]][OxO6613[7]]=element[OxO6613[26]][OxO6613[7]];} ;SyncToView=function SyncToView_Font(){sel_font[OxO6613[27]]=element[OxO6613[26]][OxO6613[28]].toLowerCase()||null;sel_fontfamily[OxO6613[27]]=element[OxO6613[26]][OxO6613[29]];inp_color[OxO6613[27]]=element[OxO6613[26]][OxO6613[30]];inp_color[OxO6613[26]][OxO6613[31]]=inp_color[OxO6613[27]];var Ox5e4=element[OxO6613[26]][OxO6613[32]].toLowerCase();cb_decoration_over[OxO6613[33]]=Ox5e4.indexOf(OxO6613[34])!=-1;cb_decoration_under[OxO6613[33]]=Ox5e4.indexOf(OxO6613[35])!=-1;cb_decoration_through[OxO6613[33]]=Ox5e4.indexOf(OxO6613[36])!=-1;cb_style_bold[OxO6613[33]]=element[OxO6613[26]][OxO6613[37]]==OxO6613[38];cb_style_italic[OxO6613[33]]=element[OxO6613[26]][OxO6613[39]]==OxO6613[40];sel_fontsize[OxO6613[27]]=element[OxO6613[26]][OxO6613[41]];sel_fontsize_unit[OxO6613[25]]=0;if(sel_fontsize[OxO6613[25]]==-1){if(ParseFloatToString(element[OxO6613[26]].fontSize)){sel_fontsize[OxO6613[27]]=ParseFloatToString(element[OxO6613[26]].fontSize);for(var i=0;i<sel_fontsize_unit[OxO6613[42]][OxO6613[1]];i++){var Ox142=sel_fontsize_unit.options(i)[OxO6613[27]];if(Ox142&&element[OxO6613[26]][OxO6613[41]].indexOf(Ox142)!=-1){sel_fontsize_unit[OxO6613[25]]=i;break ;} ;} ;} ;} ;sel_fontTransform[OxO6613[27]]=element[OxO6613[26]][OxO6613[43]];} ;SyncTo=function SyncTo_Font(element){SetStyle(element.style,OxO6613[28],sel_font.value);if(sel_fontfamily[OxO6613[27]]){element[OxO6613[26]][OxO6613[29]]=sel_fontfamily[OxO6613[27]];} else {SetStyle(element.style,OxO6613[44],OxO6613[2]);} ;try{element[OxO6613[26]][OxO6613[30]]=inp_color[OxO6613[27]]||OxO6613[2];} catch(x){element[OxO6613[26]][OxO6613[30]]=OxO6613[2];} ;var Ox5e6=cb_decoration_over[OxO6613[33]];var Ox5e7=cb_decoration_under[OxO6613[33]];var Ox5e8=cb_decoration_through[OxO6613[33]];if(!Ox5e6&&!Ox5e7&&!Ox5e8){element[OxO6613[26]][OxO6613[32]]=OxO6613[2];} else {var Ox58=OxO6613[2];if(Ox5e6){Ox58+=OxO6613[45];} ;if(Ox5e7){Ox58+=OxO6613[46];} ;if(Ox5e8){Ox58+=OxO6613[47];} ;element[OxO6613[26]][OxO6613[32]]=Ox58.substr(0,Ox58[OxO6613[1]]-1);} ;element[OxO6613[26]][OxO6613[37]]=cb_style_bold[OxO6613[33]]?OxO6613[38]:OxO6613[2];element[OxO6613[26]][OxO6613[39]]=cb_style_italic[OxO6613[33]]?OxO6613[40]:OxO6613[2];element[OxO6613[26]][OxO6613[43]]=sel_fontTransform[OxO6613[27]]||OxO6613[2];if(sel_fontsize[OxO6613[25]]>0){element[OxO6613[26]][OxO6613[41]]=sel_fontsize[OxO6613[27]];} else {if(ParseFloatToString(inp_fontsize.value)){element[OxO6613[26]][OxO6613[41]]=ParseFloatToString(inp_fontsize.value)+sel_fontsize_unit[OxO6613[27]];} else {element[OxO6613[26]][OxO6613[41]]=OxO6613[2];} ;} ;} ;inp_color[OxO6613[48]]=inp_color_Preview[OxO6613[48]]=function inp_color_onclick(){SelectColor(inp_color,inp_color_Preview);} ;