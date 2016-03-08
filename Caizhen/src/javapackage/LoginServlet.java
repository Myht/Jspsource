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
		// ��ȡ�ı����ֵ
		String username = req.getParameter("Name");
		String userpassword = req.getParameter("Password");

		// ������ȷ��ת��ҳ��
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
			// ���벻��ȷʱ,���ݸ��û����ı����ֵ
			if (!username.equals(user)) {
				req.setAttribute("username", "�����û�������ȷ");
			} else {
				req.setAttribute("username", user);
			}
			
			// ���벻��ȷʱ,���������ı����ֵ
			if (!userpassword.equals(password)) {
				req.setAttribute("userpassword", "�������벻��ȷ");
			} else {
				req.setAttribute("userpassword", "��������������");
			}
			
			// ���벻��ȷ��ת����ҳ��
			RequestDispatcher dispatcher2 = req
					.getRequestDispatcher("Login.jsp");
			if (dispatcher2 != null) {
				dispatcher2.forward(req, resq);
			}
		}
	}
}
