package br.com.cotiinformatica.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginUserController {

	@RequestMapping(value = "/")
	public ModelAndView loginUserController() {
		
		ModelAndView modelAndView = new ModelAndView("login_user");
		return modelAndView;
		
	}

}
