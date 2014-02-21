<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Login page</title>
<style>
.error {
	color: red;
}
</style>
</head>
<body>
<h1>Login page</h1>

<p>
<c:if test="${error == true}">
	<b class="error">Invalid login or password.</b>
</c:if>
</p>

<%-- <form:form method="post" action="<c:url value='j_spring_security_check'/>" commandName="login" class="form-horizontal">
    <fieldset>
        <legend>Customer Details</legend>
        <div class="form-group">
            <form:label class="col-lg-2 control-label" path="login">
                <spring:message code="label.username"/>
            </form:label>
            <div class="col-sm-3">
                <form:input path="login" placeholder="UserName" cssClass="form-control"/>
            </div>
            <form:errors path="login" cssClass="error"/>
        </div>
          <div class="form-group">
            <form:label class="col-lg-2 control-label" path="password">
                <spring:message code="label.password"/>
            </form:label>
            <div class="col-sm-3">
                <form:input path="password" placeholder="password" cssClass="form-control"/>
            </div>
            <form:errors path="password" cssClass="error"/>
        </div>
        </fieldset>
        <div class="form-group">
        <div class="col-lg-offset-2 col-lg-10">
            <button type="submit" class="btn btn-primary"><spring:message code="label.login"/></button>
        </div>
    </div>
</form:form> --%>

 <form method="post" action="<c:url value='j_spring_security_check'/>" >
<table>
<tbody>
<tr>
<td>Login:</td>
<td><input type="text" name="j_username" id="j_username"size="30" maxlength="40"  /></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="j_password" id="j_password" size="30" maxlength="32" /></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Login" /></td>
</tr>
</tbody>
</table>
</form>	 

<p>
<a href="index">Home page</a><br/>
</p>
</body>
</html>