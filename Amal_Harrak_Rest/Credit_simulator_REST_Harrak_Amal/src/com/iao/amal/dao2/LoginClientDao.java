package com.iao.amal.dao2;

import java.sql.*;

import com.iao.amal.model.ClientModel; 

public class LoginClientDao {  
	
	// this class use to validate login of user and recoverd obkect client if exist in data base
   public static ClientModel  authenticate(String login,String password){  
	 
	ClientModel clt = null;
	
    try{  
            Class.forName("com.mysql.cj.jdbc.Driver");  
		    Connection connecion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?serverTimezone=UTC","root","");  
			      
	 PreparedStatement statement = connecion.prepareStatement("select * from tclient where MailCli=? and PassCli=?");  
			statement.setString(1,login);  
			statement.setString(2,password);  
			
		  ResultSet result= statement.executeQuery();  
			  while (result.next()) {
				clt = new ClientModel();
				clt.setNumCli(result.getInt("NumCli"));
				clt.setMailCli(result.getString("MailCli"));
				clt.setNomCli(result.getString("NomCli"));}  
	          
	}   catch(Exception e){System.out.println(e);}  
	
	return clt;  
	}  
	
}  
