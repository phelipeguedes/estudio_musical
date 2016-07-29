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
@WebServlet(name = "/RemoveBandaServlet", urlPatterns = { "/removeBanda" })
public class RemoveBandaServlet extends HttpServlet {

	public RemoveBandaServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		String nomeDaBanda = request.getParameter("nomeDaBanda");

		/* Cria e monta o objeto */
		
		Banda banda = new Banda();
		banda.setNome(nomeDaBanda);

		/* Instanciando o dao */

		try {
			BandaDao dao = new BandaDao();
			dao.remove(banda);
			for (int i = 0; i < dao.getLista().size(); i++) {

				if (dao.getLista().get(i).equals(banda.getNome())) {
					System.out.println("tem");
				} else {
					System.out.println("não tem");
				}
			}
			
			RequestDispatcher rd = request.getRequestDispatcher("bandaRemovida.jsp");
			rd.forward(request, response);
			
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			response.sendRedirect("bandaNaoEncontrada.jsp");
			e.printStackTrace();
		}

	}

}
