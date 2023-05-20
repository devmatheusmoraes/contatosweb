<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br" data-bs-theme="dark">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<div class="row justify-content-center align-items-center vh-100">
				<div class="col-12 col-sm-10 col-md-8 col-lg-6 col-xl-5 col-xxl-4">
				
				<div class="row my-5 justify-content-center">
					<div class="col-auto">
						<h1>ContatosWeb</h1>
					</div>
				</div>
				
					<form>
						<div class="row">
							<div class="col">
								<label for="email" class="form-labe">E-mail</label>
								<input type="email" name="email" id="email" class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col">
								<label for="password" class="form-labe">Senha</label>
								<input type="password" name="password" id="password" class="form-control">
							</div>
						</div>
						<div class="row mt-2">
							<div class="col">
								<div class="form-check">
									<input type="checkbox" name="remember" id="remember" class="form-check-input">
									<label for="remember" class="form-check-label">Manter Conectado </label>
								</div>
							</div>
						</div>
						<div class="row my-3 justify-content-end">
							<div class="col-auto">
								<a href="/contatosweb/password_user">Esqueci minha senha</a>
							</div>
						</div>
						<div class="row">
							<div class="col-12 mb-2 w-100">
								<button class="btn btn-success w-100" type="submit" href="#">Entrar</button>
							</div>
							<div class="col-12">
								<a class="btn btn-primary w-100" href="/contatosweb/register_user" role="button">Cadastrar-se</a>
							</div>
						</div>
					</form>
				</div>
		</div>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>