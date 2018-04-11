<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Création d'une commande</title>
<link type="text/css" rel="stylesheet" href="<c:url value='css/bootstrap.min.css'/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="css/style.css"/>" />
</head>
<body>
	
	<c:import url="./inc/header.jsp"></c:import>	
	
	<br /> <br /><br /> <br />
	
	<c:import url="./inc/nav.jsp"></c:import>

	<div>
		<form method="post" action="createCommand">
			<fieldset>
				<legend>Informations client</legend>
				<c:import url="./inc/inc_client_form.jsp"></c:import>
			</fieldset>
			<fieldset>
				<legend>Informations commande</legend>

				<label for="dateCommande">Date <span class="requis">*</span></label>
				<input type="text" id="dateCommande" name="dateCommande" value=""
					size="20" maxlength="20" disabled /> <br /> <label
					for="montantCommande">Montant <span class="requis">*</span></label>
				<input type="text" id="montantCommande" name="montantCommande"
					value="" size="20" maxlength="20" /> <br /> <label
					for="modePaiementCommande">Mode de paiement <span
					class="requis">*</span></label> <input type="text"
					id="modePaiementCommande" name="modePaiementCommande" value=""
					size="20" maxlength="20" /> <br /> <label
					for="statutPaiementCommande">Statut du paiement</label> <input
					type="text" id="statutPaiementCommande"
					name="statutPaiementCommande" value="" size="20" maxlength="20" />
				<br /> <label for="modeLivraisonCommande">Mode de livraison
					<span class="requis">*</span>
				</label> <input type="text" id="modeLivraisonCommande"
					name="modeLivraisonCommande" value="" size="20" maxlength="20" />
				<br /> <label for="statutLivraisonCommande">Statut de la
					livraison</label> <input type="text" id="statutLivraisonCommande"
					name="statutLivraisonCommande" value="" size="20" maxlength="20" />
				<br />
			</fieldset>
			<input type="submit" value="Valider" /> <input type="reset"
				value="Remettre à zéro" /> <br />
		</form>

		

	</div>
</body>
</html>