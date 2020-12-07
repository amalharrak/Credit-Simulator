package com.iao.amal.controler;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;

import com.iao.amal.model.CreditModel;


import com.iao.amal.dao2.InsertCreditClient;

/**
 * Servlet implementation class AnnuiteServ
 */
@SuppressWarnings("unused")
@WebServlet("/AnnuiteServ")
public class AnnuiteServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AnnuiteServ() {
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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	/**
	 *
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//${pageContext.request.contextPath}/
		if (request.getParameter("calculm") != null)

		{
			HttpSession session = request.getSession();
			CreditModel creditModel = new CreditModel();
			double c = Double.parseDouble(request.getParameter("montant"));
			int n = Integer.parseInt(request.getParameter("duree"));
			double t = Double.parseDouble(request.getParameter("taux"));
			session.setAttribute("montant", c);
			session.setAttribute("duree", n);
			session.setAttribute("taux", t);
			creditModel.setMonCre(c);
			creditModel.setDureeCre(n);
			creditModel.setTauxCre(t);

			
			Client client = ClientBuilder.newClient();
			double mensualiteM = client.target("http://localhost:8080/Credit_simulator_REST_Harrak_Amal/rest/credit/calculAnnuite").queryParam("capital", c).queryParam("duree", n).queryParam("taux", t).request().get(Double.class);			
			
			session.setAttribute("mensualite", mensualiteM);
			creditModel.setAnnCred(mensualiteM);
			response.sendRedirect("index.jsp");

		}
		if (request.getParameter("saveannuite") != null) {
			HttpSession session = request.getSession();
			CreditModel creditModel = new CreditModel();
			double c = Double.parseDouble(request.getParameter("montant"));
			int n = Integer.parseInt(request.getParameter("duree"));
			double t = Double.parseDouble(request.getParameter("taux"));
			session.setAttribute("montant", c);
			session.setAttribute("duree", n);
			session.setAttribute("taux", t);
			int idc;
			idc = (int) session.getAttribute("id");
			creditModel.setNumCli(idc);
			creditModel.setMonCre(c);
			creditModel.setDureeCre(n);
			creditModel.setTauxCre(t);
			
			Client client = ClientBuilder.newClient();
			double mensualiteM = client.target("http://localhost:8080/Credit_simulator_REST_Harrak_Amal/rest/credit/calculAnnuite").queryParam("capital", c).queryParam("duree", n).queryParam("taux", t).request().get(Double.class);			
				
			
			
			session.setAttribute("mensualite", mensualiteM);
			creditModel.setAnnCred(mensualiteM);
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
