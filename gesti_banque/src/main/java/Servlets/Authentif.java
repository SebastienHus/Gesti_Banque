package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.AuthentificationController;

/**
 * Servlet implementation class Authentif
 */
public class Authentif extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Authentif() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AuthentificationController authC = new AuthentificationController();
	
		if(authC.authentif(request.getParameterMap().containsKey("idUser") ? request.getParameter("idUser") : "", request.getParameterMap().containsKey("mpUser")? request.getParameter("mpUser"): ""))
			System.out.println("authentif réussie");
		else
			System.out.println("Authentif échouée");
	}

}
