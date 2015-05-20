<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 
<head>
<title>{{.q}}-Google</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="/static/css/index.css" type="text/css"> 
<link rel="stylesheet" href="/static/css/search.css" type="text/css"> 
<style type="text/css">
<!--

.hend {
	font-size: 12px;
	background:#CCCCCC;
	height: 31px;	
}

/*输入宽*/
.gsfi{
	height: 31px;
	font: 17px arial,sans-serif;
}
/*按钮*/
.submit {
	background-image:url(/static/img/search.png);
	height: 31px;
	width: 74px;
	border:none;
	cursor:hand;
}

.bia{display:block;position:absolute}
.birrg {
	font-size: 13px;
	overflow: hidden;
	width:515px;
	height: 92px;
}
ul.rg_ul {
	white-space: normal;
	width:515px;
	height: 92px;
}
#imagebox_bigimages{
	width: 528px;
}
.bicc a {height: 90px;width: 117px;}

.bicc a img{max-width:117px;_width:expression(this.width > 117 ? "117px" : this.width}
#rso .srg li .rc{width: 528px;}
#rso .g{width: 528px;}


._sgd {
display: table-row;
vertical-align: top;
}

._qgd {
display: table-cell;
}

._pgd {
display: table-cell;
padding-left: 15px;
vertical-align: top;
}

</style>

<script type="text/javascript">
	var _speedMark = new Date();
	
	function init(){
		
		initLangugeColor();
		document.getElementById("myq").focus();
	}
	
	function initLangugeColor(){
	var lr = "";
		if(lr=="lang_zh-CN"){
			/* document.getElementById('lr_cn').className = "html_language_a_visited"; */
			document.getElementById('lr_cn').style.color = "red";
		}else if(lr=="lang_zh-TW"){
			/* document.getElementById('lr_tw').className = "html_language_a_visited"; */
			document.getElementById('lr_tw').style.color = "red";
		}else if(lr=="lang_en"){
			/* document.getElementById('lr_en').className = "html_language_a_visited"; */
			document.getElementById('lr_en').style.color = "red";
		}else if(lr==""){
			/* document.getElementById('lr_all').className = "html_language_a_visited"; */
			document.getElementById('lr_all').style.color = "red";
		}
	}
	
	function a(name,data,falg){
		try{
			var image = "";
			if(document.getElementsByName(name).length>0)
				image = document.getElementsByName(name)[0];
			else if(document.getElementById(name)){
				image = document.getElementById(name);
			}
			image.src = data
						
		}catch(e){
			
		}
		
	}
	
	
	
window.onload =	init;
</script>
<script type="text/javascript" src="/static/js/google.js"></script>

</head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30" bgcolor="#000000" class="menu">
    		&nbsp;&nbsp; &nbsp;&nbsp; 
   			<a href="/">搜索 </a>&nbsp;&nbsp;
   			<a href="http://www.google.cn/maps"  target="_blank" >地图</a> &nbsp;&nbsp;
   			<a href="http://translate.google.cn/?hl=zh-CN&tab=wT" target="_blank">翻译</a> &nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td valign="middle">
	 <form id="form1" name="form1" method="get" action="/search" onSubmit="return checkform();">
		  <table  width="100%"   bgcolor="#f1f1f1">
           <tr height="69">
             <td width="140"><a href="/"><img src="/static/img/logo2.png" width="130" style="border: none;" /></a></td>
             <td width="40%"><input class="gsfi" id="myq" name="q" type="text" size="70" value="{{.q}}" /></td>
             <td width="8%"><input class="submit" type="submit"  value=""  /></td>
             <td>&nbsp; </td>
           </tr>
        </table>
	  </form>
	  </td>
  </tr>
</table>

 <table width="978" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width='150px'>&nbsp;&nbsp;</td>
    <td width='528px'><div id="resultStats">{{.responseData.ResultStats}}</div></div></td>
    <td width='300px'> &nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td id="html_language" width='150px' valign="top">
       <a href="/search" id="lr_all">所有页面</a></br></br>
    </td>
    
    <td>
	<ol eid="RZDPVIiFNsbCmAWoyoKYDA" id="rso">
		<div class="srg">
			{{range .responseData.Results}}  
				<li class="g">
					<div class="rc" data-hveid="29">
						<h3 class="r">
							<a href="{{.Href}}" target="_blank">{{str2html .Title}}</a>
						</h3>
						<div class="s">
							
							<div>
								<span class="st">{{str2html .Content}}</span>
							</div>
						</div>
					</div>
				</li>
			{{end}}
			
			
		</div>
	</ol>
    </td>
  </tr>
   
 {{if .responseData.Botstuff}}
 <tr>
	<td></td>
	<td><hr class="rgsep">
		<div class="med" id="extrares" style="padding: 0 8px">
			<div data-jibp="h" data-jiis="uc" id="botstuff">
				{{str2html .responseData.Botstuff}}
				
			</div>
		</div></td>
	<td></td>
</tr>
  
{{end}}
  
{{if .responseData.Pages}}
  <tr>
  <td></td>
    <td><div id="navcnt">
	
		{{str2html .responseData.Pages}}
	
	
	</div></td>
	<td></td>
  </tr>
{{end}}
  
  </table>


 <table width="100%" border="0" cellpadding="0" cellspacing="0"> 
  <tr>
    <td align="center" valign="middle" class="hend">搜索结果由<a href="http://www.google.com/" target="_blank">Google</a>实时提供</td>
  </tr>
</table>
</body>
</html>
