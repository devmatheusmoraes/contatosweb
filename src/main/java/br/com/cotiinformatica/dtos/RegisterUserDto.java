package br.com.cotiinformatica.dtos;

import lombok.Data;

@Data
public class RegisterUserDto {
	
	private String nome, login, email, senha;

}
