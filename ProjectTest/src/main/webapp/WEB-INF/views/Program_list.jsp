<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로그램 목록</title>
<%@ include file="header.jsp"%>
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
	position: relative;
}

.delete-button {
	position: absolute;
	top: 20px;
	right: 5px;
	padding: 8px 16px; /* 크기 조절 */
	background-color: #dc3545;
	color: #fff;
	border: none;
	cursor: pointer;
	font-size: 16px; /* 글꼴 크기 조절 */
}

a {
	text-decoration: none;
}
</style>
<script>
// 프로그램 삭제 함수
function deleteProgram(program_id) {
  var confirmation = confirm("프로그램을 삭제하시겠습니까?");
  
  if (confirmation) {
    // jQuery를 사용한 AJAX 요청
    $.ajax({
      type: "GET",
      url: "${pageContext.request.contextPath}/delete?program_id=" + program_id,
      success: function(data) {
        // 삭제 요청이 완료되면 해당 프로그램을 화면에서 제거
        $("#program_" + program_id).remove();
      },
      error: function(xhr, status, error) {
        console.error("AJAX request failed:", status, error);
      }
    });
  }
}
</script>
</head>
<body>
	<h2 align="center">프로그램 목록</h2>
	<a href="Program.jsp">
		<button>처음으로</button>
	</a>
	<a href="${pageContext.request.contextPath}/Museum_list">
		<button>전시관 목록으로</button>
	</a>
	<hr color="red">
	<div class="program-container">
		<c:forEach var="program" items="${list}" varStatus="loop">
			<div id="program_${program.program_id}" class="program">
				<p>

					프로그램 ID: ${program.program_id} <br> 박물관 ID:
					${program.museum_id}<br> 제목: ${program.title}<br> 이미지:
					${program.img}<br> 작가: ${program.artist}<br> 주제:
					${program.theme}<br>
					<!-- 날짜를 "yyyy년 MM월 dd일" 형식으로 표현 -->
					개관 날짜:
					<fmt:formatDate value="${program.start_day}"
						pattern="yyyy년 MM월 dd일" />
					<br> 폐관 날짜:
					<fmt:formatDate value="${program.end_day}" pattern="yyyy년 MM월 dd일" />
					<br> 가격:
					<fmt:formatNumber value="${program.price}" pattern="#,##0" />
					원<br> 전화번호: ${program.tel}
					<button class="delete-button"
						onclick="deleteProgram(${program.program_id})">삭제</button>
				</p>
			</div>
		</c:forEach>
	</div>
</body>
</html>
