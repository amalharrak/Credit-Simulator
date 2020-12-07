package com.iao.amal.controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iao.amal.dao2.LoginClientDao;
import com.iao.amal.model.ClientModel;

/**
 * Servlet implementation class ConnectionServ
 */
@WebServlet("/ConnectionServ")
public class ConnectionServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConnectionServ() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		ClientModel client = LoginClientDao.authenticate(email, pass);
		if (client != null) {
			HttpSession session = request.getSession(true);
			session.setAttribute("email", email);
			session.setAttribute("pass", pass);
			session.setAttribute("id", client.getNumCli());
			session.setAttribute("username", client.getNomCli());
			response.sendRedirect("index.jsp");

		} else {
			HttpSession session = request.getSession(true);
			session.setAttribute("errorlog", "email ou mot de passe erroné !");
			response.sendRedirect("logincredit.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
