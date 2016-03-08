package javapackage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {
	private String user;
	private String password;
	private HttpSession session;
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		user = config.getInitParameter("default_user");
		password = config.getInitParameter("default_password");
	}

	public void doGet(HttpServletRequest req, HttpServletResponse resq)
			throws IOException, ServletException {
		doPost(req, resq);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resq)
			throws IOException, ServletException {
		// 获取文本框的值
		String username = req.getParameter("Name");
		String userpassword = req.getParameter("Password");

		// 输入正确跳转主页面
		if (username.equals(user) && userpassword.equals(password)) {
			session = req.getSession();
			session.setAttribute("username", username);
			boolean isLoggedIn=true;
            session.setAttribute("isLoggedIn",String.valueOf(isLoggedIn)); 
			RequestDispatcher dispatcher1 = req
					.getRequestDispatcher("Main.jsp");
			if (dispatcher1 != null) {
				dispatcher1.forward(req, resq);
			}

		} else {
			// 输入不正确时,传递给用户名文本框的值
			if (!username.equals(user)) {
				req.setAttribute("username", "输入用户名不正确");
			} else {
				req.setAttribute("username", user);
			}
			
			// 输入不正确时,传递密码文本框的值
			if (!userpassword.equals(password)) {
				req.setAttribute("userpassword", "输入密码不正确");
			} else {
				req.setAttribute("userpassword", "请重新输入密码");
			}
			
			// 输入不正确跳转登入页面
			RequestDispatcher dispatcher2 = req
					.getRequestDispatcher("Login.jsp");
			if (dispatcher2 != null) {
				dispatcher2.forward(req, resq);
			}
		}
	}
}
