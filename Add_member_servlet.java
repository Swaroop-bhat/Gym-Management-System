package gym;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Types;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Add_member_servlet
 */
@WebServlet("/Add_member_servlet")
public class Add_member_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_member_servlet() {
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
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String add=request.getParameter("address");
		String phone=request.getParameter("phone");
		String Gender=request.getParameter("gender");
		String timings=request.getParameter("timings");
		String fees=request.getParameter("fees");
		long a=Long.parseLong(age);
		long pno=Long.parseLong(phone);
		long fee=Long.parseLong(fees);
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms","root","");
			
			String qry="INSERT INTO `member` (`memid`, `name`, `age`, `address`, `phone`, `gender`, `timings`, `fees`) VALUES (?,?,?,?,?,?,?,?);";
			//String qry="INSERT INTO `member` (`memid`, `name`, `age`, `address`, `phone`, `gender`, `timings`, `remarks`) VALUES (?,?,?,?,?,?,?,?);";
			PreparedStatement ps=con.prepareStatement(qry);
			ps.setNull(1, Types.NULL );ps.setString(2, name);ps.setLong(3, a);ps.setString(4, add);
			ps.setLong(5, pno);ps.setString(6, Gender);ps.setString(7, timings);ps.setLong(8, fee);
			
			 
			int ack=ps.executeUpdate();
			RequestDispatcher dis=request.getRequestDispatcher("Addmember.jsp");
			if(ack!=0)
			{
				System.out.println("Record inserted");
				request.setAttribute("info","member added");
			}
			else
			{
				System.out.println("Record not inserted");
				request.setAttribute("info", "member not added");
			}
			dis.forward(request, response);
			
		} catch (ClassNotFoundException e1) {
			
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		
	}
	}

}
