<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Create Question</title>
    <!-- Bootstrap -->
    <!-- Latest compiled and minified CSS -->
     <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"/>
    <!-- Optional theme -->
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-theme.min.css"/>" />
     <link href="<c:url value="/resources/css/bootstrap-combined.min.css"/>" rel="stylesheet">
      <link rel="stylesheet" href="<c:url value="/resources/css/custom.css"/>" />
    <script src="<c:url value="/resources/js/script.js" />"></script>   
</head>
<body>
   
        <div class="modal-dialog">
            <div class="modal-content">
             <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" data-target = "questionnaire/question/add" aria-hidden="true">&times;</button>
                    <h3 class="modal-title" id="myModalLabel">Add Question</h3>
                </div>
                <div class="modal-body" >
                   <form:form method="get" action="questionnaire/question/save" commandName="question">
                   <form:hidden id="continueAdding" path="continueToAdd" ></form:hidden>
					  <fieldset>
						<div class="form-group">
					        <form:label path="questionText">
					           <spring:message code="label.questionText"/>
					        </form:label>
					        <form:input path="questionText" placeholder="Question Text" cssClass="form-control"/>
					        <form:errors path="questionText" cssClass="error"/>
						</div>
						<div class="form-group">
						 <form:label path="questionType">
						  <spring:message code="label.questionType"/>
					        </form:label>
					         <form:select path ="questionType" id="questionTypeSelect" onchange="admSelectCheck(this);" >
					        	<form:option  selected="selected" value="0" label = "--Choose Question Type--"></form:option>
							    <form:option id="commonOption" value="radio">Radio Button</form:option>
							    <form:option id="commonOption1" value="checkBox">Check Box</form:option>
							    <form:option id="commonOption2" value="multiSelect">MultiSelect Box</form:option>
							    <form:option id="commonOption3" value="singleText">Single Text Box</form:option>
							    <form:option id="commentOption" value="essay">Comment/Essay Box</form:option>
							</form:select>
						</div>	
						<div class="form-group" id="commonAnswerOpt" style="display:none">
						 <form:label path="answerOptions">
						  <spring:message code="label.answerOptions"/>
					        </form:label>
						<INPUT type="button" value="Add Row" onclick="addRow('dataTable')" />
 
   						 <INPUT type="button" value="Delete Row" onclick="deleteRow('dataTable')" />
    
					        <table id="dataTable" border="1">
							   <tr>
							      <TD><INPUT type="checkbox" name="chk"/></TD>
          						  <TD> <INPUT type="text"  name="answerOptions"/> </TD> 
							    </tr>		  
							</table>	
						</div>	
						<div class="form-group" id="commentAnswerOpt" style="display:none">
					        <form:label path="answerOptions">
					           <spring:message code="label.answerOptions"/>
					        </form:label>
					        <form:textarea path="answerOptions"  class="form-control"/>
					        <form:errors path="answerOptions" cssClass="error"/>
						</div>			 
						 
					 </fieldset>
	
	<div class="form-group">
       <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit"  class="btn btn-primary">Save & Close</button>
                    <button type="submit" name="continueAdd" onclick = "setContinue()" class="btn btn-primary">Save & Continue</button>
 

                </div>
    </div>
                   </form:form>
                </div>
                
            </div>
        </div>
       
 <script src="<c:url value="/resources/js/jquery.min.js" />"></script> 
 <!-- Latest compiled and minified JavaScript -->
      <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <!-- Latest compiled and minified JavaScript -->
   
  
</body>
</html>