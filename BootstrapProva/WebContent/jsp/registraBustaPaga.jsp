<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>
			Bootstrap 
		</title>
		
		<link href="../css/bootstrap.min.css" rel="stylesheet">
	</head>

<body>
	<div class="container-fluid">
		<!-- header -->
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<nav class="navbar navbar-inverse">
					<div class="container-fluid">
						<div class="navbar-header">
							<a class="navbar-brand" href="#">
								<img alt="Brand" src="../img/alfasoft.gif" width="100px">
							</a>
						</div>
					</div>
				</nav>
			</div>
			<div class="col-md-1"></div>
		</div>
		
		<!-- Form -->
		
		<div class="col-md-1"> </div>
			<div class="col-md-3">
				<div class="row">
					<div class="thumbnail">
				      	<img src="../img/clown.jpg" alt="...">
				      	<div class="caption">
					        <h3>Profilo</h3>
					        <p>Entra nel mio profilo</p>
					        <p><a href="#" class="btn btn-primary" role="button">Aggiungi</a> <a href="#" class="btn btn-primary" role="button">Profilo</a></p>
				     	</div>
				    </div>
			    </div>
			    <div class="row">
		    		<ul class="list-group">  
	 				  	<li class="list-group-item">Home</li>  
	 				  	<li class="list-group-item">Registrazione</li>  
	  				  	<li class="list-group-item">Lista Busta Paga</li> 
	 				  	<li class="list-group-item">Trova busta</li> 
	 			  		<li class="list-group-item">Logout</li> 
 					</ul> 
			    </div>
			</div>
			<div class="col-md-7">
				<div class="panel panel-primary">
					<div class="panel-heading">
    					<h3 align="center" class="panel-title">Form registrazione</h3>
  					</div>
					<div class="panel-body">
						<form action="doCreaPdf.jsp" method="POST">
							<div class="form-group">
								<label for="Nome">Nome</label>
								<input type="text" class="form-control" name="nome" id="nome" placeholder="Nome">
							</div>
							<div class="form-group">
								<label for="Cognome">Cognome</label>
								<input type="text" class="form-control" name="cognome" id="cognome" placeholder="cognome">
							</div>
							<div class="form-group">
								<label for="Importo">Importo</label>
								<input type="text" class="form-control" name="importo" id="importo" placeholder="Importo">
							</div>
							<div class="form-group">
								<label for="Data">Data Emissione</label>
								<input type="text" class="form-control" name="data" id="data" placeholder="Data">
							</div>
							
							<div align="center"><button type="submit" class="btn btn-default">Crea PDF</button></div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-1"></div>
		
<!-- 		<div class="row"> -->
<!-- 			<div class="col-md-1"></div> -->
<!-- 			<div class="col-md-3"> -->
<!-- 				<ul class="list-group">  -->
<!-- 				  	<li class="list-group-item">Home</li>  -->
<!-- 				  	<li class="list-group-item">Registrazione</li>  -->
<!--  				  	<li class="list-group-item">Lista Busta Paga</li> -->
<!-- 				  	<li class="list-group-item">Trova busta</li> -->
<!-- 			  		<li class="list-group-item">Logout</li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 		</div> -->
	</div>
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>

</html>