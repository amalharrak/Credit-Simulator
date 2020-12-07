package com.iao.amal.dao2;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Date;

import com.iao.amal.model.ClientModel;
import com.iao.amal.model.CreditModel;
import com.sun.org.apache.xerces.internal.impl.dv.xs.DateTimeDV;

@SuppressWarnings("unused")
public class InsertCreditClient {

	/* cette class permet d'ajouter le credit effectue par le client de la session 
	dans la base de données table tcredit */
	
	
public static int insertCreditDao(CreditModel credit) throws ClassNotFoundException {
	    String INPUT_USER = "INSERT INTO tcredit" +
                     "  (MonCre, DurCre, TauCre, AnnCred, NumCli, DatCred) VALUES " +  " ( ?, ?, ?, ?, ?, ?);  "; 
			
           int insertResult = 0;

   try    {
        
        Class.forName("com.mysql.cj.jdbc.Driver");  
	    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?serverTimezone=UTC","root",""); 


            // Create a statement using connection object
	    
	PreparedStatement statement = conexion.prepareStatement( INPUT_USER );  
            
				statement.setInt(5,credit.getNumCli());
				statement.setDouble(1,credit.getMonCre());
				statement.setDouble(2,credit.getDureeCre());
				statement.setDouble(3,credit.getTauxCre());
				statement.setDouble(4,credit.getAnnCred());
              	statement.setDate(6,new java.sql.Date(credit.getDatPre().getTime()));
				
				
		
             insertResult = statement.executeUpdate(); 

        }      catch(Exception e){System.out.println(e);} 
       
       return insertResult;
    }
	
	
}
