<%@page import="java.util.List"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>SGP - App</title>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-4.3.1-
dist/css/bootstrap.css">
</head>
<body>
<!-- Navigation -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="index.html">LOG</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item active">
						<a class="nav-link" href="index.html">Collaborateurs <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Statistiques</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Activités</a>
					</li>
				</ul>
			</div>
		</nav>
		<br />
		<div class="text-right">
				<a href="ajoutcollaborateurs.html"><button class="btn btn-outline-success pull-r my-2 my-sm-0 " type="submit">Ajouter un nouveau collaborateur</button></a>
			</div>
		<div class="container">
			
			
			<div class="row">
				<div class="col">
					<h2>Les collaborateurs</h2>
				</div>
			</div>
			<form>
				<div class="container-fluid">
					<div class="row align-items-start">
						<div class="col-5">
							<p>Rechercher un nom ou un prénom qui commence par :</p>
						</div>
						<div class="col-2">
							<input class="form-control my-2 my-sm-0" type="search" placeholder="Rechercher" aria-label="Rechercher">
						</div>
						<div class="col-2">
							<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Rechercher</button>
						</div>
						<div class="col-3">
							
								<div class="input-group-prepend">
									
										<input type="checkbox" aria-label="">
											
								<label class="pl-1">Voir les collaborateurs désactivés</label>
								</div>
							
						</div>
					</div>
					<div class="form-group mx-sm 3 mb-2">
						
						
						<div class="input-group mb-3">
						</div>
						<br />
						<div class="input-group">
							<label class="my-1 mr-2" for="inlineFormCustomSelectPref">Filtrer par département :</label>
							<select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
								<option selected>Comptabilité...</option>
								<option value="1">Ressources Humaines</option>
								<option value="2">Informatique</option>
							</select>
						</div>
						
					</div>
				</div>
			</div>
		</form>
		<section class="container-fluid">
		<div class="card-deck mt-5 mb-3">
			<%
	            List<Collaborateur> listeCollaborateurs = (List<Collaborateur>) request.getAttribute("listeNom");
	            for (Collaborateur collab : listeCollaborateurs) {
	        %>
			<div class="card bg-light">
				<div class="card-header"><%=collab.getNom().toUpperCase() + " "%><%=collab.getPrenom()%></div>
				<div class="card-body">
					<div class="row">
						<div class="col-md-4">
							<img class="rounded" src="<%=request.getContextPath()%>/img/64x64-6678.gif" height="64" width="64">
						</div>
						<div class="col-lg-8 col-md-12">
							<div class="row">
								<div class="col-md-6 card-text">
									<p>Date de Naissance:</p>
									<p>Email:</p>
									<p>Matricule:</p>
								</div>
								<div class="col-md-6">
									<p><%=collab.getDdn()%></p>
									<p><%=collab.getEmailPro()%></p>
									<p><%=collab.getMatricule()%></p>
								</div>
							</div>
						</div>
					</div>
					<div class="card-footer bg-lignt">
						<button class="btn btn-primary float-right">Editer</button>
					</div>
				</div>
			</div>
			<%
	            }
	        %>
		</div>
	</section>
	</main>	
	<script type="text/javascript"src="<%=request.getContextPath()%>/bootstrap-4.3.1-dist/js/bootstrap.bundle.js"></script>
				
				<!-- Optional JavaScript -->
				<!-- jQuery first, then Popper.js, then Bootstrap JS -->
				<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
				<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
			


</body>
</html>