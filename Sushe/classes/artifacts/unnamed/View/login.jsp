<%@ page language="java" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<base href="<%=basePath %>" />
    <title>校园宿舍管理系统</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link href="MiniUI/themes/default/miniui.css" rel="stylesheet" type="text/css" media="all" >
	<link href="MiniUI/themes/jqueryui-cupertino/skin.css" rel="stylesheet" type="text/css" media="all" >
    <link href="MiniUI/themes/icons.css" rel="stylesheet" type="text/css" media="all" >
    <script type="text/javascript" src="MiniUI/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="MiniUI/miniui.js"></script>
    
    <style type="text/css">
	    body{
	        width:100%;height:100%;margin:0;overflow:hidden;
	    }
    </style>
    <script type="text/javascript">
    	if(window != top ){
    		top.location.href= '<%=request.getContextPath()%>';
    	}  
    	
    </script>
</head>
<body>
<div id="loginWindow" class="mini-window" title="用户登录" style="width:300px;" showModal="true" showCloseButton="false" >
	<form id="loginForm" method="post" action="GoLogin.action">
    <div style="padding:15px;padding-top:10px;">
        <table>
        	<tr>
              <td style="width:60px;"><label for="username$text">身份：</label></td>
              <td>
	              <select name="Type" id="Type" style="width:148px;">
	                <option value="">请选择</option>
	                <option value="系统管理员">系统管理员</option>
	                <option value="楼宇管理员">楼宇管理员</option>
	                <option value="学生">学生</option>
	              </select>
              </td>
              </tr>
            <tr>
                <td style="width:60px;"><label for="username$text">帐号：</label></td>
                <td>
                    <input id="userName" name="Username" onvalidation="onUserNameValidation" class="mini-textbox" requiredErrorText="用户名不能为空" required="true" style="width:150px;"/>
                </td>    
            </tr>
            <tr>
                <td style="width:60px;"><label for="pwd$text">密码：</label></td>
                <td>
                    <input id="userPwd" name="Password" onvalidation="onPwdValidation" class="mini-password" requiredErrorText="密码不能为空" required="true" style="width:150px;" onenter="onLoginClick"/>
                </td>
            </tr>            
            <tr>
                <td></td>
                <td style="padding-top:5px;">
                    <a onclick="onLoginClick" class="mini-button" style="width:60px;">登录</a>
                    <a onclick="onResetClick" class="mini-button" style="width:60px;">重置</a>
                </td>
            </tr>
            <%if(request.getAttribute("Msg")!=null){%>
        	<tr>
             <td height="30" colspan="2" align="center" ><span style="color:red;">
               		<%=request.getAttribute("Msg")%>
             </span></td>
             </tr>
             <%}%>
        </table>
    </div>
	</form>
</div>

    
    <script type="text/javascript">
        mini.parse();
        var loginWindow = mini.get("loginWindow");
        loginWindow.show();
        function onLoginClick(e) {
        	var sf = $("#Type").val();
        	if(sf == ""){
        		 alert("请选择身份！"); 
        		 return false;
        	}
            var form = new mini.Form("#loginWindow");
            form.validate();
            if (form.isValid() == false) return;
            /* var data = getFormBackJsonString("#loginForm");
            $.ajax({
            	type:"post",
            	url:"",
            	data:$.parseJSON(data),
            	aynsc:false,
            	success:function(e){
            		e = $.parseJSON(e);
            		if(e.status){
            			loginWindow.hide();
                        mini.loading("登录成功，马上转到系统...", "登录成功");
                        setTimeout(function () {
                            window.location.href = "main.jsp";
                        }, 1500);
            		}else{
            			mini.alert("登录失败，帐户或密码错误！");
            		}
            	}
            }); */
            $("#loginForm").submit();
        }
        function onResetClick(e) {
            var form = new mini.Form("#loginWindow");
            form.clear();
        }
        function onUserNameValidation(e) {
            return true;
        }
        function onPwdValidation(e) {
            return true;
        }
        function getFormBackJsonString(e){
        	var data=$(e).serializeArray();
        	var jsonData="{";
        	for(var i=0,len=data.length;i<len;i++){
        		jsonData+="\"";
        		jsonData+=data[i].name;
        		jsonData+="\"";
        		jsonData+=":";
        		jsonData+="\"";
        		jsonData+=data[i].value;
        		jsonData+="\"";
        		if(i!=len-1)jsonData+=",";
        	}
        	jsonData+="}";
        	return jsonData;
        }
    </script>

</body>
</html>