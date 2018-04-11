<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Commande</title>
<link type="text/css" rel="stylesheet" href="<c:url value='css/bootstrap.min.css'/>" />
<link type="text/css" rel="stylesheet"
	href="<c:url value='css/style.css'/>" />
</head>
<body>

	<c:import url="./inc/header.jsp"></c:import>
	
	<br /><br /><br /><br /><br /><br /><br /><br />
	
	<c:import url="./inc/nav.jsp"></c:import>
	
	<p class="info">${ message }</p>

	<c:if test="${ !erreur }">
	
		<h3>Command :</h3>
		<p>
			<c:out value="${ commande.date_cmd }" />
		</p>
		<p>
			<c:out value="${ commande.mode_paiement }" />
		</p>
		<p>
			<c:out value="${ commande.montant }" />
		</p>
		<p>
			<c:out value="${ commande.statutPaiement }" />
		</p>
		<p>
			<c:out value="${ commande.modeLivraison }" />
		</p>
		<p>
			<c:out value="${ commande.statutLivraison }" />
		</p>

		<h3>Client for this command :</h3>
		<p>
			<c:out value="${ commande.client.nom }" />
		</p>
		<p>
			<c:out value="${ commande.client.prenom }" />
		</p>
		<p>
			<c:out value="${ commande.client.adresse }" />
		</p>
		<p>
			<c:out value="${ commande.client.email }" />
			
		</p>
	</c:if>



</body>
</html>