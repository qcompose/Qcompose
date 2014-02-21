<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Login page</title>
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/bootstrap-theme.css" rel="stylesheet">
    
 
<style>
.error {
	color: red;
}
</style>
</head>
<body>
<h1 align="center">Welcome to Questionnaire composer</h1>

<p>
<c:if test="${error == true}">
	<b class="error">Invalid login or password.</b>
</c:if>
</p>

<form method="post" action="<c:url value='j_spring_security_check'/>" class="form-horizontal" role="form">
  <div class="form-group">
    <label for="j_username" class="col-sm-2 control-label">User Name</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" name =j_username id="j_username" placeholder="UserName">
    </div>
  </div>
  <div class="form-group">
    <label for="j_password" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-3">
      <input type="password" class="form-control" name=j_password  id="j_password" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" value="Login" class="btn btn-default">Sign in</button>
      <a href="secure/add">New user Sign-Up</a>
    </div>
  </div>
</form>

</body>
</html>