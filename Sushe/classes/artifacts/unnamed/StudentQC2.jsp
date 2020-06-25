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
   
   if(isNull(form1.Building_ID.value)){
   alert("请选择楼宇！");
   }else if(isNull(form1.Domitory_ID.value)){
   alert("请选择寝室！");
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
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">学生迁出登记</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top">
              <form id="form1" name="form1" method="post" action="StudentQCSave.action" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="30" colspan="2" align="center" style="color:red;">此功能只适用于毕业的学生迁出，迁出后将不可恢复！ 确定要迁出学生吗？</td>
                    </tr>
                  <tr>
                    <td height="30" align="right">学生学号：</td>
                    <td align="left"><s:property value='cnbean.Student_Username'/></td>
                  </tr>
                  <tr>
                    <td height="30" align="right">学生姓名：</td>
                    <td align="left"><s:property value='cnbean.Student_Name'/></td>
                  </tr>
                  <tr>
                    <td height="30" align="right">学生性别：</td>
                    <td align="left"><s:property value='cnbean.Student_Sex'/></td>
                  </tr>
                  <tr>
                    <td height="30" align="right">目前楼宇：</td>
                    <td align="left"><s:property value='cnbean.Building_Name'/></td>
                  </tr>
                  <tr>
                    <td width="33%" height="30" align="right">目前寝室：</td>
                    <td width="67%"  align="left"><s:property value='cnbean.Domitory_Name'/></td>
                  </tr>
                  <tr>
                    <td height="30" align="right">迁出备注：</td>
                    <td align="left"><textarea name="Out_Remark" id="Out_Remark" cols="45" rows="5"></textarea></td>
                  </tr>
                  <tr>
                    <td><input name="Student_ID" type="text" class="noshow" id="Student_ID" value="<s:property value='cnbean.Student_ID'/>"></td>
                    <td align="left"><a href="javascript:mycheck();" class="mini-button" name="button" id="button">确定迁出</a>
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
