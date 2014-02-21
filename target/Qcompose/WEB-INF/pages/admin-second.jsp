<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Second Admin page</title>
</head>
<body>
<h1>Second Admin page</h1>
<p>
<a href="<c:url value="/j_spring_security_logout" />" >Logout</a> <br/>
<a href="index">Home page</a><br/>
</p>
</body>
</html>