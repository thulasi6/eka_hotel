import java.io.*;  
import java.sql.*;  
import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class Register extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
          
String n=request.getParameter("uname");  
String p=request.getParameter("mail");  
String e=request.getParameter("ph");  
String c=request.getParameter("userCountry");  
String m=request.getParameter("msg");  
          
try{  
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
  
PreparedStatement ps=con.prepareStatement("insert into feed values(?,?,?,?,?)");  
  
ps.setString(1,n);  
ps.setString(2,p);  
ps.setString(3,e);  
ps.setString(4,c); 
ps.setString(5,m); 
          
int i=ps.executeUpdate();  
if(i>0)  

             out.println("<html>");
             out.println("<body>");
             out.println("<br><br><br><h1>&emsp;&emsp;&emsp;Hi "+n+" , "+"</h1>");
             out.println("<h2>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Thank you... for your response..</h2>");
             out.println("<h2>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;You feedback is successfully received...</h2>");
             out.println("<h2>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;We will consider your suggestions and comments and will surely make changes...</h2>");
             out.println("</body>");
             out.println("</html>");

              
}
catch (Exception e2) {System.out.println(e2);}  
          
out.close();  
}  
  
}  