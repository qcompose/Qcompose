package co.usassoc.qcomposer.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.usassoc.qcomposer.model.Questionnaire;

@Controller
public class QuestionnaireController {
	

    @RequestMapping(value="questionnaire/add", method=RequestMethod.GET)
	public ModelAndView addQuestionnaire(@ModelAttribute("questionnaire") @Valid Questionnaire questionnaire, BindingResult result) {
		return new ModelAndView("questionnaire");
	}

}
