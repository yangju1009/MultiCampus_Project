<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입 페이지</title>
</head>
<body>
    <h2>회원가입</h2>
    <form action="RegisterServlet" method="post">
        <label for="id">아이디:</label>
        <input type="text" id="id" name="id" required><br>

        <label for="pw">비밀번호:</label>
        <input type="password" id="pw" name="pw" required><br>

        <label for="name">이름:</label>
        <input type="text" id="name" name="name" required><br>

        <label for="birth">생년월일:</label>
        <input type="date" id="birth" name="birth" required><br>

        <label for="gender">성별:</label>
        <select id="gender" name="gender" required>
            <option value="M">남성</option>
            <option value="F">여성</option>
        </select><br>

        <label for="addr">주소:</label>
        <input type="text" id="addr" name="addr"><br>

        <label for="tel">전화번호:</label>
        <input type="tel" id="tel" name="tel"><br>

        <label for="alarm">알람 설정:</label>
        <input type="text" id="alarm" name="alarm"><br>

        <button type="submit">회원가입</button>
    </form>
</body>
</html>
