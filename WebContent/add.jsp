<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.guestbook.GuestDao"%>
<%@ page import="com.javaex.guestbook.GuestVo"%>


<%
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");

	GuestVo guestVo = new GuestVo(name, password, content);

	GuestDao guestdao = new GuestDao();

	/*저장*/
	guestdao.insert(guestVo);

	response.sendRedirect("./list.jsp");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>