package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DBFormServlet")
public class DBFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DBFormServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dbID = request.getParameter("id");
		String dbPw = request.getParameter("pw");
		response.setContentType("text/html;charset=utf8");
		if(dbID.equals("root") && dbPw.equals("1234")) {
			response.sendRedirect("Main");
		}else {
			PrintWriter printer = response.getWriter();
			printer.println("<h1>데이터베이스의 정보가 일치하지 않습니다. 관리자에게 문의하세요.</h1>");
			printer.println("<a href='index.jsp'>처음으로 돌아가기</a>");
		}	
	}
	

}
