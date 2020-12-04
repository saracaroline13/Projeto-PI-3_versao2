<%-- 
    Document   : cadastrarCliente
    Created on : 10/10/2020, 00:19:52
    Author     : Sara
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<!DOCTYPE html>
<html> 
   <%@include file = "../header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/cadastrarCliente.css" />
        <title>Cadastrar Cliente</title>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </head>
    
    <body>
        <main class="container">
            
            <h1>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
            &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Cadastro</h1>

            <form action="CadastrarCliente" method="POST">
                </br>
                
                <p id="titulo-nome">Nome</p>
                <input name ="nome" class="form-control" required="true" id="nome"/></br>

                <p id="titulo-cpf">CPF</p>
                <input name ="cpf" class="form-control" required="true" id="cpf"/></br>

                <p id="titulo-sexo">Sexo</p>
                <%--  <input name="sexo" class="form-control" required="true"/></br> --%>

                <select name="sexo" id="sex">
                    <option value="feminino">Feminino</option>
                    <option value="masculino">Masculino</option>
                </select>
                
                </br>
                </br>

                <p id="titulo-email">E-mail</p>
                <input name="email" class="form-control" required="true" id="email"/></br>

                <p id="titulo-telefone">Celular</p>
                <input name="celular" class="form-control" onkeypress="$(this).mask('(00)00000-0000');" required="true" id="telefone"/></br>
                    
                <p id="titulo-rua">Rua</p>
                <input name="rua" class="form-control" required="true" id="rua"/></br>

                <p id="titulo-bairro">Bairro</p>
                <input name="bairro" class="form-control" required="true" id="bairro"/></br>

                <p id="titulo-cep">CEP</p>
                <input name="cep" class="form-control" onkeypress="$(this).mask('00000-000');" required="true" id="cep"/></br>

                <p id="titulo-cidade">Cidade</p>
                <input name="cidade" class="form-control" required="true" id="cidade"/></br>
                

                <button type="submit" class="btn btn-primary">Concluir</button>
                
            </form>
                
                <a href="<c:url value="/index.jsp"/>"><button class="btn btn-secondary">Cancelar</button></a>
                
        </main> 
        
        <footer>
            © 2020 SEXTETO SECRETO, TODOS OS DIREITOS RESERVADOS
        </footer>
    </body>
</html>
