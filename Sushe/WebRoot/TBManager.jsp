<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>校园宿舍管理系统</title>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="Style/Style.css" rel="stylesheet" type="text/css" />
    <link href="MiniUI/themes/default/miniui.css" rel="stylesheet" type="text/css" media="all" >
	<link href="MiniUI/themes/jqueryui-cupertino/skin.css" rel="stylesheet" type="text/css" media="all" >
    <link href="MiniUI/themes/icons.css" rel="stylesheet" type="text/css" media="all" >
    <script type="text/javascript" src="MiniUI/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="MiniUI/miniui.js"></script>
</head>
<script language="JavaScript">


function mycheck(){
   if(isNull(form1.TB_TeacherID.value)){  
   alert("请选择要添加的管理员！"); 
   return false;
   }
}

function isNull(str){
if ( str == "" ) return true;
var regu = "^[ ]+$";
var re = new RegExp(regu);
return re.test(str);
}
   
   
</script>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">楼宇管理员设置</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top">
              <form name="form1" id="form1" method="post" action="TBAddSave.action">
                <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="42%" height="30" style="padding-left:20px;"> 功能导航： <a href="BuildingManager.action">返回上层</a></td>
                    <td width="58%">添加管理员：
                      <select name="TB_TeacherID" id="TB_TeacherID">
                        <option value="">请选择</option>
                        <s:iterator value="teacherlist">
                        <option value="${Teacher_ID}">${Teacher_Name}</option>
                        </s:iterator>
                      </select>
                      <a class="mini-button" type="button" name="button" href="javascript:addSub();" id="button">添加</a>
                      <script type="text/javascript">
                      	function addSub(){
                      		var temp = document.getElementById("TB_TeacherID").value;
                      		if(temp != ""){
                      			window.document.getElementById("form1").submit();
                      		}
                      	}
                      </script>
                      <label for="TB_BuildingID"></label>
                      <input name="TB_BuildingID" type="text" class="noshow" id="TB_BuildingID" value="${Building_ID}"></td>
                  </tr>
                </table>
              </form>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr align="center"  class="t1">
                    <td height="25" bgcolor="#D5E4F4"><strong>姓名</strong></td>
                    <td bgcolor="#D5E4F4"><strong>性别</strong></td>
                    <td bgcolor="#D5E4F4"><strong>电话</strong></td>
                    <td bgcolor="#D5E4F4"><strong>用户名</strong></td>
                    <td bgcolor="#D5E4F4"><strong>操作</strong></td>
                  </tr>
                  <s:iterator id="aa" value="list">
                    <tr align="center">
                      <td height="25" align="center">${Teacher_Name}</td>
                      <td>${Teacher_Sex}</td>
                      <td>${Teacher_Tel}</td>
                      <td align="center">${Teacher_Username}</td>
                      <td align="center"><a href="TBDel.action?TB_ID=${TB_ID}&Building_ID=${TB_BuildingID}" onClick="return confirm('确定要将该管理员从该楼宇移除吗？')">移除</a></td>
                    </tr>
                  </s:iterator>
                </table></td>
            </tr>
          </table>
</body>
</html>
