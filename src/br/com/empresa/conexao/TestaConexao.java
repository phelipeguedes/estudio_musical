package br.com.empresa.conexao;

import java.sql.Connection;
import java.sql.SQLException;

public class TestaConexao {

	public static void main(String[] args) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
		
		Connection conexao = new ConnectionFactory().getConnection();
		System.out.println("Conexão deu certo!");
		conexao.close();
	}

}
