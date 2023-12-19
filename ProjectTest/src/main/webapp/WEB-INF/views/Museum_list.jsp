<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전시관 목록</title>
<style>
.museum-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	margin-bottom: 20px;
}

.museum {
	border: 1px solid #ddd;
	padding: 10px;
	margin: 5px;
	width: 45%;
}
</style>
</head>
<body>
	<h2 align="center">전시관 목록</h2>
	<a href="Program.jsp">
		<button>처음으로</button>
	</a>
	<hr color="red">
	<div class="museum-container">
		<c:forEach var="museum" items="${list}" varStatus="loop">
			<div class="museum">
				<p>

					박물관 ID: ${museum.museumId}<br>
					전시관 이름: ${museum.name}<br> 
					장소: ${museum.location}<br> 
					<!-- 날짜를 "yyyy년 MM월 dd일" 형식으로 표현 -->
					개관 날짜:
					<fmt:formatDate value="${museum.time}" pattern="yyyy년 MM월 dd일" />
					<br> 폐관 날짜:
					<fmt:formatDate value="${museum.closure}" pattern="yyyy년 MM월 dd일" />
					<br>  
					전화번호: ${museum.tel}
				</p>
			</div>
		</c:forEach>
	</div>
</body>
</html>
