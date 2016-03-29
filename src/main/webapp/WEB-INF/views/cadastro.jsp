<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
					<a class="navbar-brand" href="#">Hibernate Exemplos</a>
				</div>
				<ul class="nav navbar-nav">
					<li><a href="#">Inicio</a></li>
					<li class="active"><a href="/cadastro">Cadastro</a></li>
					<li><a href="/lista">Lista</a></li>
					<li><a id="sobre_button" href="/#sobre">Sobre</a></li>
				</ul>
			</div>
		</nav>
		<br/><br/><br/>
		<h2>Bem Vindo a Sessão de Cadastro</h2>
		<p>Nesta sessão é feito o cadastro dos objetos persitidos na base de dados com hibernate</p>
		
		<c:if test="${not empty sucesso}">
			<div class="alert alert-success">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>Sucesso!</strong> ${sucesso}
			</div>
		</c:if>

		<form role="form" action="/cadastro" method="post">
			<input type="hidden" name="option" value="cadastrar">
			<div class="form-group">
				<label>Atividade:</label>
				<input type="text"	class="form-control" name="nome" placeholder="Nome da Atividade">
			</div>
			<div class="form-group">
				<label>Descrição:</label> 
				<textarea class="form-control" name="descricao" placeholder="Descreva aqui esta atividade!"></textarea>
			</div>
			
			<button type="reset" class="btn btn-default">Limpar</button>
			<button type="submit" class="btn btn-default">Cadastrar</button>
		</form>


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
