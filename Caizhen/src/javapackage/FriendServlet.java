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
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class FriendServlet extends HttpServlet {
	Connection connect = null;
	int friend_old;
	String friend_name,friend_sex,friend_like,friend_autograph;
	public void doGet(HttpServletRequest req, HttpServletResponse resq)
			throws IOException, ServletException {
		doPost(req, resq);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resq)
			throws IOException, ServletException {
		req.setCharacterEncoding("gb2312");
		resq.setContentType("text/html;charset=gb2312");
		String friendid = req.getParameter("friendid");
		String act = req.getParameter("act");
		if (act.equals("a")) {
			 friend_name = req.getParameter("friend_name");
			 friend_sex = req.getParameter("friend_sex");
			 friend_old = Integer.parseInt(req.getParameter("friend_old"));
			 friend_like = req.getParameter("friend_like");
			 friend_autograph = req.getParameter("friend_autograph");
			 HttpSession session = req.getSession();
			 boolean isLoggedIn=true;
             session.setAttribute("isLoggedIn",String.valueOf(isLoggedIn)); 
			 addFriend();
		} else if (act.equals("b")) {
			deleteFriend(friendid);
		}
		RequestDispatcher dispatcher = req
				.getRequestDispatcher("Right_Friend.jsp");
		if (dispatcher != null) {
			dispatcher.forward(req, resq);
		}
	}

	private void deleteFriend(String friendid) {
		String qstr = "Delete Friend " + " Where FriendID = "
				+ Integer.parseInt(friendid);
		Statement stmt = null;
		try {
			getDBConnection();
			stmt = connect.createStatement();
			stmt.executeUpdate(qstr);

		} catch (SQLException se) {
			System.out.println("SQLException while deleting " + "Friend "
					+ friendid + " : " + se.getMessage());
		} finally {
			closeStatement(stmt);
			closeConnection();
		}
	}

	private void addFriend() {
		String qstr = "Insert Into Friend Values('" +friend_name+"','"+friend_sex+"',"+friend_old+",'"+
		friend_like+"','"+friend_autograph+"')";
		Statement stmt = null;
		try {
			getDBConnection();
			stmt = connect.createStatement();
			stmt.executeUpdate(qstr);

		} catch (SQLException se) {
			System.out.println("SQLException while deleting " + "Friend "
					+ friend_name + " : " + se.getMessage());
		} finally {
			closeStatement(stmt);
			closeConnection();
		}

	}

	private void getDBConnection() {
		try {
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			connect = DriverManager.getConnection("jdbc:odbc:websitedata",
					"sa", "1234");
		} catch (ClassNotFoundException e1) {

		} catch (SQLException e2) {

		}
	}

	private void closeConnection() {
		try {
			if (connect != null && !connect.isClosed()) {
				connect.close();
			}
		} catch (SQLException se) {
			System.out.println("SQLException while closing "
					+ "DB connection  : " + se.getMessage());
		}
	}

	private void closeStatement(Statement stmt) {
		try {
			if (stmt != null) {
				stmt.close();
			}
		} catch (SQLException se) {
			System.out.println("SQLException while closing " + "statement  : "
					+ se.getMessage());
		}
	}

}