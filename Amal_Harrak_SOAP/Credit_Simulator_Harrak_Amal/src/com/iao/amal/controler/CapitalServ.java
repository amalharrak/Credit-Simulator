package com.iao.amal.controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iao.amal.dao2.InsertCreditClient;
import com.iao.amal.model.CreditModel;
import com.iao.amal.ws.CreditMethodsStub;
import com.iao.amal.ws.CreditMethodsStub.CalculCapital;
import com.iao.amal.ws.CreditMethodsStub.CalculCapitalResponse;

/**
 * Servlet implementation class CapitalServ
 */

public class CapitalServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CapitalServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("capitalcredit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getParameter("calculc") != null) {
			HttpSession session = request.getSession();
			double c = Double.parseDouble(request.getParameter("annuitecap"));
			int n = Integer.parseInt(request.getParameter("dureecap"));
			double t = Double.parseDouble(request.getParameter("tauxcap"));
          	session.setAttribute("annuite", c);
			session.setAttribute("dureecap", n);
			session.setAttribute("tauxcap", t);
			CreditModel creditModel = new CreditModel();
             creditModel.setAnnCred(c);
			creditModel.setDureeCre(n);
			creditModel.setTauxCre(t);
			CreditMethodsStub stub = new CreditMethodsStub();
			CalculCapital cal = new CalculCapital();
			cal.setAnnuite(c);
			cal.setDuree(n);
			cal.setTaux(t / 100);

			CalculCapitalResponse res = stub.calculCapital(cal);
			double capital = res.get_return();
			session.setAttribute("capital", capital);
			creditModel.setMonCre(capital);
			request.getRequestDispatcher("capitalcredit.jsp").forward(request, response);
		}

		if (request.getParameter("savecapital") != null)

		{
			HttpSession session = request.getSession();
			CreditModel creditModel = new CreditModel();
             double c = Double.parseDouble(request.getParameter("annuitecap"));
			int n = Integer.parseInt(request.getParameter("dureecap"));
			double t = Double.parseDouble(request.getParameter("tauxcap"));
          session.setAttribute("annuite", c);
			session.setAttribute("dureecap", n);
			session.setAttribute("tauxcap", t);
            int idc;
            idc = (int) session.getAttribute("id");
            creditModel.setNumCli(idc);
			creditModel.setAnnCred(c);
			creditModel.setDureeCre(n);
			creditModel.setTauxCre(t);
			creditModel.setDatPre(new java.util.Date());
            CreditMethodsStub stub = new CreditMethodsStub();
			CalculCapital cal = new CalculCapital();
			cal.setAnnuite(c);
			cal.setDuree(n);
			cal.setTaux(t / 100);
             CalculCapitalResponse res = stub.calculCapital(cal);
			double capital = res.get_return();
			session.setAttribute("capital", capital);
			creditModel.setMonCre(capital);

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
