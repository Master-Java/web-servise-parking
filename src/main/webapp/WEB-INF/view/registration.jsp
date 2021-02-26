<%@page language="java" contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>


<form:form action="login" modelAttribute="user">
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    Password <form:input type="password" path="password"/>
    <form:errors path="password"/>
    <br><br>
    <input type="submit" value="Зарегистрироваться">
</form:form>
</body>
</html>