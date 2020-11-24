/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.pi3.sp.entidade;

import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author Matheus
 */
@Getter
@Setter
public class Venda {
    private int id_venda;
    private String filial;
    private String data_venda;
    private int id_funcionario;
    private String cpf_cliente;
    private String tipo_pagamento;
    private double total_venda;

    public Venda(String filial, String data_venda, int id_funcionario, String cpf_cliente, String tipo_pagamento,double total_venda) {
        this.filial = filial;
        this.data_venda = data_venda;
        this.id_funcionario = id_funcionario;
        this.cpf_cliente = cpf_cliente;
        this.tipo_pagamento = tipo_pagamento;
        this.total_venda = total_venda;
    }
    
}
