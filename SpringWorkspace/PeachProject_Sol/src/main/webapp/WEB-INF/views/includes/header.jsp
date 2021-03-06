<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"                crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J"         crossorigin="anonymous"></script>
    <style>
     .ui-page-theme-a  a:visited {
     COLOR:171717;}
     .ui-page-theme-a a {
     color:535454;}
    
    </style>    
</head>
<body>
    <div id ="header">  
    <!---------------------navbar------------------------>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/"> <img src="/resources/peach_main.png" width="40px"/></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/"> Home<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="intro" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          ??????
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/intro/intro">????????? ??????</a>
          <a class="dropdown-item" href="/intro/vitamin">????????????</a>
          <a class="dropdown-item" href="/intro/howToPick">????????? ???</a>
        </div>
      </li>
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="/market_price/today_market_price" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          ??????
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href=/market_price/today_market_price">????????? ??????</a>
          <a class="dropdown-item" href="/market_price/market_price_trend">????????????</a>
          <a class="dropdown-item" href="/market_price/market_forecast">????????????</a>
        </div>
      </li>
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="purchase" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          ??????
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/Online/online?num=1">?????????</a>
          <a class="dropdown-item" href="/Offline/offline?num=1">????????????</a>
          
        </div>
      </li><li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="community" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          ????????????
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/community/listPageSearch?num=1">???????????????</a>
        </div>
        
      </li>
      
      <c:if test="${user!=null}">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="purchase" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          ???????????????
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/mypage/mystore">??? ??????</a>
          <a class="dropdown-item" href="/login/memberUpdateView">??? ?????? ??????</a>
          <a class="dropdown-item" href="/mypage/mywrite?num=1&searchType=writer&keyword=${user.id}">?????? ??? ???</a>
          
        </div>
      </li>
      </c:if>
    </ul>
    
    <form class="form-inline my-2 my-lg-0">
      <c:if test="${user!=null}">
      	<a class="navbar-brand" href="/BusinessLicense/B_Registration">????????? ??????</a>
      </c:if>
      <c:if test="${user==null}">
      	<a class="navbar-brand" href="/login/loginForm">?????????</a>
      	<a class="navbar-brand" href="/login/signupForm">????????????</a>
      </c:if>
      <c:if test="${user!=null}">
      	<a class="navbar-brand" href="/login/logout">????????????</a>
      </c:if>
    </form>
  </div>
</nav>
</div>

</body>
</html>