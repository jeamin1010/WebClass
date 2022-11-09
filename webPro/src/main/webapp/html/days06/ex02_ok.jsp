<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>ex02_ok.jsp</h3>

<%
    // ?name=홍길동&age=20
    String name = request.getParameter("name");
    int age = Integer.parseInt( request.getParameter("age") );  // "20" -> 20
    
    // 
    // 첨부 파일 전송 -> 서버에 파일 위치 저장( 코딩 - 개발자 직접 )  + 파일업로드 라이브러리
%>

이름 : <%= name %><br>
<%-- jsp 주석처리
나이 : <%= age %> <br>
 --%>
 <!-- 
 현재 페이지에는 존재하지만 보이지 않도록 숨기겠다. - 상태관리
  -->
  
 <input type="hidden"  value="<%= age %>"  name="age"> 
</body>
</html>



