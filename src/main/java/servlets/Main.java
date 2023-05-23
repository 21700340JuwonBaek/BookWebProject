package servlets;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletContext;
import dao.BookDAO;
import vo.Book;


@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Main() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * BestSeller
		 * Random 5 books 반환. 
		 * */
		BookDAO bookDao = new BookDAO();
		List<Book> bestSellerList = bookDao.getBestSeller();
		List<Book> allBook = bookDao.getAllBook();
		List<Book> randomBooks = new LinkedList();
		
		int count = 5;
		int[] randomNumSet = new int[count];
		Random random = new Random();
		
		for(int i = 0; i < count; i++) {
			randomNumSet[i] = random.nextInt();
			
			for(int j = 0; j < i; j ++) {
				if(randomNumSet[i] == randomNumSet[j]) i--;
			}
		}
		
		for(int i : randomNumSet) randomBooks.add(allBook.get(i));
		
		request.setAttribute("bestSeller", bestSellerList);
		request.setAttribute("randomBooks", randomBooks);
		ServletContext context =getServletContext();
		RequestDispatcher dispatcher = context.getRequestDispatcher("main.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
