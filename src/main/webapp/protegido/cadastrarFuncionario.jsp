<%-- 
    Document   : cadastrarFuncionario
    Created on : 09/10/2020, 14:33:50
    Author     : Matheus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file = "../header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/cadastrarFuncionario.css" />
        <title>Cadastrar Funcionario</title>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    </head>
    <body>
        
        
        <main class="container">
            
        <h1>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
            &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
            &ensp;Cadastro</h1>
        
        <form action="<c:url value="/CadastrarFuncionario"/>" method="POST">
            <p>Categoria do Produto</p>
              <select name="filial">
              <option value="Shop_SportsSP_1">Shop_SportsSP_1</option>
              <option value="Shop_SportsSP_2">Shop_SportsSP_2</option>
              <option value="Shop_SportsSP_3">Shop_SportsSP_3</option>
              <option value="Shop_SportsRJ_1">Shop_SportsRJ_1</option>
              </select>
            
            </br>
            </br>
            
            <p id="titulo-nome">Nome</p> 
            <input name ="nome" class="form-control" required="true" id="name"/></br>
            
            <p id="titulo-cpf">CPF</p>
            <input name ="cpf" minlength="11" maxlength="11" class="form-control" required="true" id="cpf"/></br>
            
            <p id="titulo-sexo">Sexo</p>
           <%-- <input name="sexo" class="form-control" required="true"/></br> --%>
            <select name="sexo" id="sex">
                <option value="feminino">Feminino</option>
                <option value="masculino">Masculino</option>
            </select>
            
            </br>
            </br>
            
            <p id="titulo-data">Nascimento</p>
            <input name="data_nasc" id="data" class="form-control" onkeypress="$(this).mask('00/00/0000');" required="true"/></br>
            
            <p id="titulo-civil">Estado Civil</p>
            <%-- <input name="estado_civil" class="form-control" required="true"/></br> --%>
            
            <select name="estado_civil" id="estado_ci">
                <option value="casado">Casado(a)</option>
                <option value="solteiro">Solteiro(a)</option>
                <option value="divorciado">Divorciado(a)</option>
                <option value="viuvo">Viuvo(a)</option>
            </select>
            
            </br>
            </br>
            
            <p id="titulo-cargo"> Cargo</p>
            <%-- <input name="cargo" class="form-control" required="true"/></br>--%>
            
            <select name="cargo" id="cargos">
                <option value="vendedor">Vendedor(a)</option>
                <option value="estoquista">Estoquista</option>
                <option value="gerente">Gerente</option>
                <option value="rh">RH</option>
            </select>
            
            </br>
            </br>
            
            
            <p id="titulo-salario">Salário</p>
            <input name="salario" class="form-control" required="true" id="salario"/></br>
            
            <p id="titulo-email">E-mail</p>
            <input name="email" minlength="9"  class="form-control" required="true" id="email"/></br>
            
            <p id="titulo-telefone">Celular</p>
            <input name="contato" class="form-control" onkeypress="$(this).mask('(00)00000-0000');" required="true" id="telefone"/></br>
            
            <p id="titulo-rua">Rua</p>
            <input name="rua" class="form-control" required="true" id="rua"/></br>
            
            <p id="titulo-bairro">Bairro</p>
            <input name="bairro" class="form-control" required="true" id="bairro"/></br>
            
            <p id="titulo-cep">CEP</p>
            <input name="cep" class="form-control" onkeypress="$(this).mask('00000-000');" required="true" id="cep"/></br>
            
            <p id="titulo-cidade">Cidade</p>
            <input name="cidade" class="form-control" required="true" id="cidade"/></br>
            
            <p id="titulo-login">Login</p>
            <input name="login" class="form-control" required="true" id="login"/></br>
            
            <p id="titulo-senha">Senha</p>
            <input name="senha" type="password" class="form-control" required="true" id="senha"/></br>
            
            <button type="submit" class="btn btn-primary">Concluir</button>
            
        </form> 
            <%-- <button href="index.jsp" class="btn btn-secondary">Cancelar</button> --%>
            
            <a href="<c:url value="/index.jsp"/>"><button class="btn btn-secondary">Cancelar</button></a>
            
            
            
        </main>
        <footer>
            © 2020 SEXTETO SECRETO, TODOS OS DIREITOS RESERVADOS
        </footer>
    </body>
</html>
