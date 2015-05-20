/**
 * 检查关键字是否输入，输入关键字才能提交表单
 * @returns {Boolean}
 */
function checkform(){
		if (document.getElementById("myq").value.replace(/(^\s*)|(\s*$)/g,"")==""){ 
			document.getElementById("myq").focus();
			return(false); 
		} 
}