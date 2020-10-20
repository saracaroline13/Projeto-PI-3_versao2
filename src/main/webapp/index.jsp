<%-- 
    Document   : index
    Created on : 09/10/2020, 13:54:10
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file = "header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         
        <title>Menu</title>
    </head>
    <body>
        <h1>Gestão de Funcionarios</h1>
        <a href="cadastrarFuncionario.jsp">Novo Funcionario</a><br/>
        <a href="ListarFuncionarios">Listar Funcionarios</a><br/>
        
        <h1>Gestão de Produtos</h1>
        <a href="cadastrarProduto.jsp">Novo Produto</a><br/>
        <a href="ListarProdutos">Listar Produtos</a><br/>
        
         <%-- 
    Document   : index
    Created on : 14/10/2020, 22:54:10
    Author     : Sara
--%>

        <h1>Gestão de Clientes</h1>
        <a href="cadastrarCliente.jsp">Novo Cliente</a><br/>
        <a href="ListarClientes">Listar Clientes</a><br/>
        
    </body>
</html>
