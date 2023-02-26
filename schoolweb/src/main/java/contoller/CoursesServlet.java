package contoller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.groupeisi.dao.ICoursesLocal;
import com.groupeisi.entities.Courses;

/**
 * Servlet implementation class CoursesServlet
 */
@WebServlet(urlPatterns = {"/courses/list","/courses/delete","/courses/update","/courses/edit"})
public class CoursesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	private ICoursesLocal cours_dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CoursesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			String action = request.getServletPath();
			if("/courses/list".equals(action)) {
				request.setAttribute("courses", cours_dao.liste());
	
				request.getRequestDispatcher("../WEB-INF/view/courses/list.jsp").forward(request, response);
			}


			if("/courses/edit".equals(action)) {

				int id = Integer.parseInt(request.getParameter("idE"));
				Courses courses = cours_dao.one(id);
				if(courses != null) {
					
					JSONObject obj = new JSONObject();
					obj.put("nameE", courses.getName());
					obj.put("programeE", courses.getPrograme());
					obj.put("id", courses.getId());
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
		if("/courses/list".equals(action)) {
			Courses courses = new Courses();
			String name = request.getParameter("name");
			String programe = request.getParameter("programe");
			
			courses.setName(name);
			courses.setPrograme(programe);
			
			cours_dao.add(courses);
			PrintWriter out = response.getWriter();
			out.println("Cours ajouter avec succés.");
		    response.setStatus(HttpServletResponse.SC_OK);
		}
		if("/courses/update".equals(action)) {
			int id = Integer.parseInt(request.getParameter("idE"));
			Courses courses = cours_dao.one(id);
			String name = request.getParameter("nameE");
			String programe = request.getParameter("programeE");
			
			courses.setName(name);
			courses.setPrograme(programe);
			
			cours_dao.update(courses);
			
			PrintWriter out = response.getWriter();
			out.println("Cours mis à jours avec succés.");
		    response.setStatus(HttpServletResponse.SC_OK);
		}
		if("/courses/delete".equals(action)) {
			int id = Integer.parseInt(request.getParameter("idC"));
		    int a = cours_dao.delte(id);
		    if(a==1){
			PrintWriter out = response.getWriter();
			out.println("Cours supprimer avec succés.");
		    response.setStatus(HttpServletResponse.SC_OK);
		    }
		}
	}

}
