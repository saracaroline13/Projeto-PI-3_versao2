<%-- 
    Document   : alterarProduto
    Created on : 16/10/2020, 23:30:18
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file = "header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualização de Produto</title>
        
        
    </head>
    <body>
         <h1>Alteração de Produto: ${produto.produto}</h1>
        </br>
        <form action="AlterarProduto" method="POST">
            <p>Código do Produto</p>
            <input name="id" value="${produto.id}" readonly="true" /></br>
            
            <p>Produto</p>
            <input name="produto" value="${produto.produto}" class="form-control" required="true"/></br>
            
           
            
            <p>Categoria do Produto</p>
              <select id="categorias" name="categoria">
              <option value="Camisas">Calçados</option>
              <option value="1">Roupas</option>
              <option value="Equipamentos">Equipamentos</option>
              </select></br>
              
              
            <p>Tamanho</p>
            <input name ="tamanho" value="${produto.tamanho}" class="form-control" required="true"/></br>
            
            <p>Valor</p>
            <input name="valor" value="${produto.valor}" class="form-control" required="true"/></br>
            
            <p>Adicionar Estoque</p>
            <input name="estoque" value="0" class="form-control" required="true"/></br>
            
            
            <button type="submit">Concluir</button>
    </body>
    </body>
</html>

