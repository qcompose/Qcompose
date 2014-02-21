<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Information</title>
    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
    <style>
        .error {
            color: #ee0d25;
        }
    </style>

</head>
<body>

<h2>User Information</h2>
<form:form method="post" action="add" commandName="customer" class="form-horizontal">
    <fieldset>
        <legend>Customer Details</legend>
        <div class="form-group">
            <form:label class="col-lg-2 control-label" path="loginId">
                <spring:message code="label.loginId"/>
            </form:label>
            <div class="col-sm-3">
                <form:input path="loginId" placeholder="loginId" cssClass="form-control"/>
            </div>
            <form:errors path="loginId" cssClass="error"/>
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
         <div class="form-group">
            <form:label class="col-lg-2 control-label" path="rePassword">
                <spring:message code="label.rePassword"/>
            </form:label>
            <div class="col-sm-3">
                <form:input path="rePassword" placeholder="rePassword" cssClass="form-control"/>
            </div>
            <form:errors path="rePassword" cssClass="error"/>
        </div>
        <div class="form-group">
            <form:label class="col-lg-2 control-label" path="firstname">
                <spring:message code="label.firstname"/>
            </form:label>
            <div class="col-sm-3">
                <form:input path="firstname" placeholder="Firstname" cssClass="form-control"/>
            </div>
            <form:errors path="firstname" cssClass="error"/>
        </div>

        <div class="form-group">
            <form:label class="col-lg-2 control-label" path="lastname">
                <spring:message code="label.lastname"/>
            </form:label>
            <div class="col-sm-3">
                <form:input path="lastname" placeholder="LastName" cssClass="form-control"/>
            </div>
            <form:errors path="lastname" cssClass="error"/>
        </div>
        <legend>Contact Details</legend>
        <div class="form-group">
            <form:label class="col-lg-2 control-label" path="email">
                <spring:message code="label.email"/>
            </form:label>
            <div class="col-md-3">
                <form:input path="email" placeholder="email" cssClass="form-control"/>
            </div>
            <form:errors path="email" cssClass="error"/>
        </div>
        <div class="form-group">
            <form:label class="col-lg-2 control-label" path="telephone">
                <spring:message code="label.telephone"/>
            </form:label>
            <div class="col-lg-3">
                <form:input path="telephone" placeholder="telephone" cssClass="form-control"/>
            </div>
            <form:errors path="telephone" cssClass="error"/>
        </div>
         <div class="form-group">
            <form:label class="col-lg-2 control-label" path="address">
                <spring:message code="label.address"/>
            </form:label>
            <div class="col-lg-3">
                <form:input path="address" placeholder="address" cssClass="form-control"/>
            </div>
            <form:errors path="address" cssClass="error"/>
        </div>
         <div class="form-group">
            <form:label class="col-lg-2 control-label" path="location">
                <spring:message code="label.location"/>
            </form:label>
            <div class="col-lg-3">
                <form:input path="location" placeholder="location" cssClass="form-control"/>
            </div>
            <form:errors path="location" cssClass="error"/>
        </div>
    </fieldset>
    <div class="form-group">
        <div class="col-lg-offset-2 col-lg-10">
            <button type="submit" class="btn btn-primary"><spring:message code="label.create"/></button>
        </div>
    </div>
</form:form>

</body>
</html>
