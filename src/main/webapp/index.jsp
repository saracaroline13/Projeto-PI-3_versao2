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
        <link href="css/style.css" rel="stylesheet">
        <title>Menu</title>
    </head>
    <body>
        <header>
            <a href="index.jsp">
                <img src="imagens/slogan_sem_fundo_1.png" alt="Logo da Loja" />
            </a>
        </header>

        <main>
            <div class="sessoes">
                <div class="sessoes-gestao">
                    <h1>GESTÃO</h1>
                    <section class="funcionarios">
                        <p class="titulo-gestao">Funcionarios</p>
                        <a href="cadastrarFuncionario.jsp" class="link-gestao">Novo Funcionario</a><br/>
                        <a href="ListarFuncionarios" class="link-gestao">Listar Funcionarios</a><br/>
                        <a href="alterarFuncionario.jsp" class="link-gestao">Alterar Funcionarios</a></br>
                    </section>

                    <section class="cliente">
                        <p class="titulo-gestao">Clientes</p>
                        <a href="cadastrarCliente.jsp" class="link-gestao">Novo Cliente</a><br/>
                        <a href="ListarClientes" class="link-gestao">Listar Clientes</a><br/>
                        <a href="alterarCliente.jsp" class="link-gestao">Alterar Clientes</a></br>
                    </section>

                    <section class="produto">
                        <p class="titulo-gestao">Produtos</p>
                        <a href="cadastrarProduto.jsp" class="link-gestao">Novo Produto</a><br/>
                        <a href="ListarProdutos" class="link-gestao">Listar Produtos</a><br/>
                        <a href="alterarProduto.jsp" class="link-gestao">Alterar Produtos</a></br>
                    </section>

                </div>
            </div>
        </main>
        
        <footer>
            © 2020 SEXTETO SECRETO, TODOS OS DIREITOS RESERVADOS
        </footer>
    </body>
</html>
