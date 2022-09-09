package gym;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class list_trainer_servlet
 */
@WebServlet("/list_trainer_servlet")
public class list_trainer_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public list_trainer_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Trainerobj> store=new ArrayList<Trainerobj>();// dynamic storage to keep objects
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms","root","");
			String qry="select * from trainer;";
			PreparedStatement ps=con.prepareStatement(qry);
			ResultSet rs = ps.executeQuery();
			Trainerobj tmp=null;// initalize
			while(rs.next())
			{
				// convert row into object
				tmp=new Trainerobj();
				//tmp=new Student(rs.getString("name"), rs.getString("dept"), qry, qry, qry, qry, qry, qry, qry, serialVersionUID, serialVersionUID, null, null);
				// rs.getType("columnname")
				tmp.setTranid(rs.getLong("tranid"));tmp.setName(rs.getString("name"));
				tmp.setPhone(rs.getLong("phone"));tmp.setGender(rs.getString("gender"));
				tmp.setWeight(rs.getString("weight"));tmp.setHeight(rs.getString("height"));
				tmp.setSpeciality(rs.getString("speciality"));tmp.setSalary(rs.getLong("salary"));
				store.add(tmp);
			}
			RequestDispatcher dis=request.getRequestDispatcher("trainerlist.jsp");
			request.setAttribute("data", store);
			dis.forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
