<%-- 
    Document   : cadastrarFuncionario
    Created on : 09/10/2020, 14:33:50
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file = "header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Funcionario</title>
    </head>
    <body>
        <h1>Cadastro</h1>
        
        <form action="CadastrarFuncionario" method="POST">
            <p>Categoria do Produto</p>
              <select name="filial">
              <option value="Shop_SportsSP_1">Shop_SportsSP_1</option>
              <option value="Shop_SportsSP_2">Shop_SportsSP_2</option>
              <option value="Shop_SportsSP_3">Shop_SportsSP_3</option>
              <option value="Shop_SportsRJ_1">Shop_SportsRJ_1</option>
              </select></br>
            <p>Nome</p>
            <input name ="nome" class="form-control" required="true"/></br>
            <p>CPF</p>
            <input name ="cpf" class="form-control" required="true"/></br>
            <p>Sexo</p>
            <input name="sexo" class="form-control" required="true"/></br>
            <p>Data Nascimento</p>
            <input name="data_nasc" class="form-control" required="true"/></br>
            <p>Estado Civil</p>
            <input name="estado_civil" class="form-control" required="true"/></br>
            <p> Cargo</p>
            <input name="cargo" class="form-control" required="true"/></br>
            <p> Salario</p>
            <input name="salario" class="form-control" required="true"/></br>
            <p>E-mail</p>
            <input name="email" class="form-control" required="true"/></br>
            <p>Celular</p>
            <input name="contato" class="form-control" required="true"/></br>
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
