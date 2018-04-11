<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Création d'un client</title>
<link type="text/css" rel="stylesheet" href="<c:url value='css/bootstrap.min.css'/>" />
<link type="text/css" rel="stylesheet" href="<c:url value="css/style.css"/>" />
</head>
<body>
	
	<c:import url="./inc/header.jsp"></c:import>
	
	<br /><br /><br /> <br />
	
	<c:import url="./inc/nav.jsp"></c:import>
	
	<div>
		<form method="post" action="createClient">
			<fieldset>
				<legend>Informations client</legend>
				
				<c:import url="./inc/inc_client_form.jsp"></c:import>
				
			</fieldset>
			<input type="submit" value="Valider" /> <input type="reset"
				value="Remettre à zéro" /> <br />
		</form>


	</div>
</body>
</html>