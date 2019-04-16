package dev.sgp.entite;
import java.time.LocalDate;

public class Collaborateur {

	String matricule, nom, prenom, adresse, numss, emailPro, photo;
	Boolean active;
	LocalDate ddn;
	public String getMatricule() {
		return matricule;
	}
	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getNumss() {
		return numss;
	}
	public void setNumss(String numss) {
		this.numss = numss;
	}
	public String getEmailPro() {
		return emailPro;
	}
	public void setEmailPro(String emailPro) {
		this.emailPro = emailPro;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public Boolean getActive() {
		return active;
	}
	public void setActive(Boolean active) {
		this.active = active;
	}
	public LocalDate getDdn() {
		return ddn;
	}
	public void setDdn(LocalDate ddn) {
		this.ddn = ddn;
	}

}
