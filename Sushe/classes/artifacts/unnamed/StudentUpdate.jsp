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
   alert("请输入学号！"); 
   }else if (document.form1.Student_Password.value != document.form1.Student_Password2.value) { 
   alert("您两次输入的新密码不一致！请重新输入！"); 
   }else if(isNull(form1.Student_Name.value)){
   alert("请输入姓名！");
   }else if(isNull(form1.Student_Sex.value)){
   alert("请选择性别！");
   }else if(isNull(form1.Student_Class.value)){
   alert("请输入班级！");
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
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">修改学生</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top"><form id="form1" name="form1" method="post" action="StudentUpdateSave.action" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="33%" height="30" align="right">&nbsp;</td>
                    <td width="67%"><input name="Student_ID" type="text" class="noshow" id="Student_ID" value="<s:property value='cnbean.Student_ID'/>"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>学号：</td>
                    <td align="left"><input name="Student_Username" type="text" class="mini-textbox" id="Student_Username" value="<s:property value='cnbean.Student_Username'/>"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right">密码：</td>
                    <td align="left"><input name="Student_Password" type="password" class="mini-password" id="Student_Password">
                      <span style="color:#F60">不修改则不填写</span></td>
                  </tr>
                  <tr>
                    <td height="30" align="right">重复密码：</td>
                    <td align="left"><input name="Student_Password2" type="password" class="mini-password" id="Student_Password2">
                      <span style="color:#F60">不修改则不填写</span></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>姓名：</td>
                    <td align="left"><input name="Student_Name" type="text" class="mini-textbox" id="Student_Name" value="<s:property value='cnbean.Student_Name'/>"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>性别：</td>
                    <td align="left"><select name="Student_Sex" id="Student_Sex" style="width:150px;">
                      <option value="">请选择</option>
                      <option value="男" 
                      <s:if test='cnbean.Student_Sex=="男"'>selected</s:if>
                      >男
                      </option>
                      <option value="女" 
                      <s:if test='cnbean.Student_Sex=="女"'>selected</s:if>
                      >女
                      </option>
                    </select></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>班级：</td>
                    <td align="left"><input name="Student_Class" type="text" class="mini-textbox" id="Student_Class" value="<s:property value='cnbean.Student_Class'/>"></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td align="left"><a href="javascript:mycheck();" class="mini-button" name="button" id="button">修改学生</a>
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
