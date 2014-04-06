// This query adds new question panel 

function setButton(){
	var $template = $(".template");

var hash = 2;
    $(".btn-add-panel").on("click", function () {
    var $newPanel = $template.clone();
    $newPanel.find(".collapse").removeClass("in");
    $newPanel.find(".accordion-toggle").attr("href",  "#" + (++hash))
             .text("Dynamic panel #" + hash);
    $newPanel.find(".panel-collapse").attr("id", hash).addClass("collapse").removeClass("in");
    $("#accordion1").append($newPanel.fadeIn());
});
 
}

      //These JS generates table with single row , button to add and delete row functionalities 
      //when common options are selected
   
        function addRow(tableID) {
 
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
 
        function deleteRow(tableID) {
            try {
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
        
	
    // This JS shows single row table for common Option type (check box, radio button ect ) and Text area
    //for comment or essay question types when selected 
   
    function admSelectCheck(nameSelect)
    {
        if(nameSelect){
            commonOptionValue = document.getElementById("commonOption").value;
            commonOptionValue1 = document.getElementById("commonOption1").value;
            commonOptionValue2 = document.getElementById("commonOption2").value;
            commonOptionValue3 = document.getElementById("commonOption3").value;
            commentOptionValue = document.getElementById("commentOption").value;
            if((commonOptionValue == nameSelect.value) ||(commonOptionValue1 == nameSelect.value) ||
            		(commonOptionValue2 == nameSelect.value) || (commonOptionValue3 == nameSelect.value)){
                document.getElementById("commonAnswerOpt").style.display = "block";
            }
            else{
                document.getElementById("commonAnswerOpt").style.display = "none";
              
            }
            if(commentOptionValue == nameSelect.value){
           	 document.getElementById("commentAnswerOpt").style.display = "block";
           } else{
        	   document.getElementById("commentAnswerOpt").style.display = "none";
           }
        }
        else{
            document.getElementById("commonAnswerOpt").style.display = "none";
            document.getElementById("commentAnswerOpt").style.display = "none";
        }
    }
    
    
    
    function addRowAccordion(tabID) {
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

    function deleteRowAccordion(tabID) {
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