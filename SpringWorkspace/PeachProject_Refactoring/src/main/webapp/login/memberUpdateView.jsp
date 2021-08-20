<%@ page contentType = "text/html;charset=utf-8" %>

<html>
    <head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>index</title>

</head>
 
<body>
<div id="header">
    <jsp:include page="/WEB-INF/views/includes/header.jsp"/>
</div>
	<div class="container">
            <h1>Edit Account</h1>
          <div class="form-content">
            <form action="/login/memberUpdate" method="post">
                <div class="form-group">
                <label for="username">User ID</label>
                <input type="id" id="id" name="id" value="${user.id}" readonly="readonly">
                * Id는 수정이 불가합니다.
              </div>
                <div class="form-group">
                <label for="username">User Password</label>
                <input type="password" id="password" name="password"   value="${user.password}">
              </div>
                <div class="form-group">
                <label for="username">User Name</label>
                <input type="name" id="name" name="name"   value="${user.name}">
              </div>
                <div class="form-group">
                <label for="nickname">Nickname</label>
                <input type="nickname" id="nickname" name="nickname" required="required"  value="${user.nickname}">
              </div>
                <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required="required"  value="${user.email}">
              </div>
                <div class="form-group">
                <label for="phonenumber">Phonenumber</label>
                <input type="phonenumber" id="phonenumber" name="phonenumber" required="required"  value="${user.phonenumber}">
              </div>
                <div class="form-group">
                <label for="addr">Address</label>
                <input type="addr" id="addr" name="addr" required="required"  value="${user.addr}">
              </div>
                <div class="form-group">
                <label for="age">Age</label>
                <input type="age" id="age" name="age" required="required"  value="${user.age}">
              </div>
              <button type="submit" id="submit">회원정보 수정</button>
              <button type="button" onclick="location.href='/' ">취소</button>
            </form>
            </div>
            </div>
    </body>
</html>