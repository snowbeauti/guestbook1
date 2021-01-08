<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.javaex.guestbook.GuestDao"%>
<%@ page import="com.javaex.guestbook.GuestVo"%>


<%

int no = Integer.parseInt(request.getParameter("no"));
String password = request.getParameter("password");

GuestVo guestVo = new GuestVo(no, password);


GuestDao guestDao = new GuestDao();
GuestVo pw = guestDao.getGuest(no);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	if(password.equals(pw.getPassword())) {
		guestDao.delete(guestVo);
		response.sendRedirect("./addList.jsp");
	} 
	%>
	잘못된 비밀번호입니다. 
	<a href="./addList.jsp">
	메인으로 돌아가기</a>

</body>
</html>