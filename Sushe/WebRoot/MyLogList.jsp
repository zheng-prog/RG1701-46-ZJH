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
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">学生缺寝记录</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top"><form id="form1" name="form1" method="post" action="MyLogList.action">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="28%" height="30" style="padding-left:20px;"> 功能导航： <a href="MyStudent.action">返回上层</a></td>
                    <td width="72%">查询：
                      <select name="Domitory_ID" id="Domitory_ID">
                        <option value="">全部寝室</option>
                        <s:iterator  value="domitorylist">
                        <option value="${Domitory_ID}">${Domitory_Name}</option>
                        </s:iterator>
                      </select>
                      <select name="SearchRow" id="SearchRow">
                        <option value="Student_Name">姓名</option>
                        <option value="Student_Username">学号</option>
                        <option value="Student_Class">班级</option>
                      </select>
                      <input name="SearchKey" type="text" class="mini-textbox" id="SearchKey">
                      <a href="javascript:$('#form1').submit();" class="mini-button" name="button" id="button" >点击查询</a>
                      <label for="Building_ID"></label>
                      <input name="Building_ID" type="text" class="noshow" id="Building_ID" value="${Building_ID}"></td>
                  </tr>
                </table>
              </form>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr align="center"  class="t1">
                    <td height="25" bgcolor="#D5E4F4"><strong>寝室号</strong></td>
                    <td bgcolor="#D5E4F4"><strong>姓名</strong></td>
                    <td bgcolor="#D5E4F4"><strong>性别</strong></td>
                    <td bgcolor="#D5E4F4"><strong>班级</strong></td>
                    <td bgcolor="#D5E4F4"><strong>日期</strong></td>
                    <td bgcolor="#D5E4F4"><strong>备注</strong></td>
                    </tr>
                  <s:iterator id="aa" value="list">
                    <tr align="center">
                      <td height="25" align="center">${Domitory_Name}</td>
                      <td>${Student_Name}</td>
                      <td>${Student_Sex}</td>
                      <td>${Student_Class}</td>
                      <td>${Log_Date}</td>
                      <td>${Log_Remark}</td>
                      </tr>
                  </s:iterator>
                </table></td>
            </tr>
          </table>
</body>
</html>
