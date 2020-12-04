<%-- 
    Document   : cadastrarProduto
    Created on : 16/10/2020, 22:22:43
    Author     : Matheus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<!DOCTYPE html>
<html>
    <%@include file = "../header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/cadastrarProduto.css" />
        <title>Cadastrar Produto</title>
    </head>
    
    <body>
        <main class="container">
            
            <h1>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Cadastro de Produtos</h1>
            
            <form action="CadastrarProduto" method="POST">
                
                </br>
                </br>
                </br>
               
                
                <p id="titulo-nome">Nome do Produto</p>
                <input name="produto" class="form-control" required="true" id="produto"/></br>
                

                <p id="titulo-categoria">Categoria do Produto</p>
                <select name="categoria" id="categoria">
                  <option value="Calçados">Calçados</option>
                  <option value="Roupas">Roupas</option>
                  <option value="Equipamentos">Equipamentos</option>
                  </select>
                
                </br>
                </br>

                  
                  <p id="titulo-tamanho">Tamanho</p>
                  <input name="tamanho" class="form-control" required="true" id="tamanho"/></br>
                  

                  <p id="titulo-preco">Preço</p>
                  <input name ="valor" class="form-control" required="true" id="preco"/></br>
                  

                  <p id="titulo-filial">Filial</p>
                  <select name="filial" id="filial">
                  <option value="Shop_SportsSP_1">Shop_SportsSP_1</option>
                  <option value="Shop_SportsSP_2">Shop_SportsSP_2</option>
                  <option value="Shop_SportsSP_3">Shop_SportsSP_3</option>
                  <option value="Shop_SportsRJ_1">Shop_SportsRJ_1</option>
                  </select>
                  
                  </br>
                  </br>

                  
                  <p id="titulo-quantidade">Quantidade</p>
                  <input name="estoque" class="form-control" required="true" id="quantidade"/></br>



                <button type="submit" class="btn btn-primary">Concluir</button>
               
            </form>
            
            <a href="<c:url value="/index.jsp"/>"><button class="btn btn-secondary">Cancelar</button></a>
        </main>
        
        <footer>
            © 2020 SEXTETO SECRETO, TODOS OS DIREITOS RESERVADOS
        </footer>
    </body>
</html>
