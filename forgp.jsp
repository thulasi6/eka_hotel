<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*"%>
<html>
    <head>
        <title>CONFIRMATION</title>
        <link rel="stylesheet" type="text/css" href="confirm.css">
    </head>
    <body >
        <div class="page">
            <div class="header"> 
                <ul>
                  <li>Along Mombasa Road, Nairobi<li>&emsp;
                    <li>+254732105000</li>&emsp;
                    <li><a href="mailto:kthulasilakshmi@gmail.com">sales@ekahotel.com</a></li>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    &emsp;&emsp;&emsp;&emsp;&emsp;
                  <li><a href="#">FACEBOOK&emsp;|</a></li>
                  <li><a href="#">TWITTER&emsp;|</a></li>
                  <li><a href="#">INSTAGRAM&emsp;|</a></li>
                  <li><a href="#">LINKED IN&emsp;</a></li>
                  </ul>
              </div>
            </div>
            <div class="links">
                <div class="logo">
                <img src="logo.jpg">
             </div>
            <center><br>
            <a href="http://localhost:8080/hotel_mini_project/hotel.html">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="http://localhost:8080/hotel_mini_project/aboutus.html" >ABOUT US</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="http://localhost:8080/hotel_mini_project/room.html">ROOMS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="http://localhost:8080/hotel_mini_project/dining.html">DINING</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="http://localhost:8080/hotel_mini_project/meeting.html">MEETINGS & EVENTS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="http://localhost:8080/hotel_mini_project/download.html">DOWNLOADS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="http://localhost:8080/hotel_mini_project/contact.html">CONTACTS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="http://localhost:8080/hotel_mini_project/covid.html">COVID-19 UPDATE</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
            <a href="http://localhost:8080/hotel_mini_project/login.html" class="active">WORKER'S LOGIN</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
            <button class="but">BOOK NOW</button>         
             </center>
             </div></div><br>
             <%
             String username=request.getParameter("userid");
String cpassword=request.getParameter("password");
String npass=request.getParameter("newp");
String nnpass=request.getParameter("newwp");
String connurl = "jdbc:mysql://localhost:3306/hotel";
Connection con=null;
String pass="";
try{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection(connurl, "root", "");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from worker where userid='"+username+"'");
	while(rs.next()){   
		username=rs.getString(1);
		pass=rs.getString(2); 
		System.out.println(username+ " "+pass);
		if(pass.equals(cpassword) && npass.equals(nnpass)){
			Statement st1=con.createStatement();
			int i=st1.executeUpdate("update worker set password='"+npass+"' where userid='"+username+"'");
			out.println("<div>");
			out.println("<center><b><h1>Password changed successfully.</h1></b><br><br>Go back and login again with the new password<br><br></center>");
			st1.close();
%>
<center>
<a href = "login.html" style="text-decoration: none;font-weight: bold;">Login page</a>
</center>
<%
			out.println("</div>");
		}
		else if(!pass.equals(cpassword)){
			out.println("<div>");
			out.println("<center><b><h1>Current Password is invalid.</h1></b><br><br>Please go back to try again</center>");
			out.println("</div>");
		}
		else if(!npass.equals(nnpass)){
			out.println("<div>");
			out.println("<center><b><h1>Confirm password doesn't match new password.</h1></b><br><br>Please go back to try again</center> ");
			out.println("</div>");
		}
		else{
			out.println("<div>");
			out.println("<center><b><H1>Your username is invalid.</H1></b><br><br>Please go back and check</center> ");
			out.println("</div>");
		}
	}
	con.close();
}
catch(Exception e){
	out.println(e);
}

             %>
             </body>
        </html>