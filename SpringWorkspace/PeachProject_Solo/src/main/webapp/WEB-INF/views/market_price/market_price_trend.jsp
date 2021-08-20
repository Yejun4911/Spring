<%@ page contentType="text/html;charset=utf-8"%>
<%@page import="java.io.*"%>
<%@page import="java.net.*"%>
<%@ page import="com.peach.community.test.JsonExam1"%>
<%@ page import="com.peach.community.test.JsonExam2"%>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>index</title>
<!-- -------------------------------jQuery--------------------------- -->
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<!-- ---------------------------------fotorama--------------------------- -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
<link rel="stylesheet" href="css/a.css">

<style>
.board_view {
	border-collapse: collapse;
	border-top: 3px solid #168;
	width: 60%;
	margin-left: auto;
	margin-right: auto;
}

.board_view th {
	color: #168;
	background: #f0f6f9;
	text-align: center;
	width: 20%;
}

.board_view th, .board_view td {
	padding: 10px;
	border: 1px solid #ddd;
}

.board_view th:first-child, .table td:first-child {
	border-left: 0;
}

.board_view th:last-child, .table td:last-child {
	border-right: 0;
}

.board_view tr td:first-child {
	text-align: center;
}
.board_view caption {
	caption-side: bottom;
	display: none;
}
</style>
</head>
<body>
	<div id="header">
		<jsp:include page="/WEB-INF/views/includes/header.jsp" />
	</div>
	<h2> 올해의 시세동향 </h2>
	<%JsonExam1 t1 = new JsonExam1();%>
	<%JsonExam2 t2 = new JsonExam2();%>
	<table class="board_view" border="1">
	<%
		for (int i = 0; i < 30; i++) {
	%>
	<tr><td>
	<%=t1.main().get(i)%>
	<%; %></td><td>
	<%=t2.main().get(i) %>
	<%; %></td>
	<%}%>
	</table>
	<br>
	<Br>
</body>
</html>