package br.com.cotiinformatica.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MenuController {
	
	@RequestMapping(value="/admin/menu")
	public ModelAndView menuController() {
		
		ModelAndView modelAndView = new ModelAndView("admin/menu");
		return modelAndView;
		
	}

}
