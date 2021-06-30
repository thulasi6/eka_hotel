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
            <a href="http://localhost:8080/hotel_mini_project/hotel.html">HOME</a>&nbsp;&nbsp;&nbsp;
            <a href="http://localhost:8080/hotel_mini_project/aboutus.html" >ABOUT US</a>&nbsp;&nbsp;&nbsp;
            <a href="http://localhost:8080/hotel_mini_project/room.html">ROOMS</a>&nbsp;&nbsp;&nbsp;
            <a href="http://localhost:8080/hotel_mini_project/dining.html">DINING</a>&nbsp;&nbsp;&nbsp;
            <a href="http://localhost:8080/hotel_mini_project/meeting.html">MEETINGS & EVENTS</a>&nbsp;&nbsp;&nbsp;
            <a href="http://localhost:8080/hotel_mini_project/download.html">DOWNLOADS</a>&nbsp;&nbsp;&nbsp;
            <a href="http://localhost:8080/hotel_mini_project/contact.html">CONTACTS</a>&nbsp;&nbsp;&nbsp;
            <a href="http://localhost:8080/hotel_mini_project/covid.html">COVID-19 UPDATE</a>&nbsp;&nbsp;&nbsp;  
            <a href="http://localhost:8080/hotel_mini_project/login.html" class="active">WORKER'S LOGIN</a>&nbsp;&nbsp;&nbsp;   
            <a href="http://localhost:8080/hotel_mini/logout">&emsp;LOGOUT</a>&nbsp;&nbsp;&nbsp;
            <button class="but">BOOK NOW</button>         
             </center>
             </div></div><br>
<%
String userid=request.getParameter("userid");
String password=request.getParameter("password");
String u;
String p;
String f;
String pos;
String ph;
String s;
String ptax;
String aa;
String abs;

try{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from worker where userid='"+userid+"'");
rs.next();
u = rs.getString("userid");
p = rs.getString("password");
f = rs.getString("fname");
pos = rs.getString("position");
ph = rs.getString("phoneno");
s = rs.getString("salary");
ptax = rs.getString("ptax");
aa = rs.getString("aamount");
abs = rs.getString("absent");


if(u.equals(userid) && p.equals(password)){
    out.println("<br><h1><center>PERSONAL DETAILS</center></h1>");
    out.println("<h1>&emsp;&emsp;&emsp;&emsp;<b>Hi "+f+" , "+"</h1>");
    out.println("<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b>Name &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;: "+f+"</b><br>");
	out.println("<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b>Username&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; : "+u+"</b><br>");
	out.println("<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b>Position &nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;: "+pos+"</b><br>");
	out.println("<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b>Phone Number &nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;: "+ph+"</b><br>");
	out.println("<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b>Salary &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;: "+s+"</b><br>");	
	out.println("<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b>Professional Tax &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;: "+ptax+"</b><br>");
	out.println("<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b>Allowances Amount &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;: "+aa+"</b><br>");
	out.println("<br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<b>Number of days absent in this month : "+abs+"</b><br>");	
}
else{
	out.println("<br><br><h1><center>Invalid password</center></h1>");
}

}
catch(Exception e){

	out.println("<br><br><h1><center>Invalid username</center></h1>");

}
%>
</body>
</html>