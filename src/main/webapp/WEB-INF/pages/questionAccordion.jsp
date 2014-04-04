<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Create Question</title>
     <script src="<c:url value="/resources/js/jquery-1.8.3.js" />"></script>
    <!-- Bootstrap -->
    <!-- Latest compiled and minified CSS -->
     <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"/>
    <!-- Optional theme -->
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-theme.min.css"/>" />
     <link href="<c:url value="/resources/css/bootstrap-combined.min.css"/>" rel="stylesheet">
      <link rel="stylesheet" href="<c:url value="/resources/css/custom.css"/>" />
    <script src="<c:url value="/resources/js/script.js" />"></script>   
  <style> body {
    padding: 10px;
    
    
}</style> 

<script type='text/javascript'>//<![CDATA[ 
$(window).load(function(){
var $template = $(".template");

var hash = 1;
       
$(".btn-add-panel").on("click", function () {
    var $newPanel = $template.clone();
    $newPanel.find(".collapse").removeClass("in");
    $newPanel.find(".accordion-toggle").attr("href",  "#" + (++hash))
             .text("Question #" + hash);
    $newPanel.find(".panel-collapse").attr("id", hash).addClass("collapse").removeClass("in");
    $newPanel.find(".panel-collapse").attr("id", hash).addClass("collapse").removeClass("in");
    $("#accordion1").append($newPanel.fadeIn());
    $newPanel.find(".que").attr("id", "que"+hash).addClass("que"+hash).removeClass("que");
    $newPanel.find(".queSel").attr("id", "queSel"+hash).addClass("queSel"+hash).removeClass("queSel");
    $newPanel.find(".queCommon").attr("id", "queCommon"+hash).addClass("queCommon"+hash).removeClass("queCommon");
    $newPanel.find(".queComment").attr("id", "queComment"+hash).addClass("queComment"+hash).removeClass("queComment");
    $newPanel.find(".dTable").attr("id", "dTable"+hash).addClass("dTable"+hash).removeClass("dTable");
    $newPanel.find(".addButt").attr("id", "addButt"+hash).addClass("addButt"+hash).removeClass("addButt");
    $newPanel.find(".delButt").attr("id", "delButt"+hash).addClass("delButt"+hash).removeClass("delButt");
   
});

});//]]>  

function submitAll (){
	var questionnaireForm = document.getElementById("questionnaireForm");
	$('form').each(function() {
	    var that = $(this);
	    var id =$(this.form);
	    if(this != questionnaireForm){
	    $.post(that.attr('action'), that.serialize());
	    }
	});
	questionnaireForm.submit();
}


	
function admSelectCheck1(oSelect, el){
	var selectId = el.toString();
	var id = selectId.substring(6);
	var idCommon ='queCommon'+id;
	var idComment ='queComment'+id;
	var oform = oSelect.form;
	for (var i = 0; i < oform.length; i++) {
		var x = oform.elements[i].name;
			while( x =="questionType"){
				if(oSelect){
				var opt = oSelect.options[oSelect.selectedIndex].value;
					if(opt=="radio" || opt == "checkBox" || opt == "multiSelect" ){

						  document.getElementById(idCommon).style.display = "block";
					}
					else{
						  document.getElementById(idCommon).style.display = "none";
					}
					if(opt=="essay" || opt == "singleText"){
				    	  document.getElementById(idComment).style.display = "block";
				   	}
				    else{
				    	  document.getElementById(idComment).style.display = "none";
				    }
					break;
			}else{
				document.getElementById(idCommon).style.display = "none";
				document.getElementById(idComment).style.display = "none";
				
			}
		}
		
	}
} 

function addRow1(tabID) {
	var el = tabID.toString();
	var id = el.substring(7);
	var tableID ="dTable"+id;
    var table = document.getElementById(tableID);
    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
    var cell1 = row.insertCell(0);
    var element1 = document.createElement("input");
    element1.type = "checkbox";
    element1.name="chkbox[]";
    cell1.appendChild(element1);
    var cell2 = row.insertCell(1);
    var element2 = document.createElement("input");
    element2.type = "text";
    element2.name = "answerOptions";
    cell2.appendChild(element2);
    
}

