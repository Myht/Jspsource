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
public class MessagesServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resq)
			throws IOException, ServletException {
		doPost(req, resq);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resq)
			throws IOException, ServletException {
		// 获取文本框的值
		req.setCharacterEncoding("gb2312");
		resq.setContentType("text/html;charset=gb2312"); 
		String act = req.getParameter("act");
		Connection connect = null;
		Statement state = null;
		if (act.equals("c")) {
			String messagecontent = req.getParameter("messagecontent");
			try {
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				connect = DriverManager.getConnection("jdbc:odbc:websitedata",
						"sa", "1234");
				state = connect.createStatement();
				String updatestr = "Insert Into MessageBoard Values('" + messagecontent + "')";
				state.executeUpdate(updatestr);
			} catch (SQLException se) {
				System.out.println("SQLException while Inserting " + "MessageBoard "
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
					.getRequestDispatcher("/Right_Message_Board.jsp");
			if (dispatcher != null) {
				dispatcher.forward(req, resq);
			}
		} else if (act.equals("d")) {
			String messageid = req.getParameter("messageid");
			String qstr = "Delete MessageBoard " + " Where MessageID = "
					+ messageid;
			try {
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				connect = DriverManager.getConnection("jdbc:odbc:websitedata",
						"sa", "1234");
				state = connect.createStatement();
				state.executeUpdate(qstr);

			} catch (SQLException se) {
				System.out.println("SQLException while deleting " + "Message "
						+ messageid + " : " + se.getMessage());
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					connect.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				try {
					state.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			RequestDispatcher dispatcher = req
					.getRequestDispatcher("/Right_Message_Board.jsp");
			if (dispatcher != null) {
				dispatcher.forward(req, resq);
			}
		}
	}
}
