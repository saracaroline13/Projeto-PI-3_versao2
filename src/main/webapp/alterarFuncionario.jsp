<%-- 
    Document   : alterarFuncionario
    Created on : 09/10/2020, 16:21:16
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file = "header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualização de Funcionario</title>
    </head>
    <body>
        <h1>Alteração de Cadastro do Funcionario: ${funcionario.nome}</h1>
        </br>
        <form action="AlterarFuncionario" method="POST">
            <p>Matricula</p>
            <input name="id" value="${funcionario.id}" readonly="true" />
            
            <p>Filial</p>
            <input name="filial" value="${funcionario.filial}" class="form-control" readonly="true"/>
            <p>Nome</p>
            <input name ="nome" value="${funcionario.nome}" class="form-control" required="true"/>
            <p>CPF</p>
            <input name ="cpf" value="${funcionario.cpf}" class="form-control" required="true"/>
            <p>Sexo</p>
            <input name="sexo" value="${funcionario.sexo}" class="form-control" required="true"/>
            <p>Data Nascimento</p>
            <input name="data_nasc" value="${funcionario.data_nasc}" class="form-control" required="true"/>
            <p>Estado Civil</p>
            <input name="estado_civil" value="${funcionario.estado_civil}" class="form-control" required="true"/>
            <p> Cargo</p>
            <input name="cargo" value="${funcionario.cargo}" class="form-control" required="true"/>
            <p> Salario</p>
            <input name="salario" value="${funcionario.salario}" class="form-control" required="true"/>
            <p>E-mail</p>
            <input name="email" value="${funcionario.email}" class="form-control" required="true"/>
            <p>Celular</p>
            <input name="contato" value="${funcionario.contato}" class="form-control" required="true"/>
            <p>Rua</p>
            <input name="rua" value="${funcionario.rua}" class="form-control" required="true"/>
            <p>Bairro</p>
            <input name="bairro" value="${funcionario.bairro}" class="form-control" required="true"/>
            <p>CEP</p>
            <input name="cep" value="${funcionario.cep}" class="form-control" required="true"/>
            <p>Cidade</p>
            <input name="cidade" value="${funcionario.cidade}" class="form-control" required="true"/></br>
            
            <button type="submit">Concluir</button>
    </body>
    </body>
</html>
