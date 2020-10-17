<%-- 
    Document   : alterarCliente
    Created on : 14/10/2020, 22:34:17
    Author     : Sara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file = "header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualização de Cliente</title>
    </head>
    <body>
        <h1>Alteração de Cadastro do Cliente: ${cliente.nome}</h1>
        </br>
        <form action="AlterarCliente" method="POST">
            <p>Matricula</p>
            <input name="id" value="${cliente.id}" readonly="true" />
            <p>Nome</p>
            <input name ="nome" value="${cliente.nome}" class="form-control" required="true"/>
            <p>CPF</p>
            <input name ="cpf" value="${cliente.cpf}" class="form-control" required="true"/>
            <p>Sexo</p>
            <input name="sexo" value="${cliente.sexo}" class="form-control" required="true"/>
            <p>E-mail</p>
            <input name="email" value="${cliente.email}" class="form-control" required="true"/>
            <p>Celular</p>
            <input name="celular" value="${cliente.celular}" class="form-control" required="true"/>
            <p>Rua</p>
            <input name="rua" value="${cliente.rua}" class="form-control" required="true"/>
            <p>Bairro</p>
            <input name="bairro" value="${cliente.bairro}" class="form-control" required="true"/>
            <p>CEP</p>
            <input name="cep" value="${cliente.cep}" class="form-control" required="true"/>
            <p>Cidade</p>
            <input name="cidade" value="${cliente.cidade}" class="form-control" required="true"/></br>
            
            <button type="submit">Concluir</button>
    </body>
</html>
