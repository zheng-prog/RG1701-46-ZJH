<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	Object obj = session.getAttribute("id");
	if(obj == null){
		response.sendRedirect(path);
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
    <title>校园宿舍管理系统</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="MiniUI/themes/default/miniui.css" rel="stylesheet" type="text/css" media="all" >
    <link href="MiniUI/themes/jqueryui-cupertino/skin.css" rel="stylesheet" type="text/css" media="all" >
    <link href="MiniUI/themes/icons.css" rel="stylesheet" type="text/css" media="all" >
    <script type="text/javascript" src="MiniUI/jquery-1.6.2.min.js"></script>
    <script type="text/javascript" src="MiniUI/miniui.js"></script>

    <style type="text/css">
	    body{
	        margin:0;padding:0;border:0;width:100%;height:100%;overflow:hidden;
	    }
	    .header{
	        background:url(img/header.gif) repeat-x 0 -1px;
	    }
    </style>
</head>
<body>

<div id="layout1" class="mini-layout" style="width:100%;height:100%;">
    <div class="header" region="north" height="70" showSplit="false" showHeader="false">
        <h1 style="margin:0;padding:15px;cursor:default;font-family:微软雅黑,黑体,宋体;">校园宿舍管理系统 1.0</h1>
        <div style="position:absolute;top:18px;right:10px;">
            <a class="mini-button mini-button-iconTop" iconCls="icon-close" href="Quit.action" plain="true" >退出系统</a>        
        </div>
    </div>
    <div showHeader="false" region="west" width="180" maxWidth="250" minWidth="100" >
        <!--左侧菜单-->
        <%if(session.getAttribute("type").toString().equals("1")){%>
            <div id="leftTree" class="mini-outlookmenu" url="data/outlookmenu.txt" onitemselect="onItemSelect"
           		idField="id" parentField="pid" textField="text" borderStyle="border:0" >
        	</div> 
        <%}%>
        <%if(session.getAttribute("type").toString().equals("2")){%>
        	<div id="leftTree" class="mini-outlookmenu" url="data/outlookmenu_1.txt" onitemselect="onItemSelect"
           		idField="id" parentField="pid" textField="text" borderStyle="border:0" >
        	</div> 
        <%}%>
        <%if(session.getAttribute("type").toString().equals("3")){%>
        	<div id="leftTree" class="mini-outlookmenu" url="data/outlookmenu_2.txt" onitemselect="onItemSelect"
           		idField="id" parentField="pid" textField="text" borderStyle="border:0" >
        	</div> 
        <%}%>
        
    </div>
    <div title="center" region="center" bodyStyle="overflow:hidden;">
        <iframe id="mainframe" frameborder="0" name="main" style="width:100%;height:100%;" border="0"></iframe>
    </div>
    
    <div title="south" region="south" showSplit="false" showHeader="false" height="30" >
        <div style="line-height:28px;text-align:center;cursor:default">Copyright ©  </div>
    </div>
    
</div>
	<script type="text/javascript">
        mini.parse();
        var iframe = document.getElementById("mainframe");
        //iframe.src = "../datagrid/datagrid.html";
		
        //菜单栏选择
        function onItemSelect(e) {
            var item = e.item;
            iframe.src = item.url;
        }
		
        function updatePwd(){
        	 mini.open({
                 url: "updatePwd.jsp",
                 allowResize: false,
                 title: "修改密码", width: 360, height: 260
             });
        }
        
        
    </script>


</body>
</html>
