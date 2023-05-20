package br.com.cotiinformatica.entities;

import lombok.Data;

@Data
public class Contato {
	
	private Integer idContato, idUsuario;
	private String nome, telefone, email, observacoes;
	
	private Usuario usuario;

}
