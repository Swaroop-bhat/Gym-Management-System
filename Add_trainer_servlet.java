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

/**
 * Servlet implementation class Add_trainer_servlet
 */
@WebServlet("/Add_trainer_servlet")
public class Add_trainer_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_trainer_servlet() {
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
		String phone=request.getParameter("phone");
		String Gender=request.getParameter("gender");
		String weight=request.getParameter("weight");
		String height=request.getParameter("height");
		String speciality=request.getParameter("speciality");
		String salary=request.getParameter("salary");
		
		long pno=Long.parseLong(phone);
		long sal=Long.parseLong(salary);
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms","root","");
			
			String qry="INSERT INTO `trainer` (`tranid`, `name`, `phone`, `gender`, `weight`, `height`, `speciality`, `salary`) VALUES (?,?,?,?,?,?,?,?);";
			
			PreparedStatement ps=con.prepareStatement(qry);
			ps.setNull(1, Types.NULL );ps.setString(2, name);ps.setLong(3, pno);ps.setString(4, Gender);
		    ps.setString(5, weight);ps.setString(6, height);ps.setString(7, speciality);ps.setLong(8, sal);
			
			 
			int ack=ps.executeUpdate();
			RequestDispatcher dis=request.getRequestDispatcher("Addtrainer.jsp");
			if(ack!=0)
			{
				System.out.println("Record inserted");
				request.setAttribute("info","trainer added");
			}
			else
			{
				System.out.println("Record not inserted");
				request.setAttribute("info", "trainerr not added");
			}
			dis.forward(request, response);
			
		} catch (ClassNotFoundException e1) {
			
			e1.printStackTrace();
		} catch (SQLException e1) {
			
			e1.printStackTrace();
		
	}
	}

}
