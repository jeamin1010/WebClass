<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<h3>sample01_ok.jsp</h3>

<% 
         String subject =  request.getParameter("subject"); 
%>

 <!-- 2) 표현식 ( 출력 )-->
  subject = <%= subject %><br>

 [ 선택된 과목 ] <br>
	<select id="selsubject"  name="selsubject">
	   <option>선택하세요.</option>    
	   <option value="kor">국어</option> 
	   <option value="eng">영어</option> 
	   <option value="mat">수학</option>
	   <option value="pe">체육</option> 
	</select>

<!-- js -->
<script>  
 <%-- 
  var ops = document.getElementById("selsubject").options; 
  for (var i = 0; i < ops.length; i++) {
     if(  ops[i].value == '<%= subject %>' ){
    	 ops[i].selected = true;
    	 break;
     }  // if
  } // for
  --%>
</script>

<!-- jquery -->
<script>
    $("#selsubject").val('<%= subject %>');
</script>

</body>
</html>