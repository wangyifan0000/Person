<%--
  Created by IntelliJ IDEA.
  User: 86150
  Date: 2020/9/20
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="/static/js/jquery-1.12.4.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/doupdateSelectById" method="post">
    <table border="1px">
        <tr>
            <td style="text-align: center">添加人员</td>
        </tr>
        <tr>
            <td>姓名<input type="text" name="name"></td>
        </tr>
        <tr>
            <td>性别<select name="gender">
                <option value="1">男</option>
                <option value="0">女</option>
            </select></td>
        </tr>
        <tr>
            <td>年龄<input type="text" name="age"></td>
        </tr>
        <tr>
            <td>等级<select name="rank">
                <option value="1">1级</option>
                <option value="2">2级</option>
                <option value="3">3级</option>
            </select></td>
        </tr>
        <tr>
            <td>部门<select name="department">
                <option value="1">开发部</option>
                <option value="2">支持部</option>
                <option value="3">质量部</option>
            </select>
            </td>
        </tr>

        <tr>
            <td>订单状态<select name="department">
                <option value="1">开发部</option>
                <option value="2">支持部</option>
                <option value="3">质量部</option>
            </select></td>
        </tr>
        <tr>
            <td><input type="submit" value="保存"><input type="button" value="重置"><input type="button" value="返回"></td>
        </tr>
    </table>
</form>
<script>
    $("form").submit(function () {
        var name = $("[name='name']").val();
        var gender = $("[name='gender']").val();
        var age = $("[name='age']").val();
        var department = $("[name='department']").val();
        var rank = $("[name='rank']").val();
        if (name == "") {
            alert("姓名不能为空");
            return false;
        }
        if (department == "") {
            alert("所属部门不能为空");
            return false;
        }
        if (gender == "") {
            alert("性别不能为空");
            return false;
        }

        if (age == "") {
            alert("请填写年龄");
            return false;
        }
        if (rank == "") {
            alert("等级不能为空");
            return false;
        }
    })
</script>
</body>
</html>
