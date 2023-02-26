package contoller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.groupeisi.dao.ICoursesLocal;
import com.groupeisi.dao.IInscriptionLocal;
import com.groupeisi.dao.IStudentLocal;
import com.groupeisi.dao.IYearLocal;
import com.groupeisi.entities.Inscription;

/**
 * Servlet implementation class InscriptionServlet
 */
@WebServlet(urlPatterns = {"/inscription/list","/inscription/liste","/inscription/delete","/inscription/update","/inscription/edit"})
public class InscriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	private IInscriptionLocal inscription_dao;
	@EJB
	private IYearLocal year_dao;
	@EJB
	private ICoursesLocal cours_dao;
	@EJB
	private IStudentLocal student_dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscriptionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getServletPath();
		
		if("/inscription/list".equals(action)) {

			
			request.setAttribute("years", year_dao.liste());
			request.setAttribute("courses", cours_dao.liste());
			request.setAttribute("students", student_dao.liste());
			request.setAttribute("inscriptions", inscription_dao.liste());

			request.getRequestDispatcher("../WEB-INF/view/inscription/list.jsp").forward(request, response);
			
			/* 
			 

			request.setAttribute("years", year_dao.liste());
			request.setAttribute("courses", cours_dao.liste());
			request.setAttribute("students", student_dao.liste());
			request.getRequestDispatcher("../WEB-INF/view/inscription/liste.jsp").forward(request, response);
			*/
			
		}
		/*
		if("/inscription/liste".equals(action)) {
			
			  
			List<Inscription> inscriptions = inscription_dao.liste();
			Gson gson = new Gson(); // crée un objet Gson pour transformer les données en format JSON
	        String jsonData = gson.toJson(inscriptions); // transforme les données en JSON
	        
	        response.setContentType("application/json");
	        response.setCharacterEncoding("UTF-8");
	        response.getWriter().write(jsonData);
	        
			
		}	
		 */
		if("/inscription/edit".equals(action)) {

			int id = Integer.parseInt(request.getParameter("idE"));
			Inscription inscription = inscription_dao.one(id);
			if(inscription != null) {
				
					JSONObject obj = new JSONObject();
					obj.put("detailsE", inscription.getDetails());
					obj.put("id", inscription.getId());
					StringWriter out = new StringWriter();
				    obj.writeJSONString(out);
				      
				      String jsonText = out.toString();

						PrintWriter pout = response.getWriter();
						pout.println(jsonText);
				      System.out.print(jsonText);
				
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String action = request.getServletPath();
		if("/inscription/list".equals(action)) {
			Inscription inscription = new Inscription();
			
			String details = request.getParameter("details");
			String courses = request.getParameter("courses");
			String student = request.getParameter("student");
			String year = request.getParameter("year");
			
			inscription.setDetails(details);
			inscription.setCourses(cours_dao.one(Integer.parseInt(courses)));
			inscription.setStudent(student_dao.one(Integer.parseInt(student)));
			inscription.setYear(year_dao.one(Integer.parseInt(year)));
			
			inscription_dao.add(inscription);
			PrintWriter out = response.getWriter();
			out.println("Inscription ajouter avec succés.");
		    response.setStatus(HttpServletResponse.SC_OK);
			
		}
		if("/inscription/update".equals(action)) {
			int id = Integer.parseInt(request.getParameter("idE"));
			Inscription inscription = inscription_dao.one(id);
			//System.out.println(id);
			
			String details = request.getParameter("detailsE");
			String courses = request.getParameter("coursesE");
			String student = request.getParameter("studentE");
			String year = request.getParameter("yearE");
			

			inscription.setDetails(details);
			inscription.setCourses(cours_dao.one(Integer.parseInt(courses)));
			inscription.setStudent(student_dao.one(Integer.parseInt(student)));
			inscription.setYear(year_dao.one(Integer.parseInt(year)));
			
			inscription_dao.update(inscription);
			
			PrintWriter out = response.getWriter();
			out.println("Inscription mis à jours avec succés.");
		    response.setStatus(HttpServletResponse.SC_OK);
			
		}
		if("/inscription/delete".equals(action)) {
			int id = Integer.parseInt(request.getParameter("idI"));
		    int a = inscription_dao.delte(id);
		    if(a==1){
			PrintWriter out = response.getWriter();
			out.println("Inscription supprimer avec succés.");
		    response.setStatus(HttpServletResponse.SC_OK);
		    }
		}
		
	}
}
