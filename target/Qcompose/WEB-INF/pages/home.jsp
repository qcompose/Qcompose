<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>QCompose Home</title>
 <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
</head>
<body>
<h1>Welcome to Questionnaire composer</h1>

<p>Login here</p><br/>

<div style="padding: 25px">

<!--  <a href="sec/moderation" class="btn btn-primary">Moderation page</a><br/>- -->
<a href="admin/first" class="btn btn-success">First Admin page</a><br/>
<a href="admin/second" class="btn btn-primary">Second Admin page</a><br/>
</div>

</body>
</html>