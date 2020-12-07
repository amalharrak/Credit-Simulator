package com.iao.amal.dao2;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.iao.amal.model.ClientModel;

@SuppressWarnings("unused")
public class InsertClientDao {
	
	// cette class permet d'ajouter le client courant dans la base de données table tclient
	
	public static int InsertClient(ClientModel clt) throws ClassNotFoundException {
       
		String INPUT_USER = "INSERT INTO tclient" +
                   "  ( NomCli, AdrCli, VilCli, TelCli, PassCli , MailCli) VALUES " +  " ( ?, ?, ?, ?,?,?);"; 
		
		  int insertResult = 0;

      try 
       {
          Class.forName("com.mysql.cj.jdbc.Driver");  
	    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?serverTimezone=UTC","root",""); 


            // Create a statement using connection object
	    
				PreparedStatement statement = conexion.prepareStatement( INPUT_USER );  
           
				
				statement.setString(1,clt.getNomCli());
				statement.setString(2,clt.getAdrCli());
				statement.setString(3,clt.getVilCli());
				statement.setString(4,clt.getTelCli());
				statement.setString(5,clt.getPassCli());
                statement.setString(6,clt.getMailCli());
				
				
			 insertResult = statement.executeUpdate(); 

        }    catch(Exception e){System.out.println(e);} 
       
       return insertResult;
    }
	
	
	
	
	

}
