/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.pi3.sp.dao;

import br.pi3.sp.conexaobd.ConexaoBD;
import br.pi3.sp.entidade.Venda;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Matheus
 */
public class VendaDAO {
    
    public static void finalizarVenda(Venda venda) throws ClassNotFoundException, SQLException{
        Connection con = ConexaoBD.getConexao();
        String query = "INSERT INTO vendas (filial, id_funcionario, cpf_cliente, data_venda, tipo_pagemento, total_venda) VALUES (?,?,?,?,?,?)";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, venda.getFilial());
        ps.setInt   (2, venda.getId_funcionario());
        ps.setString(3, venda.getCpf_cliente());
        ps.setString(4, venda.getData_venda());
        ps.setString(5, venda.getTipo_pagamento());
        ps.setFloat(6, venda.getTotal_venda());
        
        ps.execute();
    }
    
}
