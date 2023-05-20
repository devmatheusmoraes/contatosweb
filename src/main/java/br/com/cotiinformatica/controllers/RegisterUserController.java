package br.com.cotiinformatica.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterUserController {
	
	@RequestMapping(value="/register_user")
	public ModelAndView registerUserController() {
		
		ModelAndView modelAndView = new ModelAndView("register_user");
		return modelAndView;
		
	}

}
