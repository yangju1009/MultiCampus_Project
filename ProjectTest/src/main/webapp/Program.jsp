<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>프로그램 조회</title>
</head>
<body>
    <h2>프로그램 조회</h2>
      <form action="search.program" method="get">
        <label for="Keyword">프로그램 검색:</label> <br>
        <input type="text" id="Keyword" name="Keyword" placeholder="프로그램 제목을 입력하세요" value="ab">
        <input type="submit" value="프로그램 검색하기">
    </form>
    
    <form action="list.program" method="post">
        <input type="submit" value="전체 프로그램 조회하기">
    </form>
    
    <form action="list.museum" method="post">
        <input type="submit" value="전체 전시관 조회하기">
    </form>
    
    
    
</body>
</html>
