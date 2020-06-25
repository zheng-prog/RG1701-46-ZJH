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
   if(isNull(form1.Building_Name.value)){  
   alert("请输入名称！"); 
   }else{
	   $("#form1").submit();
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
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">添加楼宇</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top"><form id="form1" name="form1" method="post" action="BuildingAddSave.action" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="33%" height="30" align="right">&nbsp;</td>
                    <td width="67%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>名称：</td>
                    <td align="left"><input name="Building_Name" type="text" class="mini-textbox" id="Building_Name"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right">简介：</td>
                    <td align="left"><input name="Building_Introduction" id="Building_Introduction" class="mini-textbox" /></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td align="left"><a href="javascript:mycheck();" name="button" id="button" class="mini-button">添加楼宇</a>
                      &nbsp;&nbsp;
                      <a class="mini-button" name="button2" id="button2" href="javascript:history.back(-1);">返回上页</a>
                      </td>
                  </tr>
                </table>
              </form></td>
            </tr>
          </table>
</body>
</html>
