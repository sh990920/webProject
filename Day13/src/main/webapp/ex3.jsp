<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!int[] arr = {10, 18, 7}; %>
	<%! int result = 0; %>
	<%! public int res(int[] arr){
			for(int i = 0; i < arr.length; i++){
				if(arr[i] > result){
					result = arr[i];
				}
			}
		return result;
		}%>
	<%= res(arr) %>
</body>
</html>