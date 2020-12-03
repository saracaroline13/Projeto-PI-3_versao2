/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.pi3.sp.entidade;

import at.favre.lib.crypto.bcrypt.BCrypt;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author Matheus
 */

@Getter
@Setter
public class Funcionario {
private int id;
private String filial;
private String nome;
private String cpf;
private String sexo;
private String data_nasc;
private String estado_civil;
private String cargo;
private double salario;
private String email;
private String contato;
private String rua;
private String bairro;
private String cep;
private String cidade;
private String login;
private String senha;

    public Funcionario(int id, String filial, String nome, String cpf, String sexo, String data_nasc, String estado_civil, String cargo, double salario, String email, String contato, String rua, String bairro, String cep, String cidade, String login, String senha) {
        this.id = id;
        this.filial = filial;
        this.nome = nome;
        this.cpf = cpf;
        this.sexo = sexo;
        this.data_nasc = data_nasc;
        this.estado_civil = estado_civil;
        this.cargo = cargo;
        this.salario = salario;
        this.email = email;
        this.contato = contato;
        this.rua = rua;
        this.bairro = bairro;
        this.cep = cep;
        this.cidade = cidade;
        this.login = login;
        this.senha = senha;
    }

    public Funcionario(String filial, String nome, String cpf, String sexo, String data_nasc, String estado_civil, String cargo, double salario, String email, String contato, String rua, String bairro, String cep, String cidade, String login, String senha) {
        this.filial = filial;
        this.nome = nome;
        this.cpf = cpf;
        this.sexo = sexo;
        this.data_nasc = data_nasc;
        this.estado_civil = estado_civil;
        this.cargo = cargo;
        this.salario = salario;
        this.email = email;
        this.contato = contato;
        this.rua = rua;
        this.bairro = bairro;
        this.cep = cep;
        this.cidade = cidade;
        this.login = login;
        this.senha = senha;
    }
    
    public Funcionario(){
        
    }
     public String codificarSenha (String senha){
        return BCrypt.withDefaults().hashToString(12, senha.toCharArray());
    }
    
    public boolean validarSenha(String senha){
        BCrypt.Result response = BCrypt.verifyer().verify(senha.toCharArray(), this.senha);
        return response.verified;
    }
    
    public boolean isGerente(){
        return this.cargo.equalsIgnoreCase("gerente");
    }
    
    public boolean isVendedor(){
        return this.cargo.equalsIgnoreCase("vendedor");
    }
    
    public boolean isEstoquista(){
        return this.cargo.equalsIgnoreCase("estoquista");
    }
    
    public boolean isRh(){
        return this.cargo.equalsIgnoreCase("rh");
    }

    
    
}
