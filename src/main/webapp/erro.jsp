<%-- 
    Document   : erro
    Created on : 09/10/2020, 15:11:56
    Author     : Matheus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file = "header.jsp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            
             div {
                padding: 2%;
                margin-top: 10rem;
                background-color: darkred;
                border-radius: 1rem;
                width: 60%;
                opacity: 0.8;
            }
            
            body {
                
                padding: 0;
                background: url(./imagens/chutando-a-bola.jpg) no-repeat bottom center scroll;
                background-position: 30% 15%;
                background-color: black;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                background-size: cover;
                -o-background-size: cover;
            }
            
            h1 {
                color: white;
            }
            
            .btn-primary {
                background-color: gray;
                border-color: gray;
            }
            
            .btn-primary:hover {
                background-color: darkgray;
                border-color: gray;
            }
            
            p {
                color: white;
            }
            
        </style>
        
    </head>
    <body>
        
    <center>
        <div>
            
        <h1>Erro :( </h1></br>
        </br>
        <p> ${msgErro} </p>
        </br>
        <a href="<c:url value="/index.jsp"/>"><button type="button" class="btn btn-primary "><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-house" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
  <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
</svg></button></a> 
        
        </div>
    </center>
    
    </body>
</html>
