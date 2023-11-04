<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Clientes</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container">
    <nav class="nav">
        <a class="nav-link active" href="#">Ativo</a>
        <a class="nav-link" href="#">Link</a>
        <a class="nav-link" href="#">Link</a>
        <a class="nav-link disabled" href="#">Desativado</a>
    </nav>
    <h1 class="mt-5">Lista de Clientes</h1>
    <a href="./cadastro.jsp" class="btn btn-primary mb-5">Adicionar Cliente</a>
    <table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nome</th>
                <th scope="col">Login</th>
                <th scope="col">Senha</th>
                <th scope="col">Endereço</th>
                <th scope="col">Telefone</th>
                <th scope="col">Data de Nascimento</th>
                <th scope="col">Ações</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${clients}" var="client">
                <tr>
                    <td>${client.id}</td>
                    <td>${client.nome}</td>
                    <td>${client.login}</td>
                    <td>${client.senha}</td>
                    <td>${client.endereco}</td>
                    <td>${client.tel}</td>
                    <td>${client.dataNasc}</td>
                    <td>
                        <a href="UpDateController?id=${client.id}" class="btn btn-success">Editar</a>
                        <a href="#" data-client-id="${client.id}" class="btn btn-danger delete-client-button">Excluir</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <div class="modal fade" id="deleteClientModal" tabindex="-1" role="dialog" aria-labelledby="deleteClientModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteClientModalLabel">Confirm Deletion</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Deseja realmente deletar o cliente ?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <a href="#" id="deleteClientButton" class="btn btn-danger">Deletar</a>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.delete-client-button').on('click', function() {
                var clientId = $(this).data('client-id');
                $('#deleteClientButton').attr('href', 'DeleteController?id=' + clientId);
                $('#deleteClientModal').modal('show');
            });
        });
    </script>
</body>
</html>