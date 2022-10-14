<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%!	String name = "songa";
		   	int n1 = 1;
		   	int n2 = 2;
		   	int n3 = 3;%>
		<%!	public int plus(int a ,int b, int c){
				return n1 + n2 + n3;
		   	}%>
		
		
		
		
		
		<u><%= name %></u>
		<p><%= plus(n1, n2, n3) %></p>
	</body>
</html>