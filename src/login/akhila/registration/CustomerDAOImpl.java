package login.akhila.registration;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerDAOImpl implements CustomerDAO {
	
	static Connection con;
	static PreparedStatement ps;

	@Override
	public int insertCustomer(Customer c) {
		// TODO Auto-generated method stub
		
		int status=0;
		try {
			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("insert into customer value(?,?,?,?)");
			ps.setString(1, c.getUsername());
			ps.setString(2, c.getPassword());
			ps.setString(3, c.getName());
		ps.setString(4, c.getfilepath());
			status = ps.executeUpdate();
			con.close();
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
      
	public Customer getCustomer(String username, String pass) {
		// TODO Auto-generated method stub
		
		Customer c = new Customer();
		
		
try {
	con = MyConnectionProvider.getCon();
	ps = con.prepareStatement("select * from testerdb1.user where username = ? and password = ?");
	ps.setString(1, username);
	ps.setString(2, pass);
	
	ResultSet rs = ps.executeQuery();
	while(rs.next()) {
		//c.setName(rs.getString(1));
		//c.setPassword(rs.getString(2));
		//c.setUsername(rs.getString(3));
		
		System.out.println(rs.getString(1));
		
	}
	

	
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		return c;
	}

}
