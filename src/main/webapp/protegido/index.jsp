<%-- 
    Document   : index
    Created on : 09/10/2020, 13:54:10
    Author     : Matheus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    Document   : index
    Created on : 14/10/2020, 22:54:10
    Author     : Sara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file = "../header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/style.css" />
        <title>Menu</title>
    </head>
    <body class="teste">
        <header>
            <a href="index.jsp">
                <img src="../imagens/slogan_sem_fundo_1.png" alt="Logo da Loja" />
            </a>
        </header>

        <main>
            <div class="sessoes">
                <div class="sessoes-gestao">
                    <h1 class="titulo">GESTÃO</h1>
                    
                    <br>
                    
                    <h2>Bem vindo, ${sessionScope.usuario.nome}</h2>
                    
                    <section class="funcionarios">
                        <p class="titulo-gestao">Funcionarios</p>
                        
                        <%-- se o perfil for gerente, ele visualizará o cadastrar funcionarios--%>
                        <c:if test="${sessionScope.usuario.gerente}">
                            
                            <a href="<c:url value="/gerente/cadastrarFuncionario.jsp"/>" class="link-gestao">Novo Funcionario</a><br/>
                            
                        </c:if>
                        
                        <a href="<c:url value="/ListarFuncionarios"/>" class="link-gestao">Listar Funcionarios</a><br/>
                    </section>

                    <section class="cliente">
                        <p class="titulo-gestao">Clientes</p>
                        
                        <%-- se o perfil for gerente, ele visualizará o cadastrar clientes--%>
                        <c:if test="${sessionScope.usuario.gerente}">
                            
                            <a href="<c:url value="/cadastrarCliente.jsp"/>" class="link-gestao">Novo Cliente</a><br/>
                            
                        </c:if>
                        
                        <a href="<c:url value="/ListarClientes"/>" class="link-gestao">Listar Clientes</a><br/>
                        
                    </section>

                    <section class="produto">
                        <p class="titulo-gestao">Produtos</p>
                        
                        <%-- se o perfil for gerente, ele visualizará o cadastrar produtos--%>
                        
                        <c:if test="${sessionScope.usuario.gerente}">
                            
                            <a href="<c:url value="/cadastrarProduto.jsp"/>" class="link-gestao">Novo Produto</a><br/>
                            
                        </c:if>
                        
                        <a href="<c:url value="/ListarProdutos"/>" class="link-gestao">Listar Produtos</a><br/>
                        
                    </section>
                    
                    <section class="vendas">
                        <p class="titulo-gestao">Vendas</p>
                        <b>Selecione a Filial correspondente a venda:</b></br>
                        <select name="filial">
                            <option value="ShopSports_SP_1">ShopSports_SP_1</option>
                            <option value="ShopSports_SP_2">ShopSports_SP_2</option>
                            <option value="ShopSports_RJ_1">ShopSports_RJ_1</option>
                            <option value="ShopSports_RJ_2">ShopSports_RJ_2</option>
                        </select></br>
                        <a href="<c:url value="/ListarVendas"/>" class="link-gestao">Realizar Venda</a><br/>
                        
                    </section>
                        
                        <section>
                            <p class="titulo-gestao">Relatórios</p>
                            <c:if test="${sessionScope.usuario.gerente}">
                            
                            <a href="<c:url value="/cadastrarProduto.jsp"/>" class="link-gestao">Gerar Relatório</a><br/>
                            
                        </c:if>
                        </section>
                    
                </div>
            </div>
        </main>
        <br>
       
         <a href="<c:url value="/LogoutServlet"/>">Sair</a>
        
       
        <footer>
            © 2020 SEXTETO SECRETO, TODOS OS DIREITOS RESERVADOS
        </footer>
    </body>
</html>