function deleteRow1(tabID) {
    try {
    	var el = tabID.toString();
	    var id = tabID.substring(7);
	    var tableID ="dTable"+id;
	    var table = document.getElementById(tableID);
	    var rowCount = table.rows.length;
	
	    for(var i=0; i<rowCount; i++) {
	        var row = table.rows[i];
	        var chkbox = row.cells[0].childNodes[0];
	        if(null != chkbox && true == chkbox.checked) {
	            table.deleteRow(i);
	            rowCount--;
	            i--;
	        }


    }
    }catch(e) {
        alert(e);
    }
}	
</script>

</head>
<body>


<div class="panel-group" id="accordion">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
          Add Questionnaire
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">
        <form:form id ="questionnaireForm" method="post" action="questionnaire/save" commandName="questionAccordion" class="form-horizontal">
        
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
	<div class="form-group">
		<div class="col-lg-offset-2 col-lg-10">
			<button type="submit" class="btn btn-primary">Create Questionnaire</button>
		</div>
	</div>
	
	
</fieldset>

</form:form>
      </div>
    </div>
  </div>
  </div>

<div class="panel-group" id="accordion1">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse10">
         Question #1
        </a>
      </h4>
    </div>
    <div id="collapse10" class="panel-collapse collapse in">
      <div class="panel-body">
       <form:form  id = "que2" method="post" action="questionnaire/question/save" commandName="questionAccordion">
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
					         <form:select path ="questionType"  onchange="admSelectCheck(this);" >
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
					
                   </form:form>
      </div>
    </div>
  </div>
  <div class="panel panel-default template" style="display:none">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse20">
         Question #1
        </a>
      </h4>
        
    </div>
    <div id="collapse20" class="panel-collapse collapse">
      <div class="panel-body">
         <form:form id ="que"  name="que" method="post" class="que" action="questionnaire/question/save" commandName="questionAccordion">
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
					         <form:select path ="questionType" class ="queSel" id ="queSel"  name ="queSel"  onchange="admSelectCheck1(this, this.id);" >
					        	<form:option  selected="selected" value="0" label = "--Choose Question Type--"></form:option>
							    <form:option  value="radio">Radio Button</form:option>
							    <form:option  value="checkBox">Check Box</form:option>
							    <form:option  value="multiSelect">MultiSelect Box</form:option>
							    <form:option  value="singleText">Single Text Box</form:option>
							    <form:option  value="essay">Comment/Essay Box</form:option>
							</form:select>
						</div>	
						<div id="queCommon" class="queCommon" style="display:none">
						 <form:label path="answerOptions">
						  <spring:message code="label.answerOptions"/>
					        </form:label>
						<INPUT type="button" id="addButt" value="Add Row" class="addButt" onclick="addRow1(this.id)" />
 
   						 <INPUT type="button" id="delButt" value="Delete Row" class="delButt" onclick="deleteRow1(this.id)" />
    
					        <table class="dTable" id="dTable" border="1">
							   <tr>
							      <TD><INPUT type="checkbox" name="chk" /></TD>
          						  <TD> <INPUT type="text"  name="answerOptions"/> </TD> 
							    </tr>		  
							</table>	
						</div>	
						<div id="queComment" class="queComment" style="display:none">
					        <form:label path="answerOptions">
					           <spring:message code="label.answerOptions"/>
					        </form:label>
					        <form:textarea path="answerOptions"  class="form-control"/>
					        <form:errors path="answerOptions" cssClass="error"/>
						</div>			 
						 
					 </fieldset>
					
                   </form:form>
      </div>
    </div>
  </div>
</div>
<br />
<button class="btn btn-lg btn-primary btn-add-panel">
    <i class="glyphicon glyphicon-plus"></i> Add Question
</button>
<button class="btn btn-lg btn-primary" onclick="submitAll();">
    <i class="glyphicon glyphicon-plus"></i> Submit All
</button>
       
 <script src="<c:url value="/resources/js/jquery.min.js" />"></script> 
 <!-- Latest compiled and minified JavaScript -->
      <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <!-- Latest compiled and minified JavaScript -->
</body>
</html>