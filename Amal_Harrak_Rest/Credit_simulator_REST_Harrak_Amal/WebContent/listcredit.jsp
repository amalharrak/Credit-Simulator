<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>

<%@ page import="com.iao.amal.model.CreditModel" %>   <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list des credits</title>

<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">


</head>

   <style>  @import url('https://fonts.googleapis.com/css?family=Amarante');

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, 
ead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {

  font-size: 100%;
  margin: 8px;
    border-radius: 33px;
    padding: 5px;
    border: 0;
  font: inherit;
  vertical-align: baseline;
  outline: none;
  -webkit-font-smoothing: antialiased;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
html { overflow-y: scroll; }
body { 
  background: linear-gradient(-135deg, #c850c0, #4158d0);
  font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-size: 62.5%;
  line-height: 1;
  color: #585858;
  padding: 22px 10px;
  padding-bottom: 55px;
}

::selection { background: #5f74a0; color: #fff; }
::-moz-selection { background: #5f74a0; color: #fff; }
::-webkit-selection { background: #5f74a0; color: #fff; }

br { display: block; line-height: 1.6em; } 

article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section { display: block; }
ol, ul { list-style: none; }

input, textarea { 
  -webkit-font-smoothing: antialiased;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  outline: none; 
}

blockquote, q { quotes: none; }
blockquote:before, blockquote:after, q:before, q:after { content: ''; content: none; }
strong, b { font-weight: bold; } 

table { border-collapse: collapse; border-spacing: 0; }
img { border: 0; max-width: 100%; }

h1 { 
  font-family: 'Amarante', Tahoma, sans-serif;
  font-weight: bold;
  font-size: 3.6em;
  line-height: 1.7em;
  margin-bottom: 10px;
  text-align: center;
}


/** page structure **/
#wrapper {
  display: block;
  width: 1145px;
  background: #fff;
  margin: 0 auto;
  padding: 10px 17px;
  -webkit-box-shadow: 2px 2px 3px -1px rgba(0,0,0,0.35);
}

#keywords {
  margin: 0 auto;
  font-size: 1.2em;
  margin-bottom: 15px;
}


#keywords thead {
  cursor: pointer;
  background: #c9dff0;
}
#keywords thead tr th { 
  font-weight: bold;
  padding: 12px 30px;
  padding-left: 42px;
}
#keywords thead tr th span { 
  padding-right: 20px;
  background-repeat: no-repeat;
  background-position: 100% 100%;

}

#keywords thead tr th.headerSortUp, #keywords thead tr th.headerSortDown {
  background: #acc8dd;
}

#keywords thead tr th.headerSortUp span {
  background-image: url('https://i.imgur.com/SP99ZPJ.png');
}
#keywords thead tr th.headerSortDown span {
  background-image: url('https://i.imgur.com/RkA9MBo.png');
}


#keywords tbody tr { 
  color: #555;
}
#keywords tbody tr td {
  text-align: center;
  padding: 15px 10px;
}
#keywords tbody tr td.lalign {
  text-align: left;
}</style>

<body>
       <%
		 
       if(session.getAttribute("email")==null){response.sendRedirect("logincredit.jsp");}
		 response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
		response.setHeader("Pragma","no-cache, no-store, must-revalidate");
		response.setHeader("Expires","0");
		
		%>    
		
		
	<%	 if(session.getAttribute("email")!=null){  %>

<form method="post" action="RecoverServ">

 <div id="wrapper">
 
    <div class=" creditaff" data-tilt>
					<a href="index.jsp">	<img src="images/logo.jpg" alt="IMG"> </a>
				</div>
  <h1>Liste Des Credits du Client <b> " ${username }"</b></h1>
  
  <table id="keywords" cellspacing="0" cellpadding="0">
    <thead>
      <tr>
               <b> <th>ID_CREDIT</th> </b>
            <b>   <th>ID_CLIENT</th></b>
            <b>    <th>DATE_CREDIT</th> </b>
            <b>    <th>MONTANT_CREDIT</th></b>
            <b>    <th>ANNUITE_CREDIT</th></b>
            <b>    <th>DUREE_CREDIT</th></b>
            <b>    <th>TAUX_CREDIT</th> </b>
                
      </tr>
    </thead>
    
    
    
    <tbody>
  
    <% 
           String s = ""; 
           CreditModel c;
           for(int i = 0; i < (int) session.getAttribute("numberof"); i++) { 
       %> 
       
      <tr>
        <td><% s="credit"+i; c=(CreditModel) session.getAttribute(s); %> <%=c.getNumCred()  %> </td>
       
           <td><%=c.getNumCli() %> </td>
            <td><%=c.getDatPre() %> </td>
             <td><%=c.getMonCre() %> MAD </td>
              <td><%=c.getAnnCred() %> MAD </td>
              <td><%=c.getDureeCre() %> Mois</td>
              <%
              
              %>
                <td><%=c.getTauxCre()%> % </td>
               
      </tr>
      
      
      
     <% } %>
      
    </tbody>
  </table>
  <center><button class="wrap btn" style="background-color:#ff7069;">  <a  href="index.jsp" style="color:white;">BACK</a>   </button></center>
  
 </div> 
 
 </form>
 
 <% } %>
</body>

        
</html>