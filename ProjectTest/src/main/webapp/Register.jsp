<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 페이지1</title>
    <style>
        body {
            
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        button {
            background-color: #007bff;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form action="insert.login" method="post" accept-charset="UTF-8">
        <h2 align="center">회원가입</h2>
        <label for="id">아이디:</label>
        <input type="text" id="id_member" name="id_member" required value="apple">

        <label for="pw">비밀번호:</label>
        <input type="password" id="pw" name="pw" required value="1234">

        <label for="pwConfirm">비밀번호 확인:</label>
        <input type="password" id="pwConfirm" name="pwConfirm" required value="12345"> 

        <label for="name">이름:</label>
        <input type="text" id="name" name="name" required value="양">

        <label for="birth">생년월일:</label>
        <input type="date" id="birth" name="birth" required value="2023-12-04">

        <label for="gender">성별:</label>
        <select id="gender" name="gender" required >
            <option value="M">남성</option>
            <option value="F">여성</option>
        </select>

        <label for="addr">주소:</label>
        <input type="text" id="addr" name="addr" value="1234">

        <label for="tel">전화번호:</label>
        <input type="tel" id="tel" name="tel" value="010">

        <label for="alarm">알람 설정:</label>
        <input type="text" id="alarm" name="alarm">

        <button type="submit">회원가입</button>
    </form>
</body>
</html>
