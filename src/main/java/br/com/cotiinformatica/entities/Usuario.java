package br.com.cotiinformatica.entities;

import java.util.List;

import lombok.Data;

@Data
public class Usuario {
	
	private Integer idUsuario;
	private String nome, login, email, senha;
	private List<Contato> contato;

}
