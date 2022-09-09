package gym;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
        String Password = request.getParameter("password");
        System.out.println(username);
        System.out.println(Password);
        String uid=username;
        try
        {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms","root","");
            PreparedStatement statement = con.prepareStatement("select gid, pass from login where gid =? and pass=?");
            statement.setString(1, username);
            statement.setString(2, Password);
            ResultSet result = statement.executeQuery();
            if(result.next()){  
            	
            	RequestDispatcher dispatch=request.getRequestDispatcher("Home.jsp");
    			request.setAttribute("username",uid);
    			dispatch.forward(request, response);
            }else{
            	RequestDispatcher dispatch=request.getRequestDispatcher("Adminlogin.jsp");
    			request.setAttribute("info", "Invalid credentials");
    			dispatch.forward(request, response);
            }
        }catch(Exception e){
            System.out.println("DB related Error");
            e.printStackTrace();
        }
		
		doGet(request, response);
	}

}
