<%-- 
    Document   : listaProdutos
    Created on : 16/10/2020, 22:11:46
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
        
        <title>Produtos</title>
        
        <script lang="text/javasript">
          function mostrarModalExclusao(id, produto){
             
              $("#nomeProduto").html(produto);
               $("#idProduto").val(id);
              $("#modalExclusao").modal('show');
          }
          
          function excluirProduto(){
              var id = $("#idProduto").val();
               $.get( "ExcluirProduto?idProduto="+id, function( resposta ) {
                    $('#modalExclusao').modal('show');
                    if (resposta === "true") {
                        
                        console.log("Excluido!");
                    } else {
                        console.log("Erro!");
                    }
                    window.location.reload();
                });
          }
                
        </script> 
        
        <style>
            
             body {
                display: block;
                width: 100vw;
                height: 100vh;
                padding: 0;
                background: url(imagens/chutando-a-bola.jpg) no-repeat bottom center scroll;
                background-position: 30% 45%;
                background-color: black;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                background-size: cover;
                -o-background-size: cover;
            }

            
            h1{
                color: white;
                font-family: Courier New, monospace;
                font-size:53px;
            }
            
            footer {
                color: white;
                font-family: Courier New, monospace;
            }
            
            td {
                background-color: white;
            }
            
            
            
            #menu {
                position: absolute;
                right: 650px;
                top: 550px;
                color: white;
                font-family: Courier New, monospace;
                font-weight: lighter;
            }
            
            
            .btn-primary {
                background-color: green;
                border-color: white;
            }
            
            .btn-secondary {
                background-color: red;
                border-color: white;
            }
            
            .btn-primary:hover {
                background-color: darkgreen;
                border-color: gray;
            }
            
            .btn-secondary:hover {
                background-color: darkred;
                border-color: gray;
            }
            
            
            
            
        </style>
        
        
        
    </head>
    
    <body>
       
        
        <main class="container">
            <h1>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;Lista de Produtos</h1>
            </br>
            </br>

            <div style="overflow-x:auto;">
                <table id = "tbprodutos" class="table table-striped" width=50 height=50>
                    <thead class="thead-light">
                    <th scope="col">Código</th>
                    <th scope="col">Produto</th>
                    <th scope="col">Categoria</th>
                    <th scope="col">Tamanho</th>
                    <th scope="col">Valor</th>
                    <th scope="col">Filial</th>
                    <th scope="col">Estoque</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    </thead>
                    <tbody>
                        <c:forEach var="produto" items="${listaProdutos}">
                            <tr>
                                <td>${produto.id}</td> 
                                <td>${produto.produto}</td> 
                                <td>${produto.categoria}</td>
                                <td>${produto.tamanho}</td>
                                <td>${produto.valor}</td> 
                                <td>${produto.filial}</td>
                                <td>${produto.estoque}</td> 

                                <td><a href="AlterarProduto?id=${produto.id}" class="btn btn-primary">Alterar</a></td> 
                                <td><button type="button" class="btn btn-secondary" onclick="mostrarModalExclusao(${produto.id},' ${produto.produto}')">Excluir</button></td>

                            </tr>

                        </c:forEach>


                    </tbody>
                </table>
            </div>
            
            <div class="modal fade" id="modalExclusao" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Confirmar Exclusão</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                        Confirmar exclusão do Produto  <label id="nomeProduto"></label> ?
                        <input id="idProduto" hidden/>

                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                      <button type="button" class="btn btn-primary" onclick="excluirProduto()">Confirmar</button>
                    </div>
                  </div>
                </div>
              </div>


            <a href="index.jsp" id="menu">MENU</a>
        </main>
        
        <footer>
            © 2020 SEXTETO SECRETO, TODOS OS DIREITOS RESERVADOS
        </footer>
       
    </body>
    
</html>

