package controller;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.PessoaFisica;

import java.sql.SQLException;

public class PessoaFisicaJdbcDAO {
private Connection conn;
	
	public PessoaFisicaJdbcDAO(Connection conn) {
		this.conn = conn;
	}
	
	public void salvar (PessoaFisica c) throws SQLException {
		String sql = "insert into pessoafisica (nome, endereco, cidade, bairro, telefone, rg, sexo, cep, estado, celular, cpf) " + "values ('"+c.getNome()+"','"+c.getEndereco()+"','"+c.getCidade()+"','"+c.getBairro()+"','"+c.getTelefone()+"','"+c.getRg()+"','"+c.getSexo()+"','"+c.getCep()+"','"+c.getEstado()+"','"+c.getCelular()+"','"+c.getCpf()+"');";
		System.out.println(sql);
		PreparedStatement prepareStatement = this.conn.prepareStatement(sql);
		prepareStatement.executeUpdate();
		prepareStatement.close();
	}
	

	}

