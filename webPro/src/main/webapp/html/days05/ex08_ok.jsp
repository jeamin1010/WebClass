<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <!-- 겟 방식 사용  -->
<!--http://localhost/webPro/html/days05/ex08_ok.jsp? 
? 요청파라미터 = 값&요청파라미터 = 값& -->

<!-- http://localhost/webPro/html/days05/ex08_ok.jsp?autosave=on 
pwd 요청파라미터 왜 없을까 ? 
id ="password" -> name ="password" 변경
-->

<!-- http://localhost/webPro/html/days05/ex08_ok.jsp?password=1234&autosave=on  -->

<!-- 
http://localhost/webPro/html/days05/ex08_ok.jsp
?
ID=admin
&password=1234
&autosave=y
 -->
 
 
 <!-- 포스트 사용  -->
 <!-- http://localhost/webPro/html/days05/ex08_ok.jsp
 get 방식과 다르게 ? 뒤의 값이 보이지 않음.
 -> get은 보안적 측면에서 좋지않음
 -> 추후 http[s] security .. , 암호화 시켜서 데이터를 넘겨야함
 
  -->
 <%
 // 자바코딩 ~ [스크립트릿]
		 String id = request.getParameter("id");
		 String passwd = request.getParameter("passwd");
 %>
 > 입력한 아이디 : <%= id %> <br>
 > 입력한 비밀번호 : <%= passwd %> <br>
 

</body>
</html>