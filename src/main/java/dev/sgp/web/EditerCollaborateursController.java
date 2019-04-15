package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateursController extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// recupere la valeur d'un parametre dont le nom est avecPhoto
		String matricule = req.getParameter("matricule");
		String titre = req.getParameter("titre");
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");

		resp.setContentType("text/html");

		if((matricule != null) && (titre != null) && (nom != null) && (prenom != null)) {
			resp.setStatus(201);
			resp.getWriter().write("<h1>Création d'un collaborateur</h1>"
					+ "<ul>"
					+ "<li>Matricule="+matricule+"</li>"
					+ "<li>titre="+titre+"</li>"
					+ "<li>nom="+nom+"</li>"
					+ "<li>prenom="+prenom+"</li>"
					+ "</ul>"

					);
		}
		
	
		else if((matricule == null) && (titre != null) && (nom != null) && (prenom != null)){
			resp.sendError(400, "Veuillez renseigner un Matricule");
		}
		
		else if((matricule != null) && (titre == null) && (nom !=  null) && (prenom !=  null)){
			resp.sendError(400, "Veuillez renseigner un Titre");
		}
		else if((matricule !=  null) && (titre !=  null) && (nom == null) && (prenom !=  null)){			
			resp.sendError(400, "Veuillez renseigner un Nom");
		}
		else if((matricule !=  null) && (titre !=  null) && (nom !=  null) && (prenom == null)){			
			resp.sendError(400, "Veuillez renseigner un Prenom");
		}
		
		//recupere la valeur d'un parametre dont le nom est departement

		
		//code HTML ecrit dans le corps de la reponse
		

	}
}
