<%@page import="javax.print.attribute.standard.RequestingUserName"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>UPLOAD</title>
		<style>
			ul{
				width: 200px;
			 	height: 160px;
				list-style : none;
				border : 1px solid #0097A7;
				position:absolute;
    			left:50%;
    			top:50%;
    			margin-left:-100px;
			    margin-top:-80px;
			}
		</style>
	</head>
	<body>
		<% 
			request.setCharacterEncoding("UTF-8");
			String title = request.getParameter("title");
			String date = request.getParameter("date");
			String textarea = request.getParameter("textarea");
		%>
		
		<ul>
			<li>제목 : <input id="title" type="text" value=<%=title %> > </li>
			<li>날짜 : <input id="date" type="date" value=<%=date %>> </li>
			<li>내용</li>
			<li> <textarea id="textarea"> <%=textarea %> </textarea> </li>
		</ul>
		
	</body>
</html>