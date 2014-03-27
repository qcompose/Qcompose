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

var hash = 2;
var count = 0;
       
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
    
    $newPanel.find(".queSel").prop('selectedIndex',0);
    $newPanel.find("*").removeClass("que").addClass("que" + hash);
   $newPanel.find(".queCommon").attr("id").replace("queCommon", "queCommon" +hash);
   $newPanel.find(".queComment").attr("id").replace("queComment", "queComment" +hash);
   $("#queCommon").hide();
   $("#queComment").hide();
   
    //$('#queCommon').append('<div id="first'+count+'">text</div>');
    count++;
});

});//]]>  

function submitAll (){
	$('form').each(function() {
	    var that = $(this);
	    $.post(that.attr('action'), that.serialize());
	});
}


	
function admSelectCheck1(oSelect, el){
	alert("1");
	var selectId = el.toString();
	alert(selectId);
	var id = selectId.substring(6);
	alert(id);
	var idCommon ='queCommon'+id;
	var idComment ='queComment'+id;
	alert(idComment);
	var oform = oSelect.form;
	for (var i = 0; i < oform.length; i++) {
		var x = oform.elements[i].name;
		while( x =="questionType"){
			var opt = oSelect.options[oSelect.selectedIndex].value;
			alert(opt);
				if(opt=="radio" || opt == "checkBox" || opt == "multiSelect" ){
					
					    	document.getElementById(idCommon).style.display = "block";
					    	}
					        else{
					        	document.getElementById(idCommon).style.display = "none";
					        }
				if(opt=="essay"){
					alert("in");
			    	document.getElementById(idComment).style.display = "block";
			   	}
			       else{
			    	   document.getElementById(idComment).style.display = "none";
			       }
				break;
				}
		
			}
		} 

	
	  
	/* var selectId = el.toString();
	var id = selectId.substring(4);
	var opt = sel.options[sel.selectedIndex].value;
	
	var idComment ='#commentAnswerOpt'+id;
	
	if(sel){
	
		    if(opt=="radio" || opt == "checkBox" || opt == "multiSelect" ){
		    	alert("in");
		    	document.el.elements["commonAnswerOpt1"].style.display = "block";
		    	//document.getElementById(idCommon).style.display = "block";
		    	}
		        else{
		        	//el.elements["commonAnswerOpt1"].style.display = "none";
		        	document.getElementById("#commonAnswerOpt").style.display = "none";
		        }
		    if(opt=="essay"){
		    	alert("in");
		    	document.getElementById("#commentAnswerOpt").style.display = "block";
		   	}
		       else{
		    	   document.getElementById(idComment).style.display = "none";
		       }
	}else{
		document.getElementById(idCommon).style.display = "none";
		document.getElementById(idComment).style.display = "none";
	}      
} */

</script>

</head>
<body>


<div class="panel-group" id="accordion">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
          Add Question
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">
        <form:form id = "que1" method="post" action="questionnaire/save" commandName="questionAccordion" class="form-horizontal">
        
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
					         <form:select path ="questionType"  onchange="admSelectCheck(this);" >
					        	<form:option  selected="selected" value="0" label = "--Choose Question Type--"></form:option>
							    <form:option id="commonOption" value="radio">Radio Button</form:option>
							    <form:option id="commonOption1" value="checkBox">Check Box</form:option>
							    <form:option id="commonOption2" value="multiSelect">MultiSelect Box</form:option>
							    <form:option id="commonOption3" value="singleText">Single Text Box</form:option>
							    <form:option id="commentOption" value="essay">Comment/Essay Box</form:option>
							</form:select>
						</div>	
						<div class="form-group" id="commonAnswerO" style="display:none">
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
						<div class="form-group" id="commentAnswerO" style="display:none">
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
  <div  id="clonedInput1" class="panel panel-default template">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapse20">
         Question #2
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
						<div class="form-group" id="queCommon" class="queCommon"  style="display:none">
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
						<div class="form-group" id="queComment" class="queComment" style="display:none">
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