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
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">宿舍管理</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top"><form id="form1" name="form1" method="post" action="DomitoryManager.action">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="22%" height="30" style="padding-left:20px;"> 功能导航： <a href="DomitoryAdd.action">添加宿舍</a></td>
                    <td width="78%">查询：
                      <select name="Domitory_BuildingID" id="Domitory_BuildingID">
                      <option value="">全部楼宇</option>
                      <s:iterator value="buildinglist">
                      <option value="${Building_ID}">${Building_Name}</option>
                      </s:iterator>
                      </select>
                      <select name="SearchRow" id="SearchRow">
                        <option value="Domitory_Name">寝室号</option>
                        <option value="Domitory_Tel">电话</option>
                      </select>
                      <input name="SearchKey" type="text" class="mini-textbox" id="SearchKey">
                      <a href="javascript:$('#form1').submit();" name="button" id="button" class="mini-button">点击查询</a>
                      </td>
                  </tr>
                </table>
              </form>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr align="center"  class="t1">
                    <td height="25" bgcolor="#D5E4F4"><strong>楼宇</strong></td>
                    <td bgcolor="#D5E4F4"><strong>寝室号</strong></td>
                    <td bgcolor="#D5E4F4"><strong>寝室类型</strong></td>
                    <td bgcolor="#D5E4F4"><strong>人数</strong></td>
                    <td bgcolor="#D5E4F4"><strong>电话</strong></td>
                    <td bgcolor="#D5E4F4"><strong>操作</strong></td>
                  </tr>
                  <s:iterator id="aa" value="list">
                    <tr align="center">
                      <td height="25" align="center">${Building_Name}</td>
                      <td>${Domitory_Name}</td>
                      <td>${Domitory_Type}</td>
                      <td align="center">${Domitory_Number}</td>
                      <td align="center">${Domitory_Tel}</td>
                      <td align="center"><a href="DomitoryUpdate.action?Domitory_ID=${Domitory_ID}">修改</a> <a href="DomitoryDel.action?Domitory_ID=${Domitory_ID}" onClick="return confirm('确定要删除该宿舍吗？')">删除</a></td>
                    </tr>
                  </s:iterator>
                </table></td>
            </tr>
          </table>
</body>
</html>
