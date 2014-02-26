<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer List</title>
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
</head>
<body>

<a href="success-login" class="btn btn-link"><span class="glyphicon glyphicon-home"></span>Back</a>

<h3>Users</h3>
<c:if test="${!empty userList}">
    <table class="table table-hover">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Telephone</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${userList}" var="user">
            <tr>
                <td>${user.lastname}, ${user.firstname} </td>
                <td>${user.email}</td>
                <td>${user.telephone}</td>
                <td><a href="delete/${user.userId}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>


</body>
</html>
