package login.akhila.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateservlet
 */
@WebServlet("/updateservlet")
public class updateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String username = "root";
		String pwd = "akhilairuku1";
		String connUrl="jdbc:mysql://localhost:3306/testerdb1?useSSL=false";
		
		
		
		String submitType = request.getParameter("update");
		 
		 if(submitType.equals("update")) {
			 
			 
			 try{ 
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection(connUrl, username, pwd);

PreparedStatement ps = con.prepareStatement("update testerdb1.user u inner join testerdb1.loginusers l on l.username = u.username set u.username = ?, email = ? , password = ?,name = ?,surname = ?,dateofbirth = ?,telephone = ?, address = ? , postcode =?,salary = ? , sex=?, personaladdress=?  ");
ps.setString(1, request.getParameter("username"));
ps.setString(2,  request.getParameter("email"));
ps.setString(3,  request.getParameter("pwd"));
ps.setString(4,  request.getParameter("name"));
ps.setString(5, request.getParameter("surname"));
ps.setString(6, request.getParameter("dob"));
ps.setString(7, request.getParameter("telephone"));
ps.setString(8, request.getParameter("address"));
ps.setString(9, request.getParameter("ptc"));
ps.setString(10, request.getParameter("salary"));
ps.setString(11, request.getParameter("sex"));
ps.setString(12, request.getParameter("personaladdress"));


ps.executeUpdate();
			 
response.sendRedirect("http://localhost:8080/Sampler/displayImages.jsp"); 
			 
		 }
			  catch (Exception e) {
					 e.printStackTrace();
					 }

					 }
					 
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
