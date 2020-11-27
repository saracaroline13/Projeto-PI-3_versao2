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
      <%--   <header>
            <a href="index.jsp">
               <%-- <img src="../imagens/slogan_sem_fundo_1.png" alt="Logo da Loja" width=200 height=100/> 
            </a>
        </header> --%>
                   
        <main>
                    <h3 class="welcome">Bem vindo, ${sessionScope.usuario.nome}</h3>
                    <h4 class="titulo">GESTÃO</h4>
                     
                    
                   <h6 class="f">Funcionários</h6>
                   <c:if test="${sessionScope.usuario.gerente}">
                    <table border="2" class="novo-funcionario" width=170 height=50>

                        <tr>
                                <td><a href="<c:url value="/cadastrarFuncionario.jsp"/>" class="link-gestao">Novo Funcionario</a></td>
                        </tr>

                    </table>
                    </c:if>
                    

                    <table border="2" class="listar-funcionario" width=170 height=50>
                        <tr>
                            <td> <a href="<c:url value="/ListarFuncionarios"/>" class="link-gestao">Listar Funcionarios</a></td>
                        </tr>
                    </table>
                        
                        
                        
                    <h6 class="c">Clientes</h6>
                    <c:if test="${sessionScope.usuario.gerente}">
                    <table border="2" class="novo-cliente" width=170 height=50>
                        <tr>
                                <td> <a href="<c:url value="/cadastrarCliente.jsp"/>" class="link-gestao">Novo Cliente</a></td>
                        </tr>
                    </table>
                    </c:if>            

                        
                        
                    <table border="2" class="listar-cliente" width=170 height=50>
                        <tr>
                            <td> <a href="<c:url value="/ListarClientes.jsp"/>" class="link-gestao">Listar Clientes</a></td>
                        </tr>
                    </table>
                        
                        

                     <h6 class="p">Produtos</h6>   
                    <c:if test="${sessionScope.usuario.gerente}">
                    <table border="2" class="novo-produto" width=170 height=50>
                        <tr>
                                <td> <a href="<c:url value="/cadastrarProduto.jsp"/>" class="link-gestao">Novo Produto</a></td>
                        </tr>
                    </table>
                    </c:if>
                        
                        
                    <table border="2" class="listar-produtos" width=170 height=50>
                        <tr>
                            <td> <a href="<c:url value="/ListarProdutos"/>" class="link-gestao">Listar Produtos</a></td>
                        </tr>
                    </table>

                        
                     <h6 class="v">Vendas</h6>  
                    <table border="3" class="tabela-vendas" width=170 height=105>
                        <tr>
                            <td> <select name="filial" class="opcao">
                                    <option value="ShopSports_SP_1">ShopSports_SP_1</option>
                                    <option value="ShopSports_SP_2">ShopSports_SP_2</option>
                                    <option value="ShopSports_RJ_1">ShopSports_RJ_1</option>
                                    <option value="ShopSports_RJ_2">ShopSports_RJ_2</option>
                                </select></br>
                                <a href="<c:url value="/ListarVendas"/>" class="link-gestao">Realizar Venda</a></td>
                        </tr>
                    </table>
                              
                        
                                
                                
                                
                                
                </div>
           </main>
        
        <br>
       
        <a href="<c:url value="/LogoutServlet"/>" class="sair">Sair</a>
        
       
        <footer>
            © 2020 SEXTETO SECRETO, TODOS OS DIREITOS RESERVADOS
        </footer>
    </body>
</html>
