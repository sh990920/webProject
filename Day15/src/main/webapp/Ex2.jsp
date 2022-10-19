<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("ID");
		if(id != ""){
			out.println("<h2>" + id + "님 환영합니다.</h2>");
		}else{
			out.println("<h2>아이디를 입력하고 다시 접속하세요.</h2>");
		}
	%>
	
</body>
</html>