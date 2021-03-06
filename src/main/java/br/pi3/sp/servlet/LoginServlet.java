/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.pi3.sp.servlet;


import br.pi3.sp.dao.FuncionarioDAO;
import br.pi3.sp.entidade.Funcionario;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sara
 */
public class LoginServlet extends HttpServlet {

    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        
        Funcionario funcionario = FuncionarioDAO.getUsuario(login);
        if (funcionario != null && funcionario.validarSenha(senha)){
            
            HttpSession sessao = request.getSession();
            sessao.setAttribute("user", funcionario);
            response.sendRedirect(request.getContextPath() + "/protegido/index.jsp");
            
        } else {
            response.sendRedirect(request.getContextPath() + "/login.jsp?erro=userNotFound");
        }
    }

    

}
