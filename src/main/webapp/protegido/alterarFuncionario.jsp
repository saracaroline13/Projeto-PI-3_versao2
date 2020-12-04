<%-- 
    Document   : alterarFuncionario
    Created on : 09/10/2020, 16:21:16
    Author     : Matheus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<!DOCTYPE html>
<html>
    <%@include file = "../header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Atualização de Funcionario</title>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        
        
        <style>
            /*
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
*/
/* 
    Created on : 03/12/2020, 15:47:15
    Author     : Sara
*/

footer {
    position: absolute; 
    right: 430px;
}

body {
    display: block;
    width: 100vw;
    height: 100vh;
    padding: 0;
    background: url(./imagens/chutando-a-bola.jpg) no-repeat bottom center scroll;
    background-position: 30% 45%;
    background-color: black;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    background-size: cover;
    -o-background-size: cover;
}

h1 {
    color: white;
    font-family: Courier New, monospace;
   
   
}

#matricula {
    position: absolute;
    width:150px;
    top: 130px;
    height: 37px;
    border-color: green;
    opacity: 0.6;
}

#filial {
    position: absolute;
    width:150px;
    top: 130px;
    right: 860px;
    border-color: green;
    opacity: 0.6;
}

#name{
    position: absolute;
    width:300px;
    top: 130px;
    right: 500px;
    border-color: green;
    opacity: 0.6;
}

#sex{
    position: absolute;
    width:130px;
    top: 230px;
    border-color: green;
    opacity: 0.6;
}

#cpf {
    position: absolute;
    width:150px;
    top: 130px;
    right: 295px;
    border-color: green;
    opacity: 0.6;
}

#data {
    position: absolute;
    width:130px;
    top: 130px;
    right: 110px;
    border-color: green;
    opacity: 0.6;
}

#estado_ci {
    position: absolute;
    width:130px;
    top: 230px;
    right: 900px;
    border-color: green;
    opacity: 0.6;
}

#cargos {
    position: absolute;
    width:130px;
    top: 230px;
    right: 700px;
    border-color: green;
    opacity: 0.6;
}

#salario {
    position: absolute;
    width:130px;
    top: 230px;
    right: 500px;
    border-color: green;
    opacity: 0.6;
}

#email {
    position: absolute;
    width:330px;
    top: 230px;
    right: 100px;
    border-color: green;
    opacity: 0.6;
}

#telefone {
    position: absolute;
    width:150px;
    top: 330px;
    border-color: green;
    opacity: 0.6;
}

#rua {
    position: absolute;
    width:300px;
    top: 330px;
    right: 710px;
    border-color: green;
    opacity: 0.6;
}

#bairro {
    position: absolute;
    width:200px;
    top: 330px;
    right: 450px;
    border-color: green;
    opacity: 0.6;
}

#cep {
    position: absolute;
    width:150px;
    top: 330px;
    right: 240px;
    border-color: green;
    opacity: 0.6;
}

#cidade {
    position: absolute;
    width:150px;
    top: 430px;
    border-color: green;
    opacity: 0.6;
}


















#titulo-matricula {
    position:absolute;
    top: 100px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
}


#titulo-filial {
    position:absolute;
    top: 100px;
    right: 948px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
    
}


#titulo-nome{
    position:absolute;
    top: 100px;
    right: 750px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
    
}

#titulo-cpf {
    position:absolute;
    top: 100px;
    right: 415px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
}

#titulo-sexo {
    position:absolute;
    top: 200px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
}

#titulo-data {
    position:absolute;
    top: 100px;
    right: 130px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
}

#titulo-civil {
    position:absolute;
    top: 200px;
    right: 900px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
}

#titulo-cargo {
    position:absolute;
    top: 200px;
    right: 775px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
}

#titulo-salario {
    position:absolute;
    top: 200px;
    right: 555px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
}

#titulo-email {
    position:absolute;
    top: 200px;
    right: 365px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
}

#titulo-telefone {
    position:absolute;
    top: 300px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
}

#titulo-rua {
    position:absolute;
    top: 300px;
    right: 973px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
}

