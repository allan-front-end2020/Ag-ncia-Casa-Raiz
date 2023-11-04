<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	background-color: #f7f7f7;
}

.container {
	max-width: 700px;
	margin: 0 auto;
	padding: 30px;
	background-color: #fff;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	border-radius: 5px;
	margin-top: 50px;
}

.form-group {
	margin-bottom: 20px;
}

label {
	font-weight: bold;
}
</style>
</head>

<body>

	
	

	<div class="container">
		<h2 class="text-center">Cadastrar Cliente</h2>
		<form action="CreateController" method="post">
			<div class="form-group">
				<label for="nome">Nome:</label> <input type="text" id="nome"
					name="nome" class="form-control" required>
			</div>
			<div class="row">
				<div class="form-group col-6">
					<label for="login">Login:</label> <input type="text" id="login"
						name="login" class="form-control" required>
				</div>
				<div class="form-group col-6">
					<label for="senha">Senha:</label> <input type="password" id="senha"
						name="senha" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label for="endereco">Endereço:</label> <input type="text"
					id="endereco" name="endereco" class="form-control">
			</div>
			<div class="row">
				<div class="form-group col-6">
					<label for="tel">Telefone:</label> <input type="tel" id="tel"
						name="tel" class="form-control">
				</div>
				<div class="form-group col-6">
					<label for="dataNasc">Data de Nascimento:</label> <input
						type="date" id="dataNasc" name="dataNasc" class="form-control">
				</div>
			</div>
			<button type="button" class="btn btn-success btn-block"
				data-toggle="modal" data-target="#confirmationModal">Cadastrar</button>

			<div class="modal fade" id="confirmationModal" tabindex="-1"
				role="dialog" aria-labelledby="confirmationModalLabel"
				aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="confirmationModalLabel">Confirmação
								de Cadastro</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">Deseja realmente cadastrar o
							cliente?</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Fechar</button>
							<button type="submit" class="btn btn-success">Cadastar</button>
						</div>
					</div>
				</div>
			</div>

		</form>

		<div class="mt-4 row">
			<div class="col-6">
				<div class="col-6">
					<h6>
						<u><a href="http://localhost:8080/Ultimo-crud/ReadController">Listar
								clientes </a></u>
					</h6>
				</div>
			</div>
			<div class="col-6 text-right">
				<h6>
					<u><a href="index.html">Voltar para home</a></u>
				</h6>
			</div>
		</div>
	</div>

	<!-- Modal de confirmação -->

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>