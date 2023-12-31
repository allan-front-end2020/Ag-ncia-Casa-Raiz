<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
 <link rel="stylesheet" type="text/css" href="./cadastro.css">
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
      
      
      	<div class="container mt-6">
	
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
				<label for="endereco">Endere�o:</label> <input type="text"
					id="endereco" name="endereco" class="form-control">
			</div>
			<div class="row">
				<div class="form-group col-6">
					<label for="tel">Telefone:</label> <input type="tel" id="tel"
						name="tel" class="form-control" maxlength="11">
				</div>
				<div class="form-group col-6">
					<label for="dataNasc">Data de Nascimento:</label> <input
						type="date" id="dataNasc" name="dataNasc" class="form-control">
				</div>
			</div>
			<button type="submit" class="btn btn-success btn-block" data-toggle="modal" data-target="#confirmationModal">Cadastrar</button>



		</form>
      
        
      </div>
      
      
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
























	
