<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>QCompose Manager</title>
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
</head>
<body>

<div class="page-header">
  <h1>Welcome to Qcompose manager <small>Customise your Questionnaire</small></h1>
</div>


<div style="padding: 25px">
    <a href="secure/add" class="btn btn-primary">Add User</a>
    <a href="secure/list" class="btn btn-success">View Users</a>
</div>
</body>
</html>
