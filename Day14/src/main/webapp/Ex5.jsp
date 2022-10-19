<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPLOAD</title>
<style>
ul {
	list-style: none;
	width: 300px;
}

div {
	width: 300px;
	height: 300px;
	border: 1px solid #0007a7;
	margin: auto;
}
</style>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String date = request.getParameter("boardDate");
	String content = request.getParameter("content");
	%>
	<div>
		<ul>
			<li>
				<%
				out.print("제목" + title);
				%>
			</li>
			<li>
				<%
				out.print("날짜" + date);
				%>
			</li>
			<li>내용</li>
			<li><textarea id="textarea"> <%=content%> </textarea></li>
		</ul>
	</div>

</body>
</html>