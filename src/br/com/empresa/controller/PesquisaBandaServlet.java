package br.com.empresa.controller;

import java.io.IOException;

import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.empresa.dao.BandaDao;
import br.com.empresa.modelo.Banda;

@SuppressWarnings("serial")
@WebServlet(name = "/PesquisaBandaServlet", urlPatterns = { "/pesquisaBanda" })
public class PesquisaBandaServlet extends HttpServlet {

	public PesquisaBandaServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		String nomeDaBanda = request.getParameter("nomeDaBanda");
		Banda banda = new Banda();
		banda.setNome(nomeDaBanda);

		try {
			BandaDao dao = new BandaDao();
			for (int i = 0; i < dao.getLista().size(); i++) {

				if (dao.getLista().get(i).getNome().equalsIgnoreCase(banda.getNome())) {
					Banda bandaEncontrada = BandaDao.procuraPeloNome(banda.getNome());
					request.setAttribute("bandaEncontrada", BandaDao.getProcura(banda.getNome()));
					request.getRequestDispatcher("bandaEncontrada.jsp").forward(request, response);

					System.out.println(bandaEncontrada);
				}
			}

			request.setAttribute("nomeDaBanda", banda.getNome());
			request.getRequestDispatcher("bandaNaoEncontrada.jsp").forward(request, response);

		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			response.sendRedirect("bandaNaoEcontrada.jsp");
			e.printStackTrace();
		}

	}

}
