 
      //These JS generates table with single row , button to add and delete row functionalities 
      //when common options are selected
    function getElementsByClassName(c,el){
        if(typeof el=='string'){el=document.getElementById(el);}
        if(!el){el=document;}
        if(el.getElementsByClassName){return el.getElementsByClassName(c);}
        var arr=[],
            allEls=el.getElementsByTagName('*');
        for(var i=0;i<allEls.length;i++){
            if(allEls[i].className.split(' ').indexOf(c)>-1){arr.push(allEls[i])}
        }
        return arr;
    }
    function killMe(el){
        return el.parentNode.removeChild(el);
    }
    function getParentByTagName(el,tag){
        tag=tag.toLowerCase();
        while(el&&el.nodeName.toLowerCase()!=tag){
            el=el.parentNode;
        }
        return el||null;
    }
    function delRow(){
        killMe(getParentByTagName(this,'tr'));
    }
    function addRow() {
        var table = getParentByTagName(this,'table')
        var lastInputs=table.rows.length>2?
            table.rows[table.rows.length-2].getElementsByTagName('input'):[];
        for(var i=0;i<lastInputs.length-1;i++){
            if(lastInputs[i].value==''){return false;}
        }
        var rowCount = table.rows.length;
        var row = table.insertRow(rowCount-1);
        
        var cell1 = row.insertCell(0);
        var element1 = document.createElement("input");
        element1.type = "text";
        element1.path = "answerOptions";
        cell1.appendChild(element1);

        
        var element3 = document.createElement("input");
        element3.type = "button";
        element3.className="del";
        element3.value=' Delete';
        element3.onclick=delRow;
        cell1.appendChild(element3);
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