package pack;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	Facade f;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String op = request.getParameter("op");
		
		switch(op) {
		case "inscrire":
			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			String email = request.getParameter("email");
			//String tel = request.getParameter("tel");
			String mot_de_passe = request.getParameter("mot_de_passe");
			boolean reussi = f.ajoutPersonne(nom, prenom, email, mot_de_passe);
			if (reussi) {
				request.getRequestDispatcher("index.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("deposerannonce.html").forward(request, response);
			}
			break;
			
		case "deposer" :
			String titre = request.getParameter("titre");
			float prix = Float.parseFloat(request.getParameter("prix"));
			String description = request.getParameter("description");
			String mail = request.getParameter("mail");
			String ville = request.getParameter("ville");
			String tel = request.getParameter("tel");
			f.ajoutArticle(titre, prix, description, mail, tel, ville);
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
