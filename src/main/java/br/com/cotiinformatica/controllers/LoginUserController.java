package br.com.cotiinformatica.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.cotiinformatica.dtos.LoginUserDto;
import br.com.cotiinformatica.entities.Usuario;
import br.com.cotiinformatica.repositories.UsuarioRepository;

@Controller
public class LoginUserController {
	
	@Autowired
	private UsuarioRepository usuarioRepository;

	@RequestMapping(value = "/")
	public ModelAndView loginUserController() {
		
		ModelAndView modelAndView = new ModelAndView("login_user");
		
		modelAndView.addObject("dto", new LoginUserDto());
		
		return modelAndView;
		
	}
	
	@RequestMapping(value="/autenticar-post", method = RequestMethod.POST)
	public ModelAndView autenticar(LoginUserDto dto, HttpServletRequest request) {
		
		ModelAndView modelAndView = new ModelAndView("login_user");
		
		try {
			
			Usuario usuario = usuarioRepository.findByEmailAndSenha(dto.getEmail(), dto.getSenha());
			
			if (usuario != null) {
				
				request.getSession().setAttribute("auth_usuario", usuario);
				
				modelAndView.setViewName("redirect:/admin/menu");
				
			}else {
				
				modelAndView.addObject("mensagem", "Usuário ou senha inválidos");
				
			}
			
		}catch (Exception e) {
			
			modelAndView.addObject("mensagem", "Erro: " + e.getMessage());
			
		}
		
		modelAndView.addObject("dto", dto);
		
		return modelAndView;
		
		
	}

}
