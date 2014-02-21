<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Moderation page</title>
</head>
<body>
<h1>Moderation page</h1>
<p>This is Moderation page. It's available for moderators.<br/>
<a href="<c:url value="/j_spring_security_logout" />" >Logout</a> <br/>
<a href="index">Home page</a><br/></p>
</body>
</html>