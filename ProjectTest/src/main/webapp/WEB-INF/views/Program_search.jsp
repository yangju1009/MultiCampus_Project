<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로그램 목록</title>
<style>
.program-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	margin-bottom: 20px;
}

.program {
	border: 1px solid #ddd;
	padding: 10px;
	margin: 5px;
	width: 45%;
}
</style>
</head>
<body>
	<h2 align="center">프로그램 목록</h2>
	<a href="Program.jsp">
		<button>처음으로</button>
	</a>
	<hr color="red">
	<div class="program-container">
		<c:forEach var="program" items="${searchResults}" varStatus="loop">
			<div class="program">
				<p>

					프로그램 ID: ${program.program_id} <br> 
					박물관 ID: ${program.museum_id}<br> 
					제목: ${program.title}<br> 
					이미지: ${program.img}<br> 
					작가: ${program.artist}<br> 
					주제: ${program.theme}<br>
					<!-- 날짜를 "yyyy년 MM월 dd일" 형식으로 표현 -->
					개관 날짜:
					<fmt:formatDate value="${program.start_day}"
						pattern="yyyy년 MM월 dd일" />
					<br> 폐관 날짜:
					<fmt:formatDate value="${program.end_day}" pattern="yyyy년 MM월 dd일" />
					<br> 가격:
					<fmt:formatNumber value="${program.price}" pattern="#,##0" />
					원<br> 전화번호: ${program.tel}
				</p>
			</div>
		</c:forEach>
	</div>
</body>
</html>
