<html>
	<head>
		<title>Deivison Programmer - Hibernate Exemplos</title>
		<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
		<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<link href='https://fonts.googleapis.com/css?family=Comfortaa' rel='stylesheet' type='text/css'>
		<link href="/layout.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div class="container">
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="/">Hibernate Exemplos</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="/">Inicio</a></li>
					<li><a href="/cadastro">Cadastro</a></li>
					<li><a href="/lista">Lista</a></li>
					<li><a id="sobre_button" href="#sobre">Sobre</a></li>
				</ul>
			</div>
		</nav>
		<br/><br/><br/>
		<h2>Deivison Programmer :: Persistência de Dados com Hibernate + JPA 2</h2>
		<p>Na seção sobre, entro em mais detalhes sobre a tecnologia empregada para client-side e server-side</p>

		<div id="sobre" class="panel panel-primary">
			<div class="panel-heading"><h2>Sobre :: Tecnologia Empregada</h2></div>
			<div class="panel-body">
				<h3>Client-Side:</h3>
				<p>Na camada client-side, utilizo BootStrap 3, FrameWork Javascript JQuery, e em algumas requisições utilizo o Ajax.</p>
				<hr/>
				
				<h3>Server-Side:</h3>
				<p>Na camada server-side, padrões de desenvolvimento e arquitetura MVC estão presentes, <br/>Frameworks de produtividade MVC: Spring-MVC,
				 <br/>Framework de persitência de dados: Hibernate + JPA 2 com relacionamentos 1-1, 1-N, N-N, N-1;
				 <br/>Listener para preparar as conexões de banco de dados quando requisitados;
				 <br/>JSPs com Servlet - tags libs: JSTL e EL foram utilizadas nas listas;
				 </p>
				 <button type="button" class="btn btn-primary">Fechar</button>
			</div>
		</div>
	</div>
	</body>
</html>

<style>
*{
	font-family: 'Comfortaa', cursive;
	font-style: italic;
}

#sobre{display: none;}

p{font-size: 14px;}
</style>

<script>
$("#sobre_button").click(function(){
	$("#sobre").slideToggle(1000);
});

$("button").click(function(){
	$("#sobre").hide(1000);
})
</script>