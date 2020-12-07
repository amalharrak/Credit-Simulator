package com.iao.amal.controler;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;

import com.iao.amal.dao2.InsertCreditClient;
import com.iao.amal.model.CreditModel;

/**
 * Servlet implementation class DureServ
 */
@WebServlet("/DureServ")
public class DureServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DureServ() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("dureecredit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getParameter("calculd") != null) {
			HttpSession session = request.getSession();
			double c = Double.parseDouble(request.getParameter("annuitedur"));
			double n = Double.parseDouble(request.getParameter("capitaldur"));
			double t = Double.parseDouble(request.getParameter("tauxdur"));
			session.setAttribute("annuitedur", c);
			session.setAttribute("capitaldur", n);
			session.setAttribute("tauxdur", t);
			CreditModel creditModel = new CreditModel();
			creditModel.setMonCre(n);
			creditModel.setAnnCred(c);
			creditModel.setTauxCre(t);
			
			Client client = ClientBuilder.newClient();
			double duree = client.target("http://localhost:8080/Credit_simulator_REST_Harrak_Amal/rest/credit/calculDuree").queryParam("capital", n).queryParam("annuitee", c).queryParam("taux", t).request().get(Integer.class);			
			
			session.setAttribute("dureedur", duree);
			creditModel.setDureeCre(duree);
			request.getRequestDispatcher("dureecredit.jsp").forward(request, response);
		}
		if (request.getParameter("saveduree") != null) {
			HttpSession session = request.getSession();
			CreditModel creditModel = new CreditModel();
			double c = Double.parseDouble(request.getParameter("annuitedur"));
			double n = Double.parseDouble(request.getParameter("capitaldur"));
			double t = Double.parseDouble(request.getParameter("tauxdur"));
			session.setAttribute("annuitedur", c);
			session.setAttribute("capitaldur", n);
			session.setAttribute("tauxdur", t);
			int idc;
			idc = (int) session.getAttribute("id");
			creditModel.setNumCli(idc);
			creditModel.setAnnCred(c);
			creditModel.setTauxCre(t);
			creditModel.setMonCre(n);
			creditModel.setDatPre(Calendar.getInstance().getTime());

			Client client = ClientBuilder.newClient();
			double duree = client.target("http://localhost:8080/Credit_simulator_REST_Harrak_Amal/rest/credit/calculDuree").queryParam("capital", n).queryParam("annuitee", c).queryParam("taux", t).request().get(Integer.class);			
			
			session.setAttribute("dureedur", duree);
			creditModel.setDureeCre(duree);
			try {
				if (InsertCreditClient.insertCreditDao(creditModel) != 0) {
					response.sendRedirect("RecoverServ");
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			;

		}
	}

}
