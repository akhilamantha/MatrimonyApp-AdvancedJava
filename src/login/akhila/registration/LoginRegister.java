package login.akhila.registration;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class LoginRegister
 */
@WebServlet("/loginRegister")
public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public LoginRegister() {
        super();
    }
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//PrintWriter out = response.getWriter();
	//	CustomerDAO  cd= new  CustomerDAOImpl();
		

		//Connection con;
		//PreparedStatement ps;
//		
//		String userName = request.getParameter("username");
//		String password = request.getParameter("password1");
		String submitType = request.getParameter("submit");
//				
	//	String regSubmitType = request.getParameter("register");
		//System.out.println(submitType);
		String username = "root";
		String pwd = "akhilairuku1";
		String connUrl="jdbc:mysql://localhost:3306/atechdb?useSSL=false";
		//String filepath = request.getParameter("filepath");
		
		//Part part = request.getPart("file");
		//String fileName = extractFileName(part);
		//String savePath = "C:\\Users\\Manikesh\\eclipse-workspace\\Sampler\\WebContent\\images"+File.separator + fileName;
		//File fileSaveDir = new File(savePath);
		//part.write(savePath + File.separator);
		//try {
		//	out.println("<center><a href='displayimages.jsp?id=" +fileName+"'>Display</a></center>");
			
		//}catch(Exception e) {
			//System.out.println(e);
		//}
		
	//	Customer c = cd.getCustomer(userName, password);
		if(submitType.equals("login")) {
				//&& c!=null && c.getName()!=null) {
			try {
				
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(connUrl, username, pwd);
				//PreparedStatement ps = con.prepareStatement("select * from testerdb1.user where username = ? and password = ?");
				PreparedStatement ps = con.prepareStatement("select * from test");
				/*PreparedStatement ps2 = con.prepareStatement("insert into testerdb1.loginusers value(?)");
				ps2.setString(1, request.getParameter("username"));
				ps.setString(1, request.getParameter("username"));
				
				ps.setString(2, request.getParameter("password1"));
				*/
				ResultSet rs = ps.executeQuery();
				
				//ps2.executeUpdate();
				
				
				while(rs.next()) {
					//c.setName(rs.getString(1));
					//c.setPassword(rs.getString(2));
					//c.setUsername(rs.getString(3));
					
					System.out.println("Login Successful");
					//response.sendRedirect("http://localhost:8080/Sampler/displayImages.jsp");
					
				}
				
				//response.sendRedirect("http://localhost:8080/Sampler/welcome.jsp");


				
						
					}catch(Exception e) {
						
						System.out.println(e);
					}
					
			//request.setAttribute("message", c.getName());
			//response.sendRedirect("displayImages.jsp");
				
			//request.getRequestDispatcher("displayimages.jsp").forward(request, response);
				
			
		}

		else {
			//response.sendRedirect("http://localhost:8080/Sampler/welcome.jsp");
//			request.setAttribute("message", "Data Not Found, click on register");
//			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}
//		}
//		else
//			response.sendRedirect("http://localhost:8080/Sampler/register.jsp");
//		else if(regSubmitType.equals("register")) {
//			
//			try {
//				Class.forName("com.mysql.jdbc.Driver");
//				Connection con = DriverManager.getConnection(connUrl, username, pwd);
//				PreparedStatement ps = con.prepareStatement("insert into testerdb1.user value(?,?,?,?)");
//				ps.setString(1, request.getParameter("username"));
//				ps.setString(2,  request.getParameter("name"));
//				ps.setString(3,  request.getParameter("pwd"));
//			ps.setString(4,  request.getParameter("surname"));
//				 ps.executeUpdate();
//				con.close();
//				
//				
//			}catch(Exception e) {
//				System.out.println(e);
//			}
//			
////			c.setName(request.getParameter("name"));
////			c.setPassword(password);
////			c.setUsername(userName);
////			cd.insertCustomer(c);
//			
//			request.setAttribute("successMessage", "Registration done, please login");
//			request.getRequestDispatcher("register.jsp").forward(request, response);
//			
//			
//			
//		
		
		
		
		
		
		
	}
	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for(String s : items) {
			if(s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=")+2,s.length() - 1); 
			}		}
		return "";
	}
	

	
	
	
	}

