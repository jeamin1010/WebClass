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
         // ?selsubject=eng
         String subject =  request.getParameter("selsubject");

          // [ jsp 스크립트 3가지 종류  ]
          // 1) 스크립트릿
%>

 <!-- 2) 표현식 ( 출력 )-->
  subject = <%= subject %><br>

 [ 선택된 과목 ] <br>
 <input type="radio" name="subject"   value="kor"><label>국어</label><br>
 <input type="radio"  name="subject"  value="eng"><label>영어</label><br>
 <input type="radio"  name="subject"  value="mat"><label>수학</label><br>
 <input type="radio"  name="subject"  value="pe"><label>체육</label><br>

<!-- js -->

<script>  
  
 <%--  JSP 주석처리  ***
    var svalue =  "<%= subject %>" ;   // js 는 문자열은   쌍 홑 따옴표
	var radios = document.getElementsByName("subject"); 
	for (var i = 0; i < radios.length; i++) {
		if( radios[i].value ==  svalue ){
			radios[i].checked = true;
			break;   // return;
		} // if
	} // for
  --%>
	
</script>

<!-- jquery -->
<script>
     // *** Uncaught ReferenceError: $ is not defined ***   jquery  사용 X
     $(":radio[value='<%= subject %>']").prop("checked", true);
</script>

</body>
</html>