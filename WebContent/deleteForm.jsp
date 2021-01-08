<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.guestbook.GuestDao" %>
<%@ page import="com.javaex.guestbook.GuestVo" %>


<%
int no = Integer.parseInt(request.getParameter("no"));

GuestDao guestDao = new GuestDao();
GuestVo guestVo = guestDao.getGuest(no);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="./delete.jsp" method="post">
비밀번호 <input type="password" name="password">
<input type="hidden" name="no" value="<%=guestVo.getNo() %>">
<button type="submit">확인</button>
</form>
<br>
<a href="./addList.jsp">메인으로 돌아가기</a>
</body>
</html>