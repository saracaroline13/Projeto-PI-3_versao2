/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.pi3.sp.servlet;

import br.pi3.sp.dao.ProdutoDAO;
import br.pi3.sp.dao.VendaDAO;
import br.pi3.sp.entidade.Produto;
import br.pi3.sp.entidade.Venda;
import br.pi3.sp.utils.Utils;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Matheus
 */
public class FinalizarVenda extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String filial = request.getParameter("filial");
        String data_venda=request.getParameter("data_venda");
        int id_funcionario=Integer.parseInt(request.getParameter("id_funcionario"));
        String cpf_cliente=request.getParameter("cpf_cliente");
        String tipo_pagamento= request.getParameter("tipopagamento");
        float total_venda= 0;//valor que deverá vir de um input com o total da venda!
         
        HttpSession sessao = request.getSession();
        List<Produto> listaProdutos = (List<Produto>) sessao.getAttribute("listaProdutos");
       
        Venda venda = new Venda(filial, data_venda, id_funcionario, cpf_cliente, tipo_pagamento, total_venda);
        
        try {
            VendaDAO.finalizarVenda(venda);
            
            response.sendRedirect("sucesso.jsp");
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(CadastrarProduto.class.getName()).log(Level.SEVERE, null, ex);
            Utils.mostrarTelaErro(ex, request, response);
          
        }
    }

}
