package javapackage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class PersonalServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resq)
			throws IOException, ServletException {
		doPost(req, resq);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resq)
			throws IOException, ServletException {
		req.setCharacterEncoding("gb2312");
		resq.setContentType("text/html;charset=gb2312");
		int id = Integer.parseInt(req.getParameter("id"));
		String personal_name = req.getParameter("personal_name");
		String personal_sex = req.getParameter("personal_sex");
		int personal_old = Integer.parseInt(req.getParameter("personal_old"));
		String personal_like = req.getParameter("personal_like");
		String personal_autograph = req.getParameter("personal_autograph");

		Connection connect = null;
		Statement state = null;

		try {
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			connect = DriverManager.getConnection("jdbc:odbc:websitedata",
					"sa", "1234");
			state = connect.createStatement();

			String qstr = "Update Personal  set PersonalName='"
					+ personal_name + "',PersonalSex='" + personal_sex
			     	+ "',PersonalOld=" + personal_old + ",PersonalLike='"
					+ personal_like + "',PersonalAutograph='"
					+ personal_autograph + "' Where PersonalId = '"
					+ id + "'";
			state.executeUpdate(qstr);


		} catch (SQLException se) {
			System.out.println("SQLException while Updating " + "Personal "
					+ " : " + se.getMessage());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				state.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				connect.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		RequestDispatcher dispatcher = req
				.getRequestDispatcher("/Right_Personal.jsp");
		if (dispatcher != null) {
			dispatcher.forward(req, resq);
		}
	}
}
