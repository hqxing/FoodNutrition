var OxO119e=["onload","contentWindow","idSource","innerHTML","body","document","","designMode","on","contentEditable","fontFamily","style","Tahoma","fontSize","11px","color","black","background","white","length","\x3C$1$3","\x26nbsp;","$1","\x26amp;","\x26lt;","\x26gt;","\x26#39;","\x26quot;"];var editor=Window_GetDialogArguments(window);function cancel(){Window_CloseDialog(window);} ;window[OxO119e[0]]=function (){var iframe=document.getElementById(OxO119e[2])[OxO119e[1]];iframe[OxO119e[5]][OxO119e[4]][OxO119e[3]]=OxO119e[6];iframe[OxO119e[5]][OxO119e[7]]=OxO119e[8];iframe[OxO119e[5]][OxO119e[4]][OxO119e[9]]=true;iframe[OxO119e[5]][OxO119e[4]][OxO119e[11]][OxO119e[10]]=OxO119e[12];iframe[OxO119e[5]][OxO119e[4]][OxO119e[11]][OxO119e[13]]=OxO119e[14];iframe[OxO119e[5]][OxO119e[4]][OxO119e[11]][OxO119e[15]]=OxO119e[16];iframe[OxO119e[5]][OxO119e[4]][OxO119e[11]][OxO119e[17]]=OxO119e[18];iframe.focus();} ;function insertContent(){var iframe=document.getElementById(OxO119e[2])[OxO119e[1]];var Oxce=iframe[OxO119e[5]][OxO119e[4]][OxO119e[3]];if(Oxce&&Oxce[OxO119e[19]]>0){Oxce=_CleanCode(Oxce);if(Oxce.match(/<*>/g)){Oxce=String_HtmlEncode(Oxce);} ;editor.PasteHTML(Oxce);Window_CloseDialog(window);} ;} ;function _CleanCode(Ox2d){Ox2d=Ox2d.replace(/<\\?\??xml[^>]>/gi,OxO119e[6]);Ox2d=Ox2d.replace(/<([\w]+) class=([^ |>]*)([^>]*)/gi,OxO119e[20]);Ox2d=Ox2d.replace(/<(\w[^>]*) lang=([^ |>]*)([^>]*)/gi,OxO119e[20]);Ox2d=Ox2d.replace(/\s*mso-[^:]+:[^;"]+;?/gi,OxO119e[6]);Ox2d=Ox2d.replace(/<o:p>\s*<\/o:p>/g,OxO119e[6]);Ox2d=Ox2d.replace(/<o:p>.*?<\/o:p>/g,OxO119e[21]);Ox2d=Ox2d.replace(/<\/?\w+:[^>]*>/gi,OxO119e[6]);Ox2d=Ox2d.replace(/<\!--.*-->/g,OxO119e[6]);Ox2d=Ox2d.replace(/<\\?\?xml[^>]*>/gi,OxO119e[6]);Ox2d=Ox2d.replace(/<(\w+)[^>]*\sstyle="[^"]*DISPLAY\s?:\s?none(.*?)<\/\1>/ig,OxO119e[6]);Ox2d=Ox2d.replace(/<span\s*[^>]*>\s*&nbsp;\s*<\/span>/gi,OxO119e[21]);Ox2d=Ox2d.replace(/<span\s*[^>]*><\/span>/gi,OxO119e[6]);Ox2d=Ox2d.replace(/\s*style="\s*"/gi,OxO119e[6]);Ox2d=Ox2d.replace(/<([^\s>]+)[^>]*>\s*<\/\1>/g,OxO119e[6]);Ox2d=Ox2d.replace(/<([^\s>]+)[^>]*>\s*<\/\1>/g,OxO119e[6]);Ox2d=Ox2d.replace(/<([^\s>]+)[^>]*>\s*<\/\1>/g,OxO119e[6]);while(Ox2d.match(/<span\s*>(.*?)<\/span>/gi)){Ox2d=Ox2d.replace(/<span\s*>(.*?)<\/span>/gi,OxO119e[22]);} ;while(Ox2d.match(/<font\s*>(.*?)<\/font>/gi)){Ox2d=Ox2d.replace(/<font\s*>(.*?)<\/font>/gi,OxO119e[22]);} ;Ox2d=Ox2d.replace(/<a name="?OLE_LINK\d+"?>((.|[\r\n])*?)<\/a>/gi,OxO119e[22]);Ox2d=Ox2d.replace(/<a name="?_Hlt\d+"?>((.|[\r\n])*?)<\/a>/gi,OxO119e[22]);Ox2d=Ox2d.replace(/<a name="?_Toc\d+"?>((.|[\r\n])*?)<\/a>/gi,OxO119e[22]);Ox2d=Ox2d.replace(/<p([^>])*>(&nbsp;)*\s*<\/p>/gi,OxO119e[6]);Ox2d=Ox2d.replace(/<p([^>])*>(&nbsp;)<\/p>/gi,OxO119e[6]);return Ox2d;} ;function String_HtmlEncode(Ox283){if(Ox283==null){return OxO119e[6];} ;Ox283=Ox283.replace(/&/g,OxO119e[23]);Ox283=Ox283.replace(/</g,OxO119e[24]);Ox283=Ox283.replace(/>/g,OxO119e[25]);Ox283=Ox283.replace(/'/g,OxO119e[26]);Ox283=Ox283.replace(/\x22/g,OxO119e[27]);return Ox283;} ;