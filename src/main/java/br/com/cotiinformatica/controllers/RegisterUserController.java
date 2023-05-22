package br.com.cotiinformatica.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.cotiinformatica.dtos.RegisterUserDto;
import br.com.cotiinformatica.entities.Usuario;
import br.com.cotiinformatica.repositories.UsuarioRepository;

@Controller
public class RegisterUserController {
	
	@Autowired
	private UsuarioRepository usuarioRepository;
	
	@RequestMapping(value="/register_user")
	public ModelAndView registerUser() {
		
		ModelAndView modelAndView = new ModelAndView("register_user");
		modelAndView.addObject("dto", new RegisterUserDto());
		
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/register_user-post", method=RequestMethod.POST)
	public ModelAndView registerUserPost(RegisterUserDto dto) {
		
		ModelAndView modelAndView = new ModelAndView("register_user");
		
		try {
			
			Usuario usuario = new Usuario();
			
			usuario.setNome(dto.getNome());
			usuario.setLogin(dto.getLogin());
			usuario.setSenha(dto.getSenha());
			usuario.setEmail(dto.getEmail());
			
			usuarioRepository.create(usuario);
			
			dto = new RegisterUserDto();
			
			modelAndView.addObject("mensagem", "Usuário criado com sucesso");
			
		}catch(Exception e){
			modelAndView.addObject("mensagem", e.getMessage());
		}
		
		modelAndView.addObject("dto", dto);
		
		return modelAndView;
		
	}

}
