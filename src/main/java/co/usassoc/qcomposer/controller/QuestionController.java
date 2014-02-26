package co.usassoc.qcomposer.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.usassoc.qcomposer.model.Question;
import co.usassoc.qcomposer.service.api.QuestionService;

@Controller
public class QuestionController {
	
	
	private QuestionService questionService;
	

    @RequestMapping(value="**/questionnaire/question/add", method=RequestMethod.GET)
	public String loadAddQuestion(Map<String, Object> map) {
    	 map.put("question", new Question());
	        return "question";
	}
    
    @RequestMapping(value="**/questionnaire/question/save", method=RequestMethod.GET)
   	public String addQuestion(@ModelAttribute("question") @Valid Question question, BindingResult result) {
    	 if (result.hasErrors()) {
	            return "question";
	        }
    	// questionService.addQuestion(question);
	        return "redirect:questionnaire";
   	}

}