<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
<title>Welcome page</title>
<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
</head>
<body>
<h1>Welcome page</h1>
<p>You have successfully logged in.<br/>
<div style="padding: 25px">
<a href="index">Home page</a><br/></p>
</div>
</body>
</html>