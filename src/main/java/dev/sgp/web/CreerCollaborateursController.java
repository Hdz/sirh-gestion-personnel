package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class CreerCollaborateursController extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;


	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/collab/creerCollaborateurs.jsp").forward(req, resp);

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		String ddn = req.getParameter("ddn");
		String adresse = req.getParameter("adresse");
		String numss = req.getParameter("numss");
		if (!"".equals(nom) && !"".equals(prenom) && !"".equals(ddn) && !"".equals(adresse) &&  !"".equals(numss)) {
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			LocalDate dateN = LocalDate.parse(ddn, formatter) ;
			int id = collabService.listerCollaborateurs().size() + 1;
			Collaborateur collab = new Collaborateur();
			collab.setNom(nom);
			collab.setPrenom(nom);
			collab.setDdn(dateN);
			collab.setAdresse(adresse);
			collab.setNumss(numss);
			collab.setMatricule("M01");
			collab.setEmailPro(prenom+"."+nom+"@societe.com");
			collab.setPhoto("https://images.toucharger.com/img/graphiques/icones/cinema-tv/star-wars/star-wars.6678.gif");
			collab.setActive(true);

			collabService.sauvegarderCollaborateur(collab);			
			
			resp.setContentType("text/html");	
			req.setAttribute("listeNom", collabService.listerCollaborateurs());
			resp.sendRedirect("/sgp/collaborateurs/lister");
		}else {
			resp.sendError(400,"Veuillez remplir les champs manquants");
		}

	}
}
