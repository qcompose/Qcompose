<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<html>
<head>
<title>Welcome Qcompose</title>
<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="page-header">
  <h1>Welcome to Qcompose manager <small>Customise your Questionnaire</small></h1>
</div>
<fieldset>
<div class="panel panel-success">
 <div class="panel-heading"><h3><span class="label label-info">Customise User</span></h3></div>
  <div class="panel-body">
    <!-- List group -->
  <ul class="list-group">
    <li class="list-group-item"><a href="secure/add">Add User</a></li>
    <li class="list-group-item"> <a href="secure/list">View/Delete Users</a></li>
 </ul>
</div>
</div>
<div class="panel panel-info">
 <div class="panel-heading"><h3><span class="label label-success">Customise Questionnaire</span></h3></div>
  <div class="panel-body">
    <!-- List group -->
  <ul class="list-group">
    <li class="list-group-item"><a href="questionnaire/add">Create Questionnaire </a></li>
    <li class="list-group-item"> <a href="secure/list"> Edit Questionnaire</a></li>
    <li class="list-group-item"><a href="secure/add">View Questionnaire </a></li>
    <li class="list-group-item"> <a href="secure/list"> Delete Questionnaire</a></li>
 </ul>
</div>
</div>
<div class="panel panel-success">
 <div class="panel-heading"><h3><span class="label label-info">Publish Questionnaire</span></h3></div>
  <div class="panel-body">
    <!-- List group -->
  <ul class="list-group">
    <li class="list-group-item"><a href="secure/add">Publish through URL </a></li>
    <li class="list-group-item"> <a href="secure/list"> Publish as PDF</a></li>
 </ul>
</div>
</div>
<div class="panel panel-info">
 <div class="panel-heading"><h3><span class="label label-success">Other</span></h3></div>
  <div class="panel-body">
    <!-- List group -->
  <ul class="list-group">
    <li class="list-group-item"><a href="secure/add">Create access </a></li>
 </ul>
</div>
</div>

</fieldset>
</body>
</html>