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
			out.println("<h2>" + id + "�� ȯ���մϴ�.</h2>");
		}else{
			out.println("<h2>���̵� �Է��ϰ� �ٽ� �����ϼ���.</h2>");
		}
	%>
	
</body>
</html>