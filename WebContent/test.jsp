<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%-- Boucle calculant le cube des entiers de 0 à 7 et les affichant dans un tableau HTML --%>
	<table>
		<tr>
			<th>Valeur</th>
			<th>Cube</th>
		</tr>

		<c:forEach var="i" begin="0" end="7">

			<tr>
				<td><c:out value="${ i }" /></td>
				<td><c:out value="${ i * i * i}" /></td>
			</tr>
		</c:forEach>

	</table>

	<%
		/* Création de la liste et des données */
		List<Map<String, String>> maListe = new ArrayList<Map<String, String>>();
		Map<String, String> news = new HashMap<String, String>();
		news.put("titre", "Titre de ma première news");
		news.put("contenu", "corps de ma première news");
		maListe.add(news);
		news = new HashMap<String, String>();
		news.put("titre", "Titre de ma seconde news");
		news.put("contenu", "corps de ma seconde news");
		maListe.add(news);
		pageContext.setAttribute("maListe", maListe);
	%>

	<c:forEach items="${maListe}" var="news" varStatus="status">
		<div class="news">
			News N°
			<c:out value="${ status.count }" />
			<div class="titreNews">
				<c:out value="${news.titre}" />
			</div>
			<div class="corpsNews">
				<c:out value="${news.contenu}" />
			</div>
		</div>
	</c:forEach>

	<c:forTokens var="c" items="Salut;les+gens;vous allez+bien:ou pas ?"
		delims=";+:">
		${ c }<br />
	</c:forTokens>


	<br />
	<hr />

	
	

</body>
</html>