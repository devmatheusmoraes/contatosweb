<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="pt-br" data-bs-theme="dark">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Menu</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>

	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		  <div class="container-fluid">
			<a class="navbar-brand" href="#">ContatosWeb</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
			  <span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
			  <ul class="navbar-nav">
				<li class="nav-item">
				  <a class="nav-link active" aria-current="page" href="#">Menu</a>
				</li>
				<li class="nav-item dropdown">
				  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					Contatos
				  </a>
				  <ul class="dropdown-menu">
					<li><a class="dropdown-item" href="#">Cadastro Contatos</a></li>
					<li><a class="dropdown-item" href="#">Consulta Contatos</a></li>
				  </ul>
				</li>
			  </ul>
			</div>
			<div class="navbar-text">
				<span class="text-light">${ auth_usuario.nome }</span>
				<span class="text-light"> | </span>
				<span class="text-light">${ auth_usuario.email }</span>
				<a href="/contatosweb/logout" class="btn btn-outline-secondary
						text-white ms-2"
						onclick="return confirm('Deseja realmente sair do sistema?');">
					Sair do Sistema
				</a>
			</div>
		  </div>
		</nav>
		<div class="m-4">
			<div class="card">
				<div class="card-body">
					<h5>Menu principal</h5>
					<p>Seja bem vindo ao projeto ContatosWeb!</p>
				</div>
			</div>	
		</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

</body>
</html>