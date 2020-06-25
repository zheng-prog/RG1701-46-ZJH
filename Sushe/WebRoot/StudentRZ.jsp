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
   }else if(isNull(form1.Student_Username.value)){  
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
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">学生入住登记</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top"><form id="form1" name="form1" method="post" action="StudentRZSave.action" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="33%" height="30" align="right">&nbsp;</td>
                    <td width="67%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>楼宇：</td>
                    <td align="left"><select style="width:150px;" name="Building_ID" id="Building_ID" onChange="javascript:window.location='StudentRZ.action?BuildingID='+this.value;">
                      <option value="">请选择</option>
                      <s:iterator value="buildinglist">
                      <option value="${Building_ID}" <s:if test="BuildingID==Building_ID">selected</s:if>>${Building_Name}</option>
                      </s:iterator>
                      </select></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>寝室：</td>
                    <td align="left"><select style="width:150px;" name="Domitory_ID" id="Domitory_ID">
                      <option value="">请选择</option>
                      <s:iterator value="domitorylist">
                        <option value="${Domitory_ID}">${Domitory_Name}</option>
                      </s:iterator>
                    </select></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;">*</span>学生学号：</td>
                    <td align="left"><label for="Student_ID"></label>
                      <input type="text" class="mini-textbox" name="Student_Username" id="Student_Username"></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td align="left"><a href="javascript:mycheck();" name="button" id="button" class="mini-button">确定入住</a></td>
                  </tr>
                </table>
              </form></td>
            </tr>
          </table>
</body>
</html>
