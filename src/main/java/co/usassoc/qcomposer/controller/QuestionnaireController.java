package co.usassoc.qcomposer.controller;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.usassoc.qcomposer.model.Question;
import co.usassoc.qcomposer.model.QuestionAndAnswerOptions;
import co.usassoc.qcomposer.model.Questionnaire;
import co.usassoc.qcomposer.service.api.QuestionnaireService;

@Controller
public class QuestionnaireController {
	
	@Autowired
	private QuestionnaireService questionnaireService;
	@Autowired
	ServletContext context;

	// /* @RequestMapping(value="**/questionnaire/add", method=RequestMethod.GET)
		//public String loadacreateQuestionnaire(Map<String, Object> map) {
	    //	 map.put("questionnaire", new Questionnaire());
		   //     return "questionnaire";
		//}
	  
	  
	  
    @RequestMapping(value="**/questionnaire/save", method=RequestMethod.POST)
	public String addQuestionnaire(@ModelAttribute("questionSetUp") @Valid QuestionAndAnswerOptions questionAndAnswerOptions, BindingResult result) {
    	if (result.hasErrors()) {
            return "questionSetUp";
        }
    	ArrayList<Question> questionsList = new ArrayList<Question>();
    	Questionnaire questionnaire = new Questionnaire();
    	questionnaire.setOrgName(questionAndAnswerOptions.getOrgName());
    	questionnaire.setTitle(questionAndAnswerOptions.getTitle());
    	questionsList  =  ((ArrayList<Question>) context.getAttribute("questionsList"));
    	questionnaire.setQuestions(questionsList);
    	questionnaireService.addQuestionnaire(questionnaire);
        return "questionSetUp";

	}

}
