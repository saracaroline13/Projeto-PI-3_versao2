<%-- 
    Document   : cadastrarCliente
    Created on : 10/10/2020, 00:19:52
    Author     : Sara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
   <%@include file = "header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Cliente</title>
    </head>
    <body>
        <h1>Cadastro</h1>
        
        <form action="CadastrarCliente" method="POST">
            <p>Nome</p>
            <input name ="nome" class="form-control" required="true"/></br>
            <p>CPF</p>
            <input name ="cpf" class="form-control" required="true"/></br>
            <p>Sexo</p>
            <input name="sexo" class="form-control" required="true"/></br>
            <p>E-mail</p>
            <input name="email" class="form-control" required="true"/></br>
            <p>Celular</p>
            <input name="celular" class="form-control" required="true"/></br>
            <p>Rua</p>
            <input name="rua" class="form-control" required="true"/></br>
            <p>Bairro</p>
            <input name="bairro" class="form-control" required="true"/></br>
            <p>CEP</p>
            <input name="cep" class="form-control" required="true"/></br>
            <p>Cidade</p>
            <input name="cidade" class="form-control" required="true"/></br>
            
            <button type="submit" class="btn btn-primary">Concluir</button>
    </body>
</html>
