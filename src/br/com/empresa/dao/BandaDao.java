package br.com.empresa.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.empresa.conexao.ConnectionFactory;
import br.com.empresa.modelo.Banda;

public class BandaDao {

	private static Connection connection; // Varável p/ conexão

	/* Construtor que pega a conexão da classe estática ConnectionFactory */

	public BandaDao() throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		connection = new ConnectionFactory().getConnection();
	}

	/* Método responsável pelo cadastro de bandas */

	public void cadastra(Banda banda) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		String sql = "INSERT INTO bandas(nome, genero, quantidade_de_membros, telefone, email) VALUES (?, ?, ?, ?, ?)";

		try {
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setString(1, banda.getNome());
			pst.setString(2, banda.getGenero());
			pst.setInt(3, banda.getQtdMembros());
			pst.setString(4, banda.getTelefone());
			pst.setString(5, banda.getEmail());
			pst.execute();
			pst.close();

		} catch (SQLException e) {
			System.out.println("Erro: " + e.getMessage());
			e.printStackTrace();
		}
	}

	/* Método que faz a listagem das bandas cadastradas */

	public List<Banda> getLista() {
		List<Banda> bandas = new ArrayList<>();

		try {
			PreparedStatement pst = connection.prepareStatement("SELECT * FROM bandas");
			ResultSet result = pst.executeQuery();

			while (result.next()) {
				Banda banda = new Banda();
				// Define o objeto
				banda.setId(result.getInt("id"));
				banda.setNome(result.getString("nome"));
				banda.setGenero(result.getString("genero"));
				banda.setQtdMembros(result.getInt("quantidade_de_membros"));
				banda.setTelefone(result.getString("telefone"));
				banda.setEmail(result.getString("email"));

				// Adiciona a banda à lista
				bandas.add(banda);
			}

			// Fecha as conexões
			result.close();
			pst.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Retorna uma lista de bandas
		return bandas;
	}

	/* Método utilizado p/ pesquisar uma banda pelo nome */

	public static Banda procuraPeloNome(String nomeDaBanda) throws SQLException {
		Banda banda1 = new Banda();
		try {

			PreparedStatement pst = connection.prepareStatement("SELECT * FROM bandas WHERE nome LIKE ?");
			pst.setString(1, nomeDaBanda);
			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				Banda banda = new Banda();
				// banda = new Banda();
				banda.setId(rs.getInt("id"));
				banda.setNome(rs.getString("nome"));
				banda.setGenero(rs.getString("genero"));
				banda.setQtdMembros(rs.getInt("quantidade_de_membros"));
				banda.setTelefone(rs.getString("telefone"));
				banda.setEmail(rs.getString("email"));

				banda1 = banda;
			} else {
				System.out.println("Banda não cadastrada");
			}

			pst.close();
			rs.close();
		} catch (SQLException e) {
			System.out.println("Erro: " + e.getMessage());
			e.printStackTrace();
		}

		return banda1;
	}

	public static Banda getProcura(String nomeDaBanda) throws SQLException {
		return procuraPeloNome(nomeDaBanda);
	}

	/* Atualiza os registros da banda */

	public void altera(Banda banda) {
		String sql = "UPDATE bandas SET nome=?, genero=?, quantidade_de_membros=?, telefone=?, email=? WHERE nome=?";

		try {
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setString(1, banda.getNome());
			pst.setString(2, banda.getGenero());
			pst.setInt(3, banda.getQtdMembros());
			pst.setString(4, banda.getTelefone());
			pst.setString(5, banda.getEmail());
			pst.setString(6, banda.getNome());

			pst.executeUpdate();
			pst.close();
		} catch (SQLException e) {
			System.out.println("Erro: " + e.getMessage());
			e.printStackTrace();
		}
	}

	/* Deleta todas as informações relacionadas a uma banda */

	public void remove(Banda banda) {
		String sql = "DELETE FROM bandas WHERE nome LIKE ?";

		try {
			PreparedStatement pst = connection.prepareStatement(sql);
			pst.setString(1, banda.getNome());
			int rs = pst.executeUpdate();
			if (rs > 0) {

				pst.setString(1, banda.getNome());

				pst.execute();
				pst.close();
			}
		} catch (SQLException e) {
			System.out.println("A banda não foi deletada. Erro: " + e.getMessage());
			e.printStackTrace();

		}

	}

}
