<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Custom questionnaire</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>    
    <!-- Bootstrap -->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap-theme.min.css">
    <!-- Latest compiled and minified JavaScript -->
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>
 
    <style>
        .error {
            color: #ee0d25;
        }
    </style>

</head>
<body>
<div class="page-header">
  <h1>Create Questionnaire</h1>
</div>
<form:form method="get" action="questionnaire/add" commandName="questionnaire" class="form-horizontal">
<fieldset>
	<div class="form-group">
        <form:label class="col-lg-2 control-label" path="orgName">
           <spring:message code="label.orgName"/>
        </form:label>
        <div class="col-sm-3">
           <form:input path="orgName" placeholder="Organization Name" cssClass="form-control"/>
        </div>
         <form:errors path="orgName" cssClass="error"/>
	</div>
	<div class="form-group">
        <form:label class="col-lg-2 control-label" path="title">
           <spring:message code="label.title"/>
        </form:label>
        <div class="col-sm-3">
           <form:input path="title" placeholder="Title" cssClass="form-control"/>
        </div>
         <form:errors path="title" cssClass="error"/>
	</div>
	
	<!-- Button trigger modal -->
	<div class="col-lg-offset-2 col-lg-10">
<a href="questionnaire/question/add" class="btn btn-default" data-toggle="modal" data-target="#myModal">
  <span class="glyphicon glyphicon-plus"></span>Add Question </a>
 </div>>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 </div><!-- /.modal -->
	
</fieldset>

</form:form>

</body>
</html>