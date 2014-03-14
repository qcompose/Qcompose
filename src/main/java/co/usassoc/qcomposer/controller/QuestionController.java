package co.usassoc.qcomposer.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.usassoc.qcomposer.model.QuestionAndAnswerOptions;

@Controller
public class QuestionController {
	
	@Autowired
	ServletContext context;
	

    @RequestMapping(value="**/questionnaire/question/add", method=RequestMethod.GET)
	public String loadAddQuestion(Map<String, Object> map) {
    	 map.put("question", new QuestionAndAnswerOptions());
	        return "question";
	}
    
    @RequestMapping(value="**/questionnaire/question/save", method=RequestMethod.GET)
   	public String addQuestion(@ModelAttribute("questionAndAnswerOptions") @Valid QuestionAndAnswerOptions questionAndAnswerOptions, BindingResult result) {
    	 if (result.hasErrors()) {
	            return "questionAndAnswerOptions";
	        }
    	 ArrayList<QuestionAndAnswerOptions> questionsList = new ArrayList<QuestionAndAnswerOptions>();
    	 mapQuestionAndAnswerOptionsToTable(questionsList);
    	 
    	 questionsList.add(questionAndAnswerOptions);
    	 context.setAttribute("questionsList", questionsList);
	        return "redirect:questionnaire/add";
   	}

    
    private void mapQuestionAndAnswerOptionsToTable(List<QuestionAndAnswerOptions> questionAndAnswerOptionsList){
    	if(questionAndAnswerOptionsList != null && questionAndAnswerOptionsList.size() > 0 ){
    		foreach(questionAndAnswerOptionsList: QuestionAndAnswerOptions){
    			
    		}
    	}
    	
    	
    }
}
