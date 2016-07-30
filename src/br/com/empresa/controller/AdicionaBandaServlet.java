package br.com.empresa.controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.empresa.dao.BandaDao;
import br.com.empresa.modelo.Banda;

@SuppressWarnings("serial")
@WebServlet(name = "/AdicionaBandaServlet", urlPatterns = { "/adicionaBanda" })

public class AdicionaBandaServlet extends HttpServlet {

	public AdicionaBandaServlet() {
		super();
	} 

	/* O método service aceita todos os métodos HTTP, ou seja, tanto GET quanto POST */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nome = request.getParameter("nome");
		String genero = request.getParameter("genero");
		int qtdMembros = Integer.parseInt(request.getParameter("qtdMembros"));
		String telefone = request.getParameter("telefone");
		String email = request.getParameter("email");

		/* Montando o objeto */
		Banda usuario = new Banda();
		usuario.setNome(nome);
		usuario.setGenero(genero);
		usuario.setQtdMembros(qtdMembros);
		usuario.setTelefone(telefone);
		usuario.setEmail(email);

		/* Salvando a banda */
		try {
			BandaDao dao = new BandaDao();
			dao.cadastra(usuario);

		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		RequestDispatcher rd = request.getRequestDispatcher("bandaAdicionada.jsp");
		rd.forward(request, response);

	}

}
