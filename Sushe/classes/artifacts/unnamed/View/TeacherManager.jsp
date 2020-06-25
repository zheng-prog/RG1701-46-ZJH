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
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">楼宇管理员管理</td>
            </tr>
            <tr>
              <td align="center" valign="top">
              <form id="form1" name="form1" method="post" action="TeacherManager.action">
                <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="28%" height="30" style="padding-left:20px;"> 功能导航： <a href="TeacherAdd.jsp">添加楼宇管理员</a></td>
                    <td width="72%">查询：
                      <select name="SearchRow" id="SearchRow">
                        <option value="Teacher_Name">姓名</option>
                        <option value="Teacher_Tel">电话</option>
                        <option value="Teacher_Username">用户名</option>
                      </select>
                      <input name="SearchKey" type="text" class="mini-textbox" id="SearchKey">
                      <a class="mini-button" name="button" id="button" href="javascript:sc()">查询</a>
                      <script type="text/javascript">
                      	function sc(){
                      		$("#form1").submit();
                      	}
                      </script>
                    </td>
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
                      <td align="center"><a href="TeacherUpdate.action?Teacher_ID=${Teacher_ID}">修改</a> <a href="TeacherDel.action?Teacher_ID=${Teacher_ID}" onClick="return confirm('确定要删除该楼宇管理员吗？')">删除</a></td>
                    </tr>
                  </s:iterator>
                </table></td>
            </tr>
          </table>
  
</body>
</html>
