package com.iao.amal.dao2;

import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.iao.amal.model.ClientModel;
import com.iao.amal.model.CreditModel;

@SuppressWarnings("unused")
public class RecoverCreditClient {
	
	// cette class permet de retourner la list des credits effectue par le client du session 

	
	public static List<CreditModel> fetch(int id){  
		 
		CreditModel credit =null;
	//	CreditModel cc[] = new CreditModel[20];
		
		List<CreditModel> l=new ArrayList<CreditModel>();
		
		try{  

			    Class.forName("com.mysql.cj.jdbc.Driver");  
			    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?serverTimezone=UTC","root","");  
				      
				PreparedStatement ps=con.prepareStatement(  
				"select * from tcredit where NumCli=?");  
				
				ps.setInt(1,id);  
				
			      
				ResultSet rs=ps.executeQuery();  
			int i=1;
					
				while (rs.next()) {
				
					credit = new CreditModel();
					credit.setNumCred(rs.getInt(1));
					credit.setNumCli(rs.getInt(6));
					credit.setDureeCre(rs.getDouble(3));
					credit.setAnnCred(rs.getDouble(5));
					credit.setMonCre(rs.getDouble(2));
					credit.setDatPre(rs.getDate(7));
					credit.setTauxCre(rs.getDouble(4));
					
					l.add(credit);
					
					i++;			
					
						}  
		          
		}catch(Exception e){System.out.println(e);}  
		
		return l;  
		}  
//	public static void main(String args[])
//	{
//		fetchcredit test = new fetchcredit();
//		List<CreditModel> l = test.fetch(1);
//		for(CreditModel c: l)
//		System.out.println("credit : >"+c);
//	}
	

}
