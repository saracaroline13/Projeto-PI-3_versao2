<%-- 
    Document   : alterarCliente
    Created on : 14/10/2020, 22:34:17
    Author     : Sara
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<!DOCTYPE html>
<html>
    <%@include file = "../header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <title>Atualização de Cliente</title>
        
        
        <style>
            * {
  padding:0;
  margin:0;
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
    top: 130px;
    height: 37px;
    border-color: green;
    opacity: 0.6;
}

#nome {
  position: absolute;
  top: 130px;
  width:450px;
  right: 550px;
  border-color: green;
  opacity: 0.6;
}

#cpf {
    position: absolute;
    top: 140px;
    width:200px;
    top: 130px;
    right: 300px;
    border-color: green;
    opacity: 0.6;
}

#sex {
    position: absolute;
    width:200px;
    top: 130px;
    right: 50px;
    border-color: green;
    opacity: 0.6;
}

#email {
    position: absolute;
    width:300px;
    top: 230px;
    border-color: green;
    opacity: 0.6;
}

#telefone {
    position: absolute;
    width:150px;
    top: 230px; 
    right: 720px;
    border-color: green;
    opacity: 0.6;
}

#cidade {
    position: absolute;
    width:200px;
    top: 330px; 
    right: 525px;
    border-color: green;
    opacity: 0.6;
}

#rua {
   position: absolute;
    top: 230px; 
    right: 220px;
    width:450px;
    border-color: green;
    opacity: 0.6;
}

#bairro {
    position: absolute;
    top: 330px; 
    width:200px;
    border-color: green;
    opacity: 0.6;
}

#cep {
    position: absolute;
    width:200px;
    top: 330px; 
    right: 780px;
    border-color: green;
    opacity: 0.6;
}



#titulo-matricula {
    position: absolute;
    top: 100px;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
    color: white;
}

#titulo-nome {
    position: absolute;
    top: 70px;
    right: 955px;
    top: 100px;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
    color: white;
}

#titulo-cpf {
    position: absolute;
    right: 470px;
    top: 100px;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
    color: white;
}

#titulo-sexo {
    position: absolute;
    right: 210px;
    top: 100px;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
    color: white;
}

#titulo-email {
    position: absolute;
    top: 200px;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
    color: white;
}

#titulo-telefone {
    position: absolute;
    top: 200px;
    right: 790px;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
    color: white;
}

#titulo-rua {
    position: absolute;
    top: 200px;
    right: 635px;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
    color: white;
}

#titulo-bairro {
    position: absolute;
    top: 300px;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
    color: white;
}

#titulo-cep {
    position: absolute;
    top: 300px;
    right: 945px;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
    color: white;
}

#titulo-cidade {
    position: absolute;
    top: 300px;
    right: 660px;
    font-family: Courier New, monospace;
    font-weight: lighter;
    font-size:18px;
    color: white;
}

footer {
    
    position: absolute;
    right: 440px;
    top: 620px;
    color: white;
    font-family: Courier New, monospace;
    font-weight: lighter;
}

.btn-primary {
    position: absolute;
    top: 495px;
    right: 680px;
    width:130px;
    height: 60px;
    background-color: green;
    border-color: white;
}

.btn-secondary {
    position: absolute;
    top: 495px;
    right: 540px;
    width:130px;
    height: 60px;
    border-color: white;
}

.btn-primary:hover {
    
	background-color: darkgreen;
        border-color: gray;
	}
            
            
            
        </style>
        
    </head>
    <body>
        
        
        <main class="container">
            <h1>&ensp;&ensp;&ensp;&ensp;&ensp;Alteração de Cadastro do Cliente: ${cliente.nome}</h1>
            </br>
            
            
            <form action="AlterarCliente" method="POST">
                
                <p id="titulo-matricula">Matricula</p>
                    <input name="id" value="${cliente.id}" readonly="true" id="matricula"/>
                    </br>
                    
                <p id="titulo-nome">Nome</p>
                    <input name ="nome" value="${cliente.nome}" class="form-control" required="true" id="nome"/>
                    </br>
                    
                <p id="titulo-cpf">CPF</p>
                    <input name ="cpf" value="${cliente.cpf}" class="form-control" required="true" id="cpf"/>
                    </br>
                    
                <p id="titulo-sexo">Sexo</p>
                    <input name="sexo" value="${cliente.sexo}" class="form-control" required="true"  id="sex"/>
                    </br>
                    
                <p id="titulo-email">E-mail</p>
                    <input name="email" value="${cliente.email}" class="form-control" required="true" id="email"/>
                    </br>
                    
                <p id="titulo-telefone">Celular</p>
                    <input name="celular" value="${cliente.celular}" class="form-control" onkeypress="$(this).mask('(00)00000-0000');" required="true" id="telefone"/>
                </br>
                    
                    <p id="titulo-rua">Rua</p>
                    <input name="rua" value="${cliente.rua}" class="form-control" required="true" id="rua"/>
                    </br>
                    
                    
                <p id="titulo-bairro">Bairro</p>
                    <input name="bairro" value="${cliente.bairro}" class="form-control" required="true" id="bairro"/>
                    </br>
                    
                <p  id="titulo-cep">CEP</p>
                    <input name="cep" value="${cliente.cep}" class="form-control" onkeypress="$(this).mask('00000-000');" required="true" id="cep"/>
               </br>
                    
                    <p id="titulo-cidade">Cidade</p>
                    <input name="cidade" value="${cliente.cidade}" class="form-control" required="true" id="cidade"/></br>
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
