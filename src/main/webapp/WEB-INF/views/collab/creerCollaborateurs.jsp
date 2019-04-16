<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-4.3.1-dist/css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<title>Création d'un collaborateur</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#">LOG</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item active">
						<a class="nav-link" href="#">Collaborateurs <span class="sr-only">(current)</span></a>
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
		
		<div class="row">
			<div class="col">
				<h2>Les collaborateurs</h2>
			</div>
		</div>
		<form>
			<div class="container-fluid">
				
			</form>
			<div class="container">
				<div id="wrapper" class="container">
					
					<form id="form-work" class="" name="form-work" action="#" method=post>
						
						<fieldset>
							
							<div class="form-group">
								<div class="col-md-6">
									<label class="control-label" for="Nom">Nom</label>
									<input name="nom" class="form-control" placeholder="Nom" type="text" id="nom">
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-6">
									<label class="control-label" for="Prénom">Prénom</label>
									<input name="prenom" class="form-control" placeholder="Prénom" type="text" id="pre">
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-6">
									<label class="control-label" for="tel">Téléphone</label>
									<div class="input-group">
										<span class="input-group-addon mt-1 mr-1">+33</span>
										<input name="tel" class="form-control" placeholder="0000000" type="text" id="tel">
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-6">
									<label class="control-label" for="date">Date</label>
									<div class="input-group">
										<input name="ddn" class="form-control" type="date">
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-6">
									<label class="control-label" for="Adresse">Adresse</label>
									<input name="adresse" class="form-control" placeholder="Adresse" type="textarea" id="Adresse">
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-6">
									<label class="control-label" for="Numéro de sécurité sociale">Numéro de sécurité sociale</label>
									<input name="numss" class="form-control" placeholder="Numéro de sécurité sociale" type="textarea" id="ss">
								</div>
							</div>
							
							<div class="form-group">
								<div class="col-md-2 ">
									<button type="submit" class="btn btn-primary btn-lg btn-block info float">Send</button>
									<!-- Button trigger modal -->
									<!-- Modal -->
									
								</div>
							</div>
						</fieldset>
					</form>
				</div>
</body>
</html>