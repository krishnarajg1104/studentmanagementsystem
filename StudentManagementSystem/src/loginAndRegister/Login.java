package loginAndRegister;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String loginType = request.getParameter("loginType");
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		HttpSession session = request.getSession();
		
		/* Trial and Error */
		
		if(loginType.equalsIgnoreCase("student")) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdatabase", "root", "");
				PreparedStatement pst = con.prepareStatement("select * from students where email = ? and pwd = ?");
				pst.setString(1, email);
				pst.setString(2, pwd);
				
				ResultSet rs = pst.executeQuery("select * from students");
				
				if(rs.next()) {
					session.setAttribute("uName", rs.getString("uName"));
					session.setAttribute("loginType", rs.getString("loginType"));
					session.setAttribute("mbl", rs.getString("mbl"));
					dispatcher = request.getRequestDispatcher("index.jsp");
				} else {
					dispatcher = request.getRequestDispatcher("login.jsp");
				}
				dispatcher.forward(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
/*		else if(loginType.equalsIgnoreCase("teacher")){
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdatabase", "root", "");
				PreparedStatement pst = con.prepareStatement("select * from teacher where email = ? and pwd = ?");
				pst.setString(1, email);
				pst.setString(2, pwd);
				
				ResultSet rs = pst.executeQuery("select * from teacher");
				
				if(rs.next()) {
					session.setAttribute("uName", rs.getString("uName"));
					session.setAttribute("loginType", rs.getString("loginType"));
					session.setAttribute("mbl", rs.getString("mbl"));
					dispatcher = request.getRequestDispatcher("index.jsp");
				} else {
					dispatcher = request.getRequestDispatcher("login.jsp");
				}
				dispatcher.forward(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} */
		else {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdatabase", "root", "");
				PreparedStatement pst = con.prepareStatement("select * from admin where email = ? and pwd = ?");
				pst.setString(1, email);
				pst.setString(2, pwd);
				
				ResultSet rs = pst.executeQuery("select * from admin");
				
				if(rs.next()) {
					session.setAttribute("uName", rs.getString("uName"));
					session.setAttribute("loginType", rs.getString("loginType"));
					session.setAttribute("mbl", rs.getString("mbl"));
					dispatcher = request.getRequestDispatcher("index.jsp");
				} else {
					dispatcher = request.getRequestDispatcher("login.jsp");
				}
				dispatcher.forward(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
					
	}

		
}
