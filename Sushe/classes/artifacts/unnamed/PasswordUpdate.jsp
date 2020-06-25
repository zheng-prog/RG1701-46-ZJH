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
   if(isNull(form1.Password.value)){  
   alert("请输入原密码！"); 
   }else if(isNull(form1.Password2.value)){
   alert("请输入新密码！");
   }else if(isNull(form1.Password3.value)){
   alert("请输入重复密码！");
   }else if(document.form1.Password2.value != document.form1.Password3.value) { 
   alert("您两次输入的新密码不一致！请重新输入！"); 
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
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">修改密码</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top"><form id="form1" name="form1" method="post" action="PasswordUpdateSave.action" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="33%" height="30" align="right">&nbsp;</td>
                    <td width="67%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>请输入原密码：</td>
                    <td align="left"><input name="Password" type="password" class="mini-password" id="Password">
                      <%if(request.getAttribute("Msg")!=null){%>
                      <span style="color:red;"><%=request.getAttribute("Msg")%></span>
                      <%}%></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>请输入新密码：</td>
                    <td align="left"><input name="Password2" type="password" class="mini-password" id="Password2"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>请重复新密码：</td>
                    <td align="left"><input name="Password3" type="password" class="mini-password" id="Password3"></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td align="left"><a href="javascript:mycheck();" name="button" id="button" class="mini-button">修改密码</a>
                    </td>
                  </tr>
                </table>
              </form></td>
            </tr>
          </table>
</body>
</html>
