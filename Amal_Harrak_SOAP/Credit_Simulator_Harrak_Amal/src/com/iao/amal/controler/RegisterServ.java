package com.iao.amal.controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iao.amal.dao2.InsertClientDao;
import com.iao.amal.model.ClientModel;

/**
 * Servlet implementation class RegisterServ
 */

public class RegisterServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		     response.sendRedirect("registercredit.jsp"); 

}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email= request.getParameter("email");
		String pass= request.getParameter("pass");
		String name= request.getParameter("name");
		String tel= request.getParameter("tel");
		String city= request.getParameter("city");
		String add= request.getParameter("adresse");
			ClientModel client = new ClientModel();
		  client.setMailCli(email);
		  client.setPassCli(pass);
		  client.setNomCli(name);
		  client.setTelCli(tel);
		  client.setVilCli(city);
		  client.setAdrCli(add);
	  try {
	          int res =InsertClientDao.InsertClient(client) ;
			  if(res==0) {
				  HttpSession session = request.getSession( true );
				  session.setAttribute( "error","email exist" );
				  response.sendRedirect("registercredit.jsp"); 
			  } else {
				  HttpSession session = request.getSession( true );
				  session.setAttribute( "valid","bien enregistrer" );
				  response.sendRedirect("logincredit.jsp");}
			  } catch (Exception e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	            
	        }		
	}
}
