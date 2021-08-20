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
            <h3>오늘의 복숭아 상태</h3>
              <div class="card mb-4 box-shadow">
              <c:if test="${Price.price>'21163'}">
              <img src="/resources/peach_good.png" width="150px">
              </c:if>
              <c:if test="${Price.price<'21163' && Price.price>'20787'}">
              <img src="/resources/peach_avg.png">
              </c:if>
              <c:if test="${Price.price<'20787'}">
              <img src="/resources/peach_bad.png">
              </c:if>
              </div>
            </div>
            <div class="col-md-6">
            <h3>오늘의 복숭아 시세예측</h3>
              <div class="card mb-4 box-shadow">
                
                <div class="card-body">
                  <p class="card-text">${Price.price}</p>
                  <div class="d-flex justify-content-between align-items-center">
                  </div>
                </div>
            </div>
          </div>
  			<hr size=20px; width="100%">     
  			
  			<div class="col-md-6">
  			<h2> hot </h2>
            <div class="card mb-4 box-shadow">
  			<table>
    			<thead>
    				<tr>
            			<th>title</th>
            			<th>Date</th>
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
  			<h2> 최신글 </h2>
            <div class="card mb-4 box-shadow">
  			<table>
    			<thead>
    				<tr>
            			<th>title</th>
            			<th>Date</th>
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
