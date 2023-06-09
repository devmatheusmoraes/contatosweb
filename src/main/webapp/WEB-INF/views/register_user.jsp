<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="pt-br" data-bs-theme="dark">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row justify-content-center align-items-center vh-100">
				<div class="col-12 col-sm-10 col-md-8 col-lg-6 col-xl-5 col-xxl-4">
				
				<div class="row mb-5 justify-content-center">
					<div class="col-auto">
						<h1>ContatosWeb</h1>
					</div>
				</div>
				
					<form method="post" action="register_user-post">
						<div class="row">
							<div class="col">
								<label class="form-labe">Nome</label>
								<form:input path="dto.nome" type="text" name="name" id="name" class="form-control" required="required"/>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<label class="form-labe">Login</label>
								<form:input path="dto.login" type="text" name="telefone" id="telefone" class="form-control" required="required"/>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<label for="email" class="form-labe">E-mail de acesso</label>
								<form:input path="dto.email" type="email" name="email" id="email" class="form-control" required="required"/>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<label for="password" class="form-labe">Senha de acesso</label>
								<form:input path="dto.senha" type="password" name="password" id="password" class="form-control" required="required"
											pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()])[A-Za-z\d!@#$%^&*()]{8,}$"
											title="Informe uma senha com pelo menos 1 letra mai�scula,1 letra min�scula, 1 n�mero, 1 s�mbolo
											e no m�nimo 8 caracteres."/>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<label for="password" class="form-labe">Confirma��o da Senha</label>
								<input type="password" name="password" id="password" class="form-control">
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-12 mb-2 w-100">
								<button class="btn btn-success w-100" type="submit">Cadastrar</button>
							</div>
							<div class="col-12">
								<a class="btn btn-primary w-100" href="/contatosweb/" role="button">Voltar</a>
							</div>
						</div>
					</form>
					<div class="row mt-2 text-center">
						<h4>${ mensagem }</h4>
					</div>
				</div>
		</div>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>