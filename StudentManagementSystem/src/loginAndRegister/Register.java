package loginAndRegister;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	   String fName = request.getParameter("fName");
	   String lName = request.getParameter("lName");
	   String uName = request.getParameter("uName");
	   String mbl = request.getParameter("mbl");
	   String city = request.getParameter("city");
	   String email = request.getParameter("email");
	   String pwd = request.getParameter("pwd");
	   String loginType = request.getParameter("loginType");
	   
	   RequestDispatcher dispatcher = null;
		Connection con = null;
		/* Trial and Error*/
		if (loginType.equalsIgnoreCase("student")) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdatabase", "root", "");
				PreparedStatement pst = con.prepareStatement("insert into students(fName, lName, uName, mbl, city, email, pwd, loginType) values(?,?,?,?,?,?,?,?)");
				pst.setString(1, fName);
				pst.setString(2, lName);
				pst.setString(3, uName);
				pst.setString(4, mbl);
				pst.setString(5, city);
				pst.setString(6, email);
				pst.setString(7, pwd); 
				pst.setString(8, loginType);
				
				int rowcount = pst.executeUpdate();	
				dispatcher = request.getRequestDispatcher("register.jsp");
				dispatcher.forward(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		/* Trial and Error*/
	/*	else if(loginType.equalsIgnoreCase("teacher")){
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdatabase", "root", "");
				PreparedStatement pst = con.prepareStatement("insert into teacher (fName, lName, uName, mbl, city, email, pwd, loginType) values(?,?,?,?,?,?,?,?)");
				pst.setString(1, fName);
				pst.setString(2, lName);
				pst.setString(3, uName);
				pst.setString(4, mbl);
				pst.setString(5, city);
				pst.setString(6, email);
				pst.setString(7, pwd); 
				pst.setString(8, loginType);
				
				int rowcount = pst.executeUpdate();	
				dispatcher = request.getRequestDispatcher("register.jsp");
				dispatcher.forward(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} */
		else{
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdatabase", "root", "");
				PreparedStatement pst = con.prepareStatement("insert into admin (fName, lName, uName, mbl, city, email, pwd, loginType) values(?,?,?,?,?,?,?,?)");
				pst.setString(1, fName);
				pst.setString(2, lName);
				pst.setString(3, uName);
				pst.setString(4, mbl);
				pst.setString(5, city);
				pst.setString(6, email);
				pst.setString(7, pwd); 
				pst.setString(8, loginType);
				
				int rowcount = pst.executeUpdate();	
				dispatcher = request.getRequestDispatcher("register.jsp");
				dispatcher.forward(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
			
	}

}
