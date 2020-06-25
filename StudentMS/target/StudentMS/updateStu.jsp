<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2020/4/13
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改学生信息</title>
</head>
<body>

<%
    String name=request.getParameter("name");
    System.out.println(name);
%>
<form action="update.action" method="post">
    <table border="1">
        <s:iterator value="#session.stuList" status="st">
            <s:if test="name.equals(#parameters.name[0])">
                <tr>
                    <td>学号</td>
                    <td><input type="text" name="studentID" value="<s:property value="studentID"/>"> </td>
                </tr>
                <tr>
                    <td>姓名</td>
                    <td><input type="text" name="name" value="<s:property value="name"/>"> </td>
                </tr>
                <tr>
                    <td>密码</td>
                    <td><input type="text" name="password" value="<s:property value="password"/>"> </td>
                </tr>
                <tr>
                    <td>性别</td>
                    <td><input type="text" name="sex" value="<s:property value="sex"/>"> </td>
                </tr>
                <tr>
                    <td>生日</td>
                    <td><input type="text" name="birthday" value="<s:property value="birthday"/>"> </td>
                </tr>
                <tr>
                    <td>学校</td>
                    <td><input type="text" name="university" value="<s:property value="university"/>"> </td>
                </tr>
                <tr>
                    <td>学院</td>
                    <td><input type="text" name="department" value="<s:property value="department"/>"> </td>
                </tr>
                <tr>
                    <td>专业</td>
                    <td><input type="text" name="major" value="<s:property value="major"/>"> </td>
                </tr>
                <tr>
                    <td>分数</td>
                    <td><input type="text" name="grade" value="<s:property value="grade"/>"> </td>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                        <input   type="submit" value="确 定" size="12">     
                        <input  type="reset" value="清 除" size="12">
                    </td>
                </tr>

            </s:if>
        </s:iterator>
    </table>
</form>
</body>
</html>
