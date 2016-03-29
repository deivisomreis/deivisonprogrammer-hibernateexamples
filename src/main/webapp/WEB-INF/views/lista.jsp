<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
					<li ><a href="/">Inicio</a></li>
					<li><a href="/cadastro">Cadastro</a></li>
					<li class="active"><a href="/lista">Lista</a></li>
					<li><a id="sobre_button" href="/#sobre">Sobre</a></li>
				</ul>
			</div>
		</nav>
		<br/><br/><br/>
		<h2>Cadastrados</h2>
		
		<c:if test="${not empty removido}">
			<div class="alert alert-danger">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>Removido!</strong> ${removido}
			</div>
		</c:if>
		
		<c:if test="${not empty atualizado}">
			<div class="alert alert-success">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>Sucesso!</strong> ${atualizado}
			</div>
		</c:if>

		<table class="table table-bordered">
			<caption>Cadastrados</caption>
			<thead>
				<tr>
					<th>ID</th>
					<th>Atividade</th>
					<th>Data Inscrição</th>
					<th>Observação</th>
					<th>Concluido</th>
					<th>Finalizado (Dt)</th>
					<th colspan="3" align="center">Opções</th>					
				</tr>
			</thead>
			<tbody>
				<c:if test="${not empty lista}">
					<c:forEach var="agenda" items="${lista}">	
						<tr>
							<td>${agenda.id}</td>
							<td>${agenda.nome}</td>
							<td><fmt:formatDate value="${agenda.dataInscricao}" pattern="dd/MM/yyyy HH:mm:ss" /></td>
							<td>${agenda.descricao}</td>
							<td>
								<c:if test="${agenda.status == false}">Aberto <a href="/finalizar?id=${agenda.id}">Finalizar</a></c:if>
								<c:if test="${agenda.status == true}">Concluido</c:if>
							</td>
							<td><fmt:formatDate value="${agenda.dataFinalizacao}" pattern="dd/MM/yyyy HH:mm:ss" /></td>
							<td><a href="/editar?id=${agenda.id}"><button type="button" class="btn btn-primary">Editar</button></a></td>
							<td><a href="/mostrar?id=${agenda.id}"><button type="button" class="btn btn-info">Ver</button></a></td>
							<td><a href="/remover?id=${agenda.id}"><button type="button" class="btn btn-danger">Remover</button></a></td>
						</tr>
					</c:forEach>
				</c:if>
				
				<c:if test="${empty lista}">
					<tr>
						<td colspan="9" align="center"><a href="/cadastro">Cadastrar Nova Atividade</a></td>
					</tr>
				</c:if>
			</tbody>
		</table>

		<ul class="pagination">
		<c:if test="${paginas >= 1 }">
			<c:forEach begin="0"  end="${paginas}" var="pagina" >
				<li><a href="/lista/?id=${pagina}">${pagina + 1}</a></li>
			</c:forEach>
		</c:if>
		</ul>

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