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

import co.usassoc.qcomposer.model.AnswerOptions;
import co.usassoc.qcomposer.model.Question;
import co.usassoc.qcomposer.model.QuestionAndAnswerOptions;

@Controller
public class QuestionController {
	
	@Autowired
	ServletContext context;
	ArrayList<Question> questionsList = new ArrayList<Question>();
	
	
	@RequestMapping(value="**/questionnaire/add", method=RequestMethod.GET)
	public String loadacreateQuestionnaire(Map<String, Object> map) {
    	 map.put("questionSetUp", new QuestionAndAnswerOptions());
	        return "questionSetUp";
	}

    @RequestMapping(value="**/questionnaire/question/add", method=RequestMethod.GET)
	public String loadAddQuestion(Map<String, Object> map) {
    	 map.put("question", new QuestionAndAnswerOptions());
	        return "question";
	}
    
    @RequestMapping(value="**/questionnaire/question/save", method=RequestMethod.POST)
   	public String addQuestion(@ModelAttribute("questionSetUp") @Valid QuestionAndAnswerOptions questionAndAnswerOptions, BindingResult result, Map model) {
    	 if (result.hasErrors()) {
	            return "questionSetUp";
	        }
    	 Question question =  new Question();
    	 AnswerOptions answerOptions =  new AnswerOptions();
    	 List<String> optionsList = new ArrayList<String>();
    	 List<AnswerOptions> answerOptionsList = new ArrayList<AnswerOptions>();
    	 List<AnswerOptions> loadedAnswerOptions = new ArrayList<AnswerOptions>();
    	 
    	 
    	 ArrayList<QuestionAndAnswerOptions> questionAndAnswerOptionsList = new ArrayList<QuestionAndAnswerOptions>();
    	 if(questionAndAnswerOptions.getQuestionText()!= null && !questionAndAnswerOptions.getQuestionText().isEmpty()){
    		 questionAndAnswerOptionsList.add(questionAndAnswerOptions);
	    	 question =  mapQuestionAndAnswerOptionsToTable(questionAndAnswerOptionsList, question, answerOptions);
	    	 loadedAnswerOptions = mapAnswerOptions(questionAndAnswerOptionsList,answerOptionsList,optionsList);
	    	 question.setAnswerOptions(loadedAnswerOptions);
	    	 questionsList.add(question);
	    	 context.setAttribute("questionsList", questionsList);
	    	 }
    	 model.put("questionSetUp", questionAndAnswerOptions);
	        return "redirect:questionnaire/add";

   	}
   
    
    private Question mapQuestionAndAnswerOptionsToTable(ArrayList<QuestionAndAnswerOptions> questionAndAnswerOptionsList, Question question,  AnswerOptions answerOptions){
    	if(questionAndAnswerOptionsList != null && questionAndAnswerOptionsList.size() > 0 ){
    		for(QuestionAndAnswerOptions questionAndAnswerOptions: questionAndAnswerOptionsList){
    			question.setQuestionText(questionAndAnswerOptions.getQuestionText());
    			question.setQuestionType(questionAndAnswerOptions.getQuestionType());
    			}
    	}
    	return question;
    	
    }
    
   
    
    @SuppressWarnings("unchecked")
	private List<AnswerOptions> mapAnswerOptions(ArrayList<QuestionAndAnswerOptions> questionAndAnswerOptionsList,  List<AnswerOptions> answerOptionsList, List<String> optionsList){
    	if(questionAndAnswerOptionsList != null && questionAndAnswerOptionsList.size() > 0 ){
    		for(QuestionAndAnswerOptions questionAndAnswerOptions: questionAndAnswerOptionsList){
    			if(questionAndAnswerOptions.getAnswerOptions() != null)
    			optionsList = questionAndAnswerOptions.getAnswerOptions();
    			if(optionsList.size() >0){
    			for(int i=0; i<optionsList.size(); i++){
    				AnswerOptions answerOptions = new  AnswerOptions();
    				String option = (String) optionsList.get(i);
    				if(!option.isEmpty()){
    				answerOptions.setOptionBody(option);
    				answerOptionsList.add(answerOptions);
    				}
    			}
    			}
    		}
    	}
    	return answerOptionsList;
    }
    
    
}
