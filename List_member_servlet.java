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

/**
 * Servlet implementation class List_Memberobj_servlet
 */
@WebServlet("/List_member_servlet")
public class List_member_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public List_member_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Memberobj> store=new ArrayList<Memberobj>();// dynamic storage to keep objects
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms","root","");
			String qry="select * from member;";
			PreparedStatement ps=con.prepareStatement(qry);
			ResultSet rs = ps.executeQuery();
			Memberobj tmp=null;// initalize
			while(rs.next())
			{
				// convert row into object
				tmp=new Memberobj();
				//tmp=new Student(rs.getString("name"), rs.getString("dept"), qry, qry, qry, qry, qry, qry, qry, serialVersionUID, serialVersionUID, null, null);
				// rs.getType("columnname")
				tmp.setMemid(rs.getLong("memid"));tmp.setName(rs.getString("name"));
				tmp.setAge(rs.getLong("age"));tmp.setAddress(rs.getString("address"));
				tmp.setPhone(rs.getLong("phone"));tmp.setGender(rs.getString("gender"));
				tmp.setTimings(rs.getString("timings"));tmp.setFees(rs.getLong("fees"));
				store.add(tmp);
			}
			RequestDispatcher dis=request.getRequestDispatcher("memberlist.jsp");
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
