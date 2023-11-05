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



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
  
    <!-- Inclua os links para os arquivos CSS do Bootstrap e seu arquivo de estilo personalizado -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
   <link rel="stylesheet" type="text/css" href="./atualizar.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer">
  </head>
  <body>
  <nav class="sidebar">
  <div class="logo">
    <ul class="menu">
      <li class="active">
        <a href="#">
          <i class="fas fa-tachometer-alt"></i>
          <span>Dashboard</span>
        </a>
      </li>
      <li>
        <a href="/Ultimo-crud/ReadController">
          <i class="fas fa-user"></i>
          <span>Cadastrar Cliente</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class="fas fa-globe"></i>
          <span>Cadastrar Destino</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class="fas fa-calendar"></i>
          <span>Realizar Reserva</span>
        </a>
      </li>
      <li class="logout">
        <a href="./index.html">
          <i class="fas fa-sign-out-alt"></i>
          <span>Sair</span>
        </a>
      </li>
    </ul>
  </div>
</nav>

    <div class="main--content">
      <div class="header--wrapper">
        <div class="header--title">
          <span>Primeiro</span>
          <h2>Dashbord</h2>
        </div>
        <div class="user--info">
          <div class="searh--box">
            <i class="fa-solid fa-search"></i>
            <input type="text" placeholder="Search" />
          </div>
          <img src="../img/Allan.jpg" alt="foto de  uma pessoa" />
        </div>
      </div>

      <div class="section--container mt-">
      
  
      
      <div class="container">
		 <form action="UpDateController" method="post">
		   <h2 class="text-center m-1">Atualizar</h2>
		<div class="row">
		  <div class="form-group col-1">
		   <label for="nome">Id:</label>
			<input type="text" value="${client.id}" id="id" name="id" class="form-control" >
			</div>
		
		
			<div class="form-group col-11">
				<label for="nome">Nome:</label> <input type="text" id="nome"
					name="nome" value="${client.nome}" class="form-control" required>
			</div>
			
		
		</div>
		  
			 <div class="row">
			<div class="form-group col-6">
				<label for="login">Login:</label> <input type="text" id="login"
					name="login" value="${client.login}" class="form-control" required>
			</div>
			<div class="form-group col-6">
				<label for="senha">Senha:</label> <input type="password"  value="${client.senha}" id="senha"
					name="senha" class="form-control">
			</div>
			</div>
			
			
			<div class="form-group">
				<label for="endereco">Endereço:</label> <input type="text"
					id="endereco" value="${client.endereco}" name="endereco" class="form-control">
			</div>
			 <div class="row">
			 <div class="form-group col-6">
				<label for="tel">Telefone:</label> <input value="${client.tel}" type="text" id="tel"
					name="tel" class="form-control">
			</div>
			<div class="form-group col-6">
				<label for="dataNasc">Data de Nascimento:</label> <input type="date"
					id="dataNasc" value="${client.dataNasc}" name="dataNasc" class="form-control">
			</div>
			 
			 </div>
			
			<button type="submit" class="btn btn-success btn-block" >Atualizar</button>
		</form>
	</div>
	
	    <!-- Modal de Confirmação -->
    <div id="confirmationModal" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body text-center">
                    Atualização concluída com sucesso!
                </div>
            </div>
        </div>
    </div>

    <!-- Indicador de Carregamento -->
    <div class="loading text-center" style="display: none;">
        <img src="loading.gif" alt="Loading">
    </div>
	
  <script>
        // Quando o botão de atualização for clicado
        $('#updateButton').click(function () {
            // Mostra o indicador de carregamento
            $('.loading').show();

            // Simula uma requisição assíncrona (substitua por sua lógica de atualização)
            setTimeout(function () {
                // Oculta o indicador de carregamento
                $('.loading').hide();

                // Exibe o modal de confirmação
                $('#confirmationModal').modal('show');

                // Fecha o modal de confirmação após 3 segundos
                setTimeout(function () {
                    $('#confirmationModal').modal('hide');
                }, 3000);
            }, 2000); // Simula uma resposta após 2 segundos (substitua pelo seu código de atualização)
        });
    </script>
	

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        
      </div>
      
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>

























