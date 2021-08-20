<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 정보</title>
<style type="text/css">
h1, h4 {
	text-align: center;
}
#bookTable2 {
	margin: auto auto;
	color:red;
}
#bookTable {
	margin: auto auto;
}

body, p {
	text-align: center;
}

#bookTable th{
	text-align: right;
}

#bookTable td {
	border: 1px solid black;
	padding: 10px 0px;
}

#bookTable tr:nth-child(2) {
	text-align: center;
	background-color: lightgray;
}

#bookTable td {
	width: 100px;
}

#bookTable td:nth-child(2) {
	width: 250px;
}
#bookTable td:nth-child(1) {
	width: 150px;
}
#bookTable td:nth-child(4) {
	width: 150px;
}
#bookTable td:nth-child(3) {
	width: 200px;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
$(function() {	
	$('td:nth-child(2)').hover(function() { //버튼을 클릭하면 Ajax 연결되도록 로직을 작성
		//alert("ajax...");
		var isbn = $(this).attr('id');
		console.log(isbn);
		$.ajax({
			type:"GET",
			url:"bookDetail.do",
			data: {'isbn':isbn},
			dataType:"JSON",
			
			// 서버측에서 보내는 데이터를 받아서 응답하는 callback 함수를 호출 
			success:function(result){
				$('#bookView').html("<table id='bookTable2'><tr><td>도서명</td><td>"+result.book.title+"</td></tr><tr><td>도서번호</td><td>"+result.book.isbn+"</td></tr><tr><td>도서분류</td><td>"+result.book.catalogue+"</td></tr><tr><td>도서국가</td><td>"+result.book.nation+"</td></tr><tr><td>출판일</td><td>"+result.book.publishDate+"</td></tr><tr><td>출판사</td><td>"+result.book.publisher+"</td></tr><tr><td>저자</td><td>"+result.book.author+"</td></tr><tr><td>도서가격</td><td>"+result.book.price+"<td>${b.price}</td></tr><tr><td>도서설명</td><td>"+result.book.description+"</td>	</tr></table>");
			},
			
			//에러가 발생하면 호출되는 callback 함수를 연결..
			error:function(error){
				console.log(error);
			}
		});//ajax
	});//click
}); //ready
</script>
</head>
<body>
	<h1>도서 목록 화면</h1>
	
	<c:if test="${not empty	user}">
		<h4>${user.id}님이 로그인 하셨습니다. <a href="memberLogout.do">로그 아웃</a></h4>
	</c:if>
	<c:choose>
		<c:when test="${empty list}">
			<h4>등록된 도서 목록이 없습니다.</h4>
		</c:when>
		<c:otherwise>
			<table id="bookTable">
				<tr>
					<th colspan="4">
						<form action="bookSearch.do" method="get">
							<select name="searchField" id="searchField">
								<option value="LIST">전체</option>
								<option value="TITLE">도서명</option>
								<option value="PUBLISHER">출판사</option>
								<option value="PRICE">가격</option>
							</select> <input type="text" id="searchText" name="searchText"> <input
								type="submit" value="검색">
						</form>
					</th>
				</tr>
				<tr>
					<td>도서번호</td>
					<td>도서명</td>
					<td>도서분류</td>
					<td>저자</td>
				</tr>
				<c:forEach items="${list}" var="book">
					<tr>
						<td>${book.isbn}</td>
						<td id="${book.isbn}"><a href="bookView.do?isbn=${book.isbn}">${book.title}</a></td>
						<td>${book.catalogue}</td>
						<td>${book.author}</td>
					</tr>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>

	<div id="result"></div>
	<p>
		<a href="bookForm.jsp">도서 등록</a> <a href="index.jsp">메인페이지</a> 
	</p>
	
	<span id="bookView"></span>
</body>
</html>















