/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.pi3.sp.servlet;


import br.pi3.sp.dao.ProdutoDAO;
import br.pi3.sp.entidade.Funcionario;

import br.pi3.sp.entidade.Produto;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Matheus
 */
public class ListarVendas extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sessao = request.getSession();
        Funcionario funcionario_logado= (Funcionario) sessao.getAttribute("user");
        String filial_user = funcionario_logado.getFilial();
        
        List<Produto> listaProdutos = ProdutoDAO.getProdutosFilial(filial_user);
        request.setAttribute("listaProdutos", listaProdutos);//adicionei no request um atributo a mais que a o select que vem alista de clientes do banco
        
        RequestDispatcher requestDispatcher = getServletContext()
                .getRequestDispatcher("/protegido/formularioVendas.jsp");// redirecono a lista para a lista de Funcionarios
        requestDispatcher.forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }


}
