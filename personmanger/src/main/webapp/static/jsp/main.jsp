<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86150
  Date: 2020/9/20
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form>
    <table border="1px">
        <tr>
            <td>人员列表</td>
        </tr>
        <tr>
            <td>编号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>等级</td>
            <td>部门</td>
            <td>操作</td>

        </tr>
        <c:forEach var="person" items="${list}">
            <tr>
                <td>${person.id}</td>
                <td>${person.name}</td>
                <td>${person.gender}</td>
                <td>${person.age}</td>
                <td><c:if test="${person.rank==1}">1级</c:if>
                    <c:if test="${person.rank==2}">2级</c:if>
                    <c:if test="${person.rank==3}">3级</c:if>
                </td>
                <td>${person.department}</td>
                <td><a href="javascript:void(0)" onclick="del(${person.id})">删除</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td><input type="button" value="添加人员" onclick="addPerson()"></td>
        </tr>

        <tr><a href="/toAddAttence">考勤登记</a></tr>
    </table>
</form>
<script>
    $(function () {
        $("tr:odd").css("background-color", "gray");
    })

    function addPerson() {
        location.href = "/insertPerson";
    }

    function del(id) {
        alert(id);//,billstatus
        var flag = confirm("确认是否删除");
        if (flag) {
            location.href = "//" + id;
        }

    }
</script>
</body>
</html>
