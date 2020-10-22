<%-- 
    Document   : index
    Created on : 09/10/2020, 13:54:10
    Author     : Matheus
--%>

<%-- 
    Document   : index
    Created on : 14/10/2020, 22:54:10
    Author     : Sara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file = "header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         
        <title>Menu</title>
        <%-- Depois colocar o css e um arquivo separado --%>
        <style>
            
            body {
                background-color: #ddd;
                font-family: 'Monstserrat', sans-serif;
            }
            
            a {
                text-decoration: none;
                color: black;
            }
            
            a:hover {
                text-decoration: underline;
                color: black;
            }
            
            header {
                background-color: #ccc;
                text-align: center;
                
                width: 90%;
                height: 40px;
                
                padding: 10px 0;
                margin-left: 5%;
                
                border-bottom: 0.2em solid black;
            }
            
            main {
                padding: 50px 5%;
            }
            
            h1 {
                margin-left: 50%;
                
                font-style: oblique;
                font-size: 2em;
            }
            
            section {
                border: 0.2em double black;
                
                margin-bottom: 1%;
                margin-left: 50%;
                padding: 2%;
                
                width: 50%;
                
                text-align: center;
            }
            
            .titulo-gestao {
                font-size: 1.8em;
                text-decoration: bold;
                
                background-color: #ccc;
                width: 100%;
            }
            
            .link-gestao {
                font-size: 1.3em;
            }
            
            footer {
                background-color: #ccc;
                margin-left: 5%;
                padding-top: 10px;
                
                height: 40px;
                width: 90%;
                
                text-align: center;
                font-size: 0.8em;
                
                border-top: 0.2em solid black;
            }
            
        </style>
        
    </head>
    <body>
        <header>
            <%--
            <a href="/">
                <img src="/logo.png" alt="Logo da Loja" 
            </a>
            --%>
            <p>Inserir o logo</p>
        </header>

        <main>
            <h1>GESTÃO</h1>
            
            <section class="funcionarios">
                <p class="titulo-gestao">Funcionarios</p>
                <a href="cadastrarFuncionario.jsp" class="link-gestao">Novo Funcionario</a><br/>
                <a href="ListarFuncionarios" class="link-gestao">Listar Funcionarios</a><br/>
            </section>
            
            <section class="produto">
                <p class="titulo-gestao">Produtos</p>
                <a href="cadastrarProduto.jsp" class="link-gestao">Novo Produto</a><br/>
                <a href="ListarProdutos" class="link-gestao">Listar Produtos</a><br/>
            </section>

            <section class="cliente">
                <p class="titulo-gestao">Clientes</p>
                <a href="cadastrarCliente.jsp" class="link-gestao">Novo Cliente</a><br/>
                <a href="ListarClientes" class="link-gestao">Listar Clientes</a><br/>
            </section>
        </main>
        
        <footer>
            © 2020 SEXTETO SECRETO, TODOS OS DIREITOS RESERVADOS
        </footer>
    </body>
</html>
