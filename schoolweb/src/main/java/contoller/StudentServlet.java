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

import com.groupeisi.dao.IStudentLocal;
import com.groupeisi.entities.Student;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet(urlPatterns = {"/student/list","/student/delete","/student/update","/student/edit"})
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	private IStudentLocal student_dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		
		if("/student/list".equals(action)) {
			request.setAttribute("students", student_dao.liste());

			request.getRequestDispatcher("../WEB-INF/view/student/list.jsp").forward(request, response);
		}

			if("/student/edit".equals(action)) {

				int id = Integer.parseInt(request.getParameter("idE"));
				Student student = student_dao.one(id);
				if(student != null) {
					
					JSONObject obj = new JSONObject();
					obj.put("birthdayE", student.getBirthday());
					obj.put("firstnameE", student.getFirstname());
					obj.put("lastnameE", student.getLastname());
					obj.put("phoneE", student.getPhone());
					obj.put("id", student.getId());
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
		if("/student/list".equals(action)) {
			Student student = new Student();
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String birthday = request.getParameter("birthday");
			String phone = request.getParameter("phone");
			
			student.setBirthday(birthday);
			student.setFirstname(firstname);
			student.setLastname(lastname);
			student.setPhone(phone);
			student_dao.add(student);
			PrintWriter out = response.getWriter();
			out.println("Etudiant ajouter avec succés.");
		    response.setStatus(HttpServletResponse.SC_OK);
	
		}
		if("/student/update".equals(action)) {
			int id = Integer.parseInt(request.getParameter("idE"));
			Student student = student_dao.one(id);
			String firstname = request.getParameter("firstnameE");
			String lastname = request.getParameter("lastnameE");
			String birthday = request.getParameter("birthdayE");
			String phone = request.getParameter("phoneE");
			
			student.setBirthday(birthday);
			student.setFirstname(firstname);
			student.setLastname(lastname);
			student.setPhone(phone);
			student_dao.update(student);
			PrintWriter out = response.getWriter();
			out.println("Etudiant mis à jours avec succés.");
		    response.setStatus(HttpServletResponse.SC_OK);
	
			
		}
		if("/student/delete".equals(action)) {
			int id = Integer.parseInt(request.getParameter("idS"));
		    int a = student_dao.delte(id);
		    if(a==1){
			PrintWriter out = response.getWriter();
			out.println("Etudiant supprimer avec succés.");
		    response.setStatus(HttpServletResponse.SC_OK);
		    }
		}
	}

}
