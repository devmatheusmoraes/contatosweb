package br.com.cotiinformatica.repositories;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import br.com.cotiinformatica.entities.Usuario;

public class UsuarioRepository {
	
	private JdbcTemplate jdbcTemplate;
	
	public UsuarioRepository(DataSource dataSource) {
		
		jdbcTemplate = new JdbcTemplate(dataSource);
		
	}
	
	public void create(Usuario usuario) throws Exception {
		
		String query = "insert into usuario(nome, login, email, senha)"
				+ "		values(?, ?, ?, md5(?))";
		
		Object[] params = {
				usuario.getNome(),
				usuario.getLogin(),
				usuario.getEmail(),
				usuario.getSenha(),
		};
		
		jdbcTemplate.update(query, params);
		
	}
	
	public Usuario findByEmail(String email) throws Exception{
		
		String query = "select idusuario, nome, login, email, senha from usuario where email = ?";
		
		Object[] params = { email };
		
		List<Usuario> usuarios = jdbcTemplate.query( query, params, new RowMapper<Usuario>() {
			@Override
			public Usuario mapRow(ResultSet rs, int rowNum) throws SQLException {
				Usuario usuario = new Usuario();
				usuario.setIdUsuario(rs.getInt("idusuario"));
				usuario.setEmail(rs.getString("email"));
				usuario.setLogin(rs.getString("login"));
				usuario.setSenha(rs.getString("senha"));
				usuario.setNome(rs.getString("nome"));
				
				return usuario;
			}
		});
		
		if (usuarios.size() >= 1 )			
			return usuarios.get(0);
		else
			return null;
		
	}
	
	public Usuario findByEmailAndSenha(String email, String senha) throws Exception {
		
		String query = "select idusuario ,nome, login, email, senha from usuario where email = ? and senha = md5(?)";
		
		Object[] params = { email, senha };
		
		List<Usuario> usuarios = jdbcTemplate.query( query, params, new RowMapper<Usuario>() {
			@Override
			public Usuario mapRow(ResultSet rs, int rowNum) throws SQLException {
				Usuario usuario = new Usuario();
				
				usuario.setIdUsuario(rs.getInt("idusuario"));
				usuario.setLogin(rs.getString("login"));
				usuario.setEmail(rs.getString("email"));
				usuario.setSenha(rs.getString("senha"));
				usuario.setNome(rs.getString("nome"));
				
				
				return usuario;
			}
		});
		
		if(usuarios.size() >= 1)
			return usuarios.get(0);
		else
			return null;
		
		
	}

}
