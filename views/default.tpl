<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Google</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="Google,谷歌">
<meta http-equiv="description" content="Google">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="/static/css/index.css" type="text/css"> 
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
	
	height: 31px;
	width: 94px;
	cursor:hand;
}



</style>
<script type="text/javascript">
	var _speedMark = new Date()
	window.onload = function(){   
		   document.getElementById("myq").focus();
	}; 
	
</script>
<script type="text/javascript" src="/static/js/google.js"></script>
</head>


<body>
		  <table  width="100%" height="100%">
		  <form id="form1" name="form1" method="get" action="/search" onsubmit="return checkform();">
		   <tr>
   			<td height="30" bgcolor="#000000" class="menu">
		   			&nbsp;&nbsp; &nbsp;&nbsp; 
		   			<a href="/">搜索 </a>&nbsp;&nbsp; 
   					<a href="http://www.google.cn/maps"  target="_blank" >地图</a> &nbsp;&nbsp;
   					<a href="http://translate.google.cn/?hl=zh-CN&tab=wT" target="_blank">翻译</a> &nbsp;&nbsp;
   			</td>
 		   </tr>
 		   
           <tr height="250PX">
             <td >
			 <div align="center">
			 <br/><br/><br/><br/><br/><br/>
			 <img src="/static/img/logo2.png" height="95px" /></div></td>
		  </tr>
		  <tr height="50PX">
             <td ><div align="center">
               <input class="gsfi" id="myq"  name="q" type="text" size="70" />
             </div></td>
		 </tr>
		 <tr height="50PX">
             <td> &nbsp;&nbsp; <div align="center">
               <input class="submit" type="submit" value="Google搜索" />
            </div></td>
           </tr>
		   <tr>
             <td align="center" valign="middle" > &nbsp;&nbsp;Google.com</td>
           </tr>
		  <tr height="30PX">
		    <td align="center" valign="middle" class="hend">搜索结果由<a href="http://www.google.com/" target="_blank">Google</a>实时提供</td>
		   </tr>
		    </form>
        </table>
</body>
</html>
