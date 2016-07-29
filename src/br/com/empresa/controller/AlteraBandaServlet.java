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
@WebServlet(name = "/AlteraBanda", urlPatterns = { "/alteraBanda" })

public class AlteraBandaServlet extends HttpServlet {

	public AlteraBandaServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		Banda banda = new Banda();

		String nome = request.getParameter("nome");
		String genero = request.getParameter("genero");
		int qtdMembros = Integer.parseInt(request.getParameter("qtdMembros"));
		String telefone = request.getParameter("telefone");
		String email = request.getParameter("email");

		// Montando o objeto
		banda.setNome(nome);
		banda.setGenero(genero);
		banda.setQtdMembros(qtdMembros);
		banda.setTelefone(telefone);
		banda.setEmail(email);
		
		BandaDao dao;
		try {
			dao = new BandaDao();
			dao.altera(banda);
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		

		RequestDispatcher rd = request.getRequestDispatcher("bandaAlterada.jsp");
		rd.forward(request, response);
	}

}
