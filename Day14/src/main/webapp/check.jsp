<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
		String n = request.getParameter("num");
		//int num = Integer.parseInt(request.getParameter("num"));
		int num = Integer.parseInt(n);
		out.println(num);
	%>
	
	<script>
		var num = parseInt(<%=num %>);
		if(num >= 10){
			alert("10보다 크거나 같습니다.");
		}else{
			alert("10보다 작습니다.");
		}
	</script>
</body>
</html>