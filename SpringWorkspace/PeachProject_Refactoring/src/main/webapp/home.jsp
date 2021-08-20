<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<div id="header">
    <jsp:include page="/WEB-INF/views/includes/header.jsp"/>
</div>

<div class="tab-content">
  <div class="tab-pane fade show active" id="qwe">
    <p></p>
      <div class="album py-5 bg-light">
          <div class="container">
          
          <div class="row">
               <jsp:include page="/WEB-INF/views/includes/graph.jsp"/>
  			<hr size=20px; width="100%">    
  			 
            <div class="col-md-6">
            <h3 align="center">물복 VS 딱복</h3>
            
            </div>
            <div class="col-md-6">
            <h3 align="center">오늘의 복숭아 시세예측</h3>
            
            </div>
  			<hr size=20px; width="100%">     
  			
  			<div class="col-md-6">
  			<h2 align="center"> HOT 게시판 </h2>
            <div class="card mb-4 box-shadow">
  			<table>
    			<thead>
    				<tr>
            			<th>제목</th>
            			<th>날짜</th>
         			</tr>
    			</thead>
    			<tbody>
    			
					<c:forEach items="${list}" var="list">
         			<tr>
            			<td><a href="/community/view?bno=${list.bno}">${list.title}</a></td>
            			<td>${list.regDate}</td>
            			<td>${list.viewCnt}</td>
        			</tr>
        			</c:forEach>
    			</tbody>	
			</table>
			</div>
			</div>
			<div class="col-md-6">
  			<h2 align="center"> 최신글 </h2>
            <div class="card mb-4 box-shadow">
  			<table>
    			<thead>
    				<tr>
            			<th>제목</th>
            			<th>날짜</th>
         			</tr>
    			</thead>
    			<tbody>
					<c:forEach items="${list2}" var="list2">
         			<tr>
            			<td><a href="/community/view?bno=${list2.bno}">${list2.title}</a></td>
            			<td>${list2.regDate}</td>
            			<td>${list2.viewCnt}</td>
        			</tr>
        			</c:forEach>
    			</tbody>
			</table>
			
			</div>
          </div>
        </div>
        </div>
        </div>
        </div>
        
</body>
</html>
