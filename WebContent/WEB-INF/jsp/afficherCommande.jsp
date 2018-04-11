<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Commande</title>
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

	<p class="info">${ message }</p>

	<div id="corps">
		<p class="info">${ form.resultat }</p>
		<p>Client</p>
		<p>
			Nom :
			<c:out value="${ commande.client.nom }" />
		</p>
		<p>
			Prénom :
			<c:out value="${ commande.client.prenom }" />
		</p>
		<p>
			Adresse :
			<c:out value="${ commande.client.adresse }" />
		</p>
		<p>
			Numéro de téléphone :
			<c:out value="${ commande.client.telephone }" />
		</p>
		<p>
			Email :
			<c:out value="${ commande.client.email }" />
		</p>
		<p>Commande</p>
		<p>
			Date :
			<c:out value="${ commande.date_cmd }" />
		</p>
		<p>
			Montant :
			<c:out value="${ commande.montant }" />
		</p>
		<p>
			Mode de paiement :
			<c:out value="${ commande.mode_paiement }" />
		</p>
		<p>
			Statut du paiement :
			<c:out value="${ commande.statutPaiement }" />
		</p>
		<p>
			Mode de livraison :
			<c:out value="${ commande.modeLivraison }" />
		</p>
		<p>
			Statut de la livraison :
			<c:out value="${ commande.statutLivraison }" />
		</p>
	</div>



</body>
</html>