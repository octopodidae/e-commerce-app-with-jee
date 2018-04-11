<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- 	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Client</title>
<link type="text/css" rel="stylesheet"
	href="<c:url value='css/bootstrap.min.css'/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value='css/style.css'/>" />
</head>
<body>

	<c:import url="./inc/header.jsp"></c:import>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<c:import url="./inc/nav.jsp"></c:import>

	<div id="corps">
		<p class="info">${ form.resultat }</p>
		<p>
			Nom :
			<c:out value="${ client.nom }" />
		</p>
		<p>
			Prénom :
			<c:out value="${ client.prenom }" />
		</p>
		<p>
			Adresse :
			<c:out value="${ client.adresse }" />
		</p>
		<p>
			Numéro de téléphone :
			<c:out value="${ client.telephone }" />
		</p>
		<p>
			Email :
			<c:out value="${ client.email }" />
		</p>
	</div>


</body>
</html>