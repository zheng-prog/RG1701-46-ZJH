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
   
   if(isNull(form1.Student_Username.value)){  
   alert("请输入学生学号！"); 
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
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">学生寝室调换</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top"><form id="form1" name="form1" method="post" action="StudentTH.action" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="38%" height="30" align="right">&nbsp;</td>
                    <td width="62%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>请输入要调换寝室学生的学号：</td>
                    <td align="left"><label for="Student_ID"></label>
                      <input type="text" name="Student_Username" id="Student_Username" class="mini-textbox" /></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td align="left"><a href="javascript:mycheck();" class="mini-button" name="button" id="button">确定</a></td>
                  </tr>
                </table>
              </form></td>
            </tr>
          </table>
</body>
</html>