#titulo-bairro {
    position:absolute;
    top: 300px;
    right: 585px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
}

#titulo-cep {
    position:absolute;
    top: 300px;
    right: 355px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
}

#titulo-cidade {
    position:absolute;
    top: 400px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
}




.btn-primary {
    position:absolute;
    top: 500px;
    width:130px;
    height: 60px;
    right: 700px;
    background-color: green;
    border-color: white;
}

.btn-secondary {
    position:absolute;
    top: 500px;
    width:130px;
    right: 530px;
    height: 60px;
    border-color: white;
}

footer {
    position:absolute;
    top: 600px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
    
  
}

.btn-primary:hover {
        background-color: darkgreen;
        border-color: gray;
        }
            
            
            
        </style>

    </head>
    <body>
        
        
        <main class="container">
        <h1>Alteração de Cadastro do Funcionario: ${funcionario.nome}</h1>
        </br>
        <form action="AlterarFuncionario" method="POST">
            
            </br>
            <p id="titulo-matricula">Matricula</p>
            <input name="id" value="${funcionario.id}" readonly="true" id="matricula"/>
            </br>
            </br>
            
            
            <p id="titulo-filial">Filial</p>
            <input name="filial" value="${funcionario.filial}" class="form-control" readonly="true" id="filial"/>
            </br>
            
            
            <p id="titulo-nome">Nome</p>
            <input name ="nome" value="${funcionario.nome}" class="form-control" required="true" id="name"/>
            </br>
            
            
            <p id="titulo-cpf">CPF</p>
            <input name ="cpf" value="${funcionario.cpf}" class="form-control" required="true" id="cpf"/>
            </br>
            
            <p  id="titulo-sexo">Sexo</p>
            <input name="sexo" value="${funcionario.sexo}" class="form-control" required="true" id="sex"/>
            </br>

            
            <p id="titulo-data">Nascimento</p>
            <input name="data_nasc" value="${funcionario.data_nasc}" onkeypress="$(this).mask('00/00/0000');" class="form-control" required="true" id="data"/>
            </br>
            
            <p id="titulo-civil">Estado Civil</p>
            <input name="estado_civil" value="${funcionario.estado_civil}" class="form-control" required="true" id="estado_ci"/>
            </br>
            
            <p id="titulo-cargo">Cargo</p>
            <input name="cargo" value="${funcionario.cargo}" class="form-control" required="true" id="cargos"/>
            </br>
            
            <p id="titulo-salario">Salario</p>
            <input name="salario" value="${funcionario.salario}" class="form-control" required="true" id="salario"/>
            </br>
            
            <p id="titulo-email">E-mail</p>
            <input name="email" value="${funcionario.email}" class="form-control" required="true" id="email"/>
            </br>
            
            <p id="titulo-telefone">Celular</p>
            <input name="contato" value="${funcionario.contato}" onkeypress="$(this).mask('(00)00000-0000');" class="form-control" required="true" id="telefone"/>
           </br>
            
            <p id="titulo-rua">Rua</p>
            <input name="rua" value="${funcionario.rua}" class="form-control" required="true" id="rua"/>
            </br>
            
            <p id="titulo-bairro">Bairro</p>
            <input name="bairro" value="${funcionario.bairro}" class="form-control" required="true" id="bairro"/>
            </br>
            
            <p id="titulo-cep">CEP</p>
            <input name="cep" value="${funcionario.cep}" onkeypress="$(this).mask('00000-000');" class="form-control" required="true" id="cep"/>
            </br>
            
            <p id="titulo-cidade">Cidade</p>
            <input name="cidade" value="${funcionario.cidade}" class="form-control" required="true" id="cidade"/></br>
            </br>
            
            
            <button type="submit" class="btn btn-primary">Concluir</button>
            
            </form> 
            
            <a href="<c:url value="/index.jsp"/>"><button class="btn btn-secondary">Cancelar</button></a>
            
            
            
            </main>
        <footer>
            © 2020 SEXTETO SECRETO, TODOS OS DIREITOS RESERVADOS
        </footer>
    </body>
</html>
