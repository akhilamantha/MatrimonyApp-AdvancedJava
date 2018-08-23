package login.akhila.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.io.File;
import java.sql.ResultSet;

import java.io.PrintWriter;
import javax.servlet.http.Part;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class registerimpli
 */
@WebServlet("/registerimpli")
public class registerimpli extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String getdbimage;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerimpli() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String username = "root";
		String pwd = "akhilairuku1";
		String connUrl="jdbc:mysql://localhost:3306/testerdb1?useSSL=false";
		
		String regSubmitType = request.getParameter("submit");
		
if(regSubmitType.equals("register")) {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(connUrl, username, pwd);
				PreparedStatement ps = con.prepareStatement("insert into testerdb1.user value(?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1, request.getParameter("username"));
				ps.setString(2,  request.getParameter("email"));
				ps.setString(3,  request.getParameter("pwd"));
			ps.setString(4,  request.getParameter("name"));
			ps.setNString(5, request.getParameter("surname"));
			ps.setNString(6, request.getParameter("dob"));
			ps.setNString(7, request.getParameter("tel"));
			ps.setNString(8, request.getParameter("add"));
			ps.setNString(9, request.getParameter("ptc"));
			ps.setNString(10, request.getParameter("salary"));
			ps.setNString(11, request.getParameter("sex"));
			ps.setNString(12, request.getParameter("personaladdress"));
			ps.setNString(13, request.getParameter("file"));
			
			
			
			
			
				 ps.executeUpdate();
				con.close();
				
				System.out.println("registration sucess");
		          response.sendRedirect("http://localhost:8080/Sampler/login.jsp");
			
				
			}catch(Exception e) {
				System.out.println(e);
			}
			
			
			
			//String filepath = request.getParameter("filepath");
//			PrintWriter out = response.getWriter();
//			
//			Part part = request.getPart("file");
//			String fileName = extractFileName(part);
//			String savePath = "C:\\Users\\Manikesh\\eclipse-workspace\\Sampler\\WebContent\\images"+File.separator + fileName;
//			File fileSaveDir = new File(savePath);
//			part.write(fileSaveDir + File.separator);
//			try {
//				out.println("<center><a href='displayimages.jsp?id=" +fileName+"'>Display</a></center>");
//				
//			}catch(Exception e) {
//				System.out.println(e);
//			}
			
			 //String extractFileName(Part part) {
//				String contentDisp = part.getHeader("content-disposition");
//				String[] items = contentDisp.split(";");
//				for(String s : items) {
//					if(s.trim().startsWith("filename")) {
//						
//						return s.substring(s.indexOf("=")+2,s.length() - 1); 
//					}
//				}
				
			}
			
			
			
			
			
//			c.setName(request.getParameter("name"));
////			c.setPassword(password);
////			c.setUsername(userName);
////			cd.insertCustomer(c);
//			
//			request.setAttribute("successMessage", "Registration done, please login");
//			request.getRequestDispatcher("register.jsp").forward(request, response);
//			
//			
//			
//		}
		
		
		
		
	}
	

//	private String extractFileName(Part part) {
//		// TODO Auto-generated method stub
//		
//		String contentDisp = part.getHeader("content-disposition");
//		String[] items = contentDisp.split(";");
//		for(String s : items) {
//			if(s.trim().startsWith("filename")) {
//				
//				return s.substring(s.indexOf("=")+2,s.length() - 1); 
//			}
//		}
//		
//		
//		
//		return null;
//	}
	
	 public String setpath(String getdbimage) {
		 
		 String username = "root";
			String pwd = "akhilairuku1";
			String connUrl="jdbc:mysql://localhost:3306/testerdb1?useSSL=false";
			
	 
 String sql = "select imagelink from testerdb1.user where imagelink is not null";
	 Connection con;
	try {
		con = DriverManager.getConnection(connUrl, username, pwd);
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		this.getdbimage = getdbimage;
		
		getdbimage = rs.getString(13);
		
		
//		while(rs.next()) {
//			
//		}
		
		
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
	return getdbimage;
 }
	
	
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//		
//	}
//
//}
