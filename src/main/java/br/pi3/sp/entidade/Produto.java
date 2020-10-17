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
public class Produto {
    private int id;
    private String produto;
    private String categoria;
    private String tamanho;
    private double valor;
    private int estoque;
    
    public Produto(int id, String produto, String categoria, String tamanho, double valor, int estoque) {
        this.id = id;
        this.produto = produto;
        this.categoria = categoria;
        this.tamanho = tamanho;
        this.valor = valor;
        this.estoque = estoque;
    }

    public Produto(String produto, String categoria, String tamanho, double valor, int estoque) {
        this.produto = produto;
        this.categoria = categoria;
        this.tamanho = tamanho;
        this.valor = valor;
        this.estoque = estoque;
    }

   
    
    
}
