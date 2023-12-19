<%@page import="com.multi.project.MuseumVO"%>
<%@page import="com.multi.project.MuseumDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>박물관 목록</title>
</head>
<body>
    <h2>박물관 목록</h2>
    <hr color="red">
  <%--   <%
        MuseumDAO dao = new MuseumDAO();
        List<MuseumVO> list = dao.getMuseumList();

        for (MuseumVO museum : list) {
    %>
        <p>
            Museum ID: <%= museum.getMuseumId() %><br>
            Name: <%= museum.getName() %><br>
            Location: <%= museum.getLocation() %><br>
            Time: <%= museum.getTime() %><br>
            Closure: <%= museum.getClosure() %><br>
            Tel: <%= museum.getTel() %>
        </p>
    <%
        }
    %> --%>
</body>
</html>
