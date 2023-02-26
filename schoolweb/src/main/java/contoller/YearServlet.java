package contoller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.groupeisi.dao.IYearLocal;
import com.groupeisi.entities.Year;


/**
 * Servlet implementation class YearServlet
 */
@WebServlet(urlPatterns = {"/year/list","/year/delete"})
public class YearServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	@EJB
	private IYearLocal year_dao;
    public YearServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			request.setAttribute("years", year_dao.liste());

			request.getRequestDispatcher("../WEB-INF/view/year/list.jsp").forward(request, response);
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		if("/year/list".equals(action)) {
			Year year = new Year();
			String name = request.getParameter("name");
			year.setName(name);
			year_dao.add(year);
			PrintWriter out = response.getWriter();
			out.println("Année ajoutée avec succés.");
		}
		if("/year/delete".equals(action)) {
			int id = Integer.parseInt(request.getParameter("idY"));
		    int a = year_dao.delte(id);
		    if(a==1){
			PrintWriter out = response.getWriter();
			out.println("Année supprimer avec succés.");
		    response.setStatus(HttpServletResponse.SC_OK);
		    }
		}
		//request.setAttribute("years", year_dao.liste());
		//request.getRequestDispatcher("../WEB-INF/view/year/list.jsp").forward(request, response);
	}

}
