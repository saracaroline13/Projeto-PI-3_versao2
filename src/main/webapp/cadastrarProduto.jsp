<%-- 
    Document   : cadastrarProduto
    Created on : 16/10/2020, 22:22:43
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file = "header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Produto</title>
    </head>
    <body>
        <h1>Cadastro de Produto</h1>
        <form action="CadastrarProduto" method="POST">
            <p>Nome do Produto</p>
            <input name="produto" class="form-control" required="true"/></br>
            
              <p>Categoria do Produto</p>
              <select name="categoria">
              <option value="Camisas">Calçados</option>
              <option value="Roupas">Roupas</option>
              <option value="Equipamentos">Equipamentos</option>
              </select></br>
              
              <p>Tamanho</p>
              <input name="tamanho" class="form-control" required="true"/></br>
              
              <p>Preço</p>
              <input name ="valor" class="form-control" required="true"/></br>
              
              <p>Quantidade em Estoque</p>
              <input name="estoque" class="form-control" required="true"/></br>
              
            
            
            <button type="submit" class="btn btn-primary">Concluir</button>
        
        </form>
        
    </body>
</html>
