<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>전시관 홈페이지</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f2f2f2;
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
            border-radius: 10px;
            display: flex;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        li {
            flex: 1;
            position: relative;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover {
            background-color: #111;
        }

        .dropdown {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #f9f9f9;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        li:hover .dropdown {
            display: block;
        }

        .dropdown a {
            color: black;
            padding: 12px 16px;
            display: block;
            text-align: left;
            text-decoration: none;
        }

        .dropdown a:hover {
            background-color: #ddd;
        }

        div {
            width: 80%;
            margin-top: 60px;
        }

        h2 {
            text-align: center;
        }
    </style>
</head>
<body>

    <!-- 탭 메뉴 -->
    <ul>
        <li>
            <a href="#" onclick="showTab('exhibition')">전시관 조회</a>
        </li>
        <li>
            <a href="#" onclick="showTab('reservation')">예약</a>
        </li>
        <li >
            <a href="#" onclick="showTab('community')">커뮤니티</a>
            <div class="dropdown-content">
                <a href="#" class="dropdown">공지사항</a>
                <a href="#" class="dropdown">게시글</a>
            </div>
        </li>
        <li>
            <a href="#" onclick="showTab('mypage')">마이페이지</a>
        </li>
    </ul>

    <!-- 각 탭에 대한 컨텐츠 -->
    <div id="exhibition" style="display: none;">
        <h2>전시관 조회</h2>
        <!-- 전시관 조회 컨텐츠를 이 부분에 추가 -->
    </div>

    <div id="reservation" style="display: none;">
        <h2>예약</h2>
        <!-- 예약 컨텐츠를 이 부분에 추가 -->
    </div>

    <div id="community" style="display: none;">
        <h2>커뮤니티</h2>
        <!-- 커뮤니티 컨텐츠를 이 부분에 추가 -->
    </div>

    <div id="mypage" style="display: none;">
        <h2>마이페이지</h2>
        <!-- 마이페이지 컨텐츠를 이 부분에 추가 -->
    </div>

    <script>
        // 각 탭을 보여주는 JavaScript 함수
        function showTab(tabId) {
            // 모든 탭 숨김
            document.getElementById('exhibition').style.display = 'none';
            document.getElementById('reservation').style.display = 'none';
            document.getElementById('community').style.display = 'none';
            document.getElementById('mypage').style.display = 'none';

            // 선택한 탭만 보여줌
            document.getElementById(tabId).style.display = 'block';
        }
    </script>

</body>
</html>
