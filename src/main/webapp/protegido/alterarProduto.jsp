<%-- 
    Document   : alterarProduto
    Created on : 16/10/2020, 23:30:18
    Author     : Matheus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="iso-8859-1"%>
<!DOCTYPE html>
<html>
    <%@include file = "../header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet">
        <title>Atualização de Produto</title>
        
        <style>
            
            body {
                display: block;
                width: 100vw;
                height: 100vh;
                padding: 0;
                background: url(./imagens/chutando-a-bola.jpg) no-repeat bottom center scroll;
                background-position: 30% 45%;
                background-color: black;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                background-size: cover;
                -o-background-size: cover;
            }
            
            
            h1 {
                color: white;
                font-family: Courier New, monospace;
                
            }
            
            
            
            
            
            #codigo {
                position: absolute;
                top:120px;
                height: 38px;
                border-color: green;
                opacity: 0.6;
            }



            #produto {
                position: absolute;
                top:120px;
                right: 630px;
                width:350px;
                border-color: green;
                opacity: 0.6;
  
            }

            #categorias{
                position: absolute;
                top:120px;
                height: 38px;
                right: 370px;
                width:200px;
                border-color: green;
                opacity: 0.6;
   
            }

            #tamanho {
                position: absolute;
                top:120px;
                right: 160px;
                width:150px;
                border-color: green;
                opacity: 0.6;
    
            }

            #preco {
                position: absolute;
                top:215px;
                width:200px;
                border-color: green;
                opacity: 0.6;
  
            }

            #filial {
                position: absolute;
                top:215px;
                right: 725px;
                width:250px;
                border-color: green;
                opacity: 0.6;
    
            }

            #quantidade {
                position: absolute;
                top:215px;
                right: 460px;
                width:200px;
                border-color: green;
                opacity: 0.6;
    
            }












            #titulo-codigo {
                position: absolute;
                top:90px;
                font-family: Courier New, monospace;
                font-weight: lighter;
                font-size:18px;
                color: white;
            }

 
            #titulo-nome {
                position: absolute;
                top:90px;
                right: 905px;
                font-family: Courier New, monospace;
                font-weight: lighter;
                font-size:18px;
                color: white;
            }

            #titulo-categoria {
                position: absolute;
                top:90px;
                right: 355px;
                font-family: Courier New, monospace;
                font-weight: lighter;
                font-size:18px;
                color: white;
            }

            #titulo-tamanho {
                position: absolute;
                top:90px;
                right: 235px;
                font-family: Courier New, monospace;
                font-weight: lighter;
                font-size:18px;
                color: white;
            }

            #titulo-preco {
                position: absolute;
                top:180px;
                font-family: Courier New, monospace;
                font-weight: lighter;
                font-size:18px;
                color: white;
            }

            #titulo-filial {
                position: absolute;
                top:180px;
                right: 910px;
                font-family: Courier New, monospace;
                font-weight: lighter;
                font-size:18px;
                color: white;
            }

            #titulo-quantidade {
                position: absolute;
                top:180px;
                right: 475px;
                font-family: Courier New, monospace;
                font-weight: lighter;
                font-size:18px;
                color: white;
            }

            .btn-primary {
                position: absolute;
                top: 450px;
                right: 680px;
                width:130px;
                height: 60px;
                background-color: green;
                border-color: white;
            }

            .btn-secondary {
                position: absolute;
                top: 450px;
                right: 540px;
                width:130px;
                height: 60px;
                border-color: white;
            }

            .btn-primary:hover {
                background-color: darkgreen;
                border-color: gray;
            }

            footer {
                
                top: 600px;
                right: 430px;
                font-family: Courier New, monospace;
                font-weight: lighter;
                color: white;
            }

            
            
            
            
            
        </style>

        
    </head>
    
    <body>
        
        
        <main class="container">
            <h1>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Alteração de Produto: ${produto.produto}</h1>
            </br>
            
            
            <form action="AlterarProduto" method="POST">
                
                
                <p id="titulo-codigo">Código do Produto</p>
                <input name="id" value="${produto.id}" readonly="true" id="codigo"/></br>

                
                
                
               <p id="titulo-nome">Produto</p>
               <input name="produto" value="${produto.produto}" class="form-control" required="true" id="produto"/></br>



               <p id="titulo-categoria">Categoria do Produto</p>
                 <select id="categorias" name="categoria">
                 <option value="Calçados">Calçados</option>
                 <option value="Roupas">Roupas</option>
                 <option value="Equipamentos">Equipamentos</option>
                 </select></br>


               <p id="titulo-tamanho">Tamanho</p>
               <input name ="tamanho" value="${produto.tamanho}" class="form-control" required="true" id="tamanho"/></br>

               <p id="titulo-preco">Valor</p>
               <input name="valor" value="${produto.valor}" class="form-control" required="true" id="preco"/></br>

               <p id="titulo-filial">Filial</p>
               <input name="filial" value="${produto.filial}" class="form-control" readonly="true" id="filial"/></br>

               <p id="titulo-quantidade">Adicionar Estoque</p>
               <input name="estoque" value="0" class="form-control" required="true" id="quantidade"//></br>


               <button type="submit" class="btn-primary">Concluir</button>
               
            </form>
               
               <a href="<c:url value="/index.jsp"/>"><button class="btn btn-secondary">Cancelar</button></a>
               
        </main>
               
        <footer>
            © 2020 SEXTETO SECRETO, TODOS OS DIREITOS RESERVADOS
        </footer>
    </body>
</html>

