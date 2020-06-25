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
   if(isNull(form1.Log_Date.value)){  
   alert("请输入选择缺寝日期！"); 
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
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">学生缺寝登记</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top">
              <form id="form1" name="form1" method="post" action="LogAddSave.action" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="30" colspan="2" style="color:red;">请仔细确认信息是否正确，缺寝登记提交后将不可修改！</td>
                    </tr>
                  <tr>
                    <td width="33%" height="30" align="right">学号：</td>
                    <td width="67%" align="left"><s:property value='cnbean.Student_Username'/>
                      <label for="Log_StudentID"></label>
                      <input name="Log_StudentID" type="text" class="noshow" id="Log_StudentID" value="<s:property value='cnbean.Student_ID'/>"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right">姓名：</td>
                    <td align="left"><s:property value='cnbean.Student_Name'/></td>
                  </tr>
                  <tr>
                    <td height="30" align="right">性别：</td>
                    <td align="left"><s:property value='cnbean.Student_Sex'/></td>
                  </tr>
                  <tr>
                    <td height="30" align="right">班级：</td>
                    <td align="left"><s:property value='cnbean.Student_Class'/></td>
                  </tr>
                  <tr>
                    <td height="30" align="right">寝室：</td>
                    <td align="left"><s:property value='cnbean.Domitory_Name'/></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>缺寝日期：</td>
                    <td align="left"><label for="Log_Date"></label>
                      <input type="text" name="Log_Date" id="Log_Date" class="mini-datepicker" /></td>
                  </tr>
                  <tr>
                    <td height="30" align="right">缺寝备注：</td>
                    <td align="left"><input name="Log_Remark" id="Log_Remark" class="mini-textbox"/></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td align="left"><a href="javascript:mycheck();" name="button" id="button" class="mini-button">确认提交</a>
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
