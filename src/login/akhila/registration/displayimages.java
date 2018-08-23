package login.akhila.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class displayimages
 */
@WebServlet("/displayimages")
public class displayimages extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public displayimages() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	/*	String param = request.getParameter("username");
		System.out.println(param);
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String url = request.getContextPath();
		System.out.println(url);*/
		
		String username = "root";
		String pwd = "akhilairuku1";
		String connUrl="jdbc:mysql://localhost:3306/testerdb1?useSSL=false";
		
		
		
		String submitType = request.getParameter("exit");
		 
		 if(submitType.equals("exit")){
			 
			 try{ 
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection(connUrl, username, pwd);
					PreparedStatement ps = con.prepareStatement("delete FROM testerdb1.visited ");
					
					PreparedStatement ds = con.prepareStatement("delete FROM testerdb1.loginusers ");
					
					

				  System.out.println(" flushed visited profiles ");


				 ps.executeUpdate();
				 
			 
				 response.sendRedirect("http://localhost:8080/Sampler/login.jsp");
				 ds.executeUpdate();
			 
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
