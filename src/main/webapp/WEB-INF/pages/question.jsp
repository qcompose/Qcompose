<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Create Question</title>
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
   
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h3 class="modal-title" id="myModalLabel">Add Question</h3>
                </div>
                <div class="modal-body">
                   <form:form method="get" action="questionnaire/question/save" commandName="question">
					  <fieldset>
						<div class="form-group">
					        <form:label path="questionText">
					           <spring:message code="label.questionText"/>
					        </form:label>
					        <form:input path="questionText" placeholder="Question Text" cssClass="form-control"/>
					        <form:errors path="questionText" cssClass="error"/>
						</div>
						<div class="form-group" id="accordion">
						 <form:label path="questionType">
						  <spring:message code="label.questionType"/>
					        </form:label>
					        <form:select path ="questionType" class="form-control input-sm" >
					        	<form:option value="0" label = "--Choose Question Type--"></form:option>
							    <form:option value="one" data-toggle="collapse" data-parent="#accordion" data-target="#collapseOne">Radio Button</form:option>
							    <form:option value="two" data-toggle="collapse" data-parent="#accordion" data-target="#collapseOne">Check Box</form:option>
							    <form:option value="three" data-toggle="collapse" data-parent="#accordion" data-target="#collapseOne">MultiSelect Box</form:option>
							    <form:option value="four" data-toggle="collapse" data-parent="#accordion" data-target="#collapseOne">Single Text Box</form:option>
							    <form:option value="five" data-toggle="collapse" data-parent="#accordion" data-target="#collapseOne">Comment/Essay Box</form:option>
							</form:select>
						</div>	
						<div class="form-group" id="collapseOne">
					        <form:label path="answerOptions">
					           <spring:message code="label.answerOptions"/>
					        </form:label>
					        <span class="help-block">Enter each option on a separate line. </span>
					        <form:textarea path="answerOptions"  class="form-control"/>
					        <form:errors path="answerOptions" cssClass="error"/>
						</div>		
					 </fieldset>
	
                   </form:form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save & Close</button>
                     <button type="button" class="btn btn-primary">Save & Continue Next Question<span class="glyphicon glyphicon-arrow-right"></span></button>
                    
                </div>
            </div>
        </div>
</body>
</html>