<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠프안내</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        $('.place_select_kind').click(function() {
            $('.place_select_kind').removeClass('active');
            $(this).toggleClass('active');
        });
    });
</script>
</head>
<body>
    <div id="list" >
        <div class="sido_select">
            <div id="sido" onclick="filter('local')"><span>전국</span> <i class="fa-solid fa-angle-down" style="color: #003a1b;"></i></div>
        </div>
        <div class="place_select">
            <div class="place_select_kind" onclick="changeContent('camping')">캠핑장</div>
            <div class="place_select_kind" onclick="changeContent('hospital')">병원/약국</div>
            <div class="place_select_kind" onclick="changeContent('store')">편의점</div>
            <div class="place_select_kind" onclick="changeContent('mart')">마트</div>
        </div>
        <div class="hashtag">
            <div class="hashtag_icon"onclick="filter('filter')">
                <i class="fa-solid fa-sliders" style="color: #00391c;" ></i> 필터
            </div>
        </div>
        <div id="place_area">
            <div class="place_list">
                <div class="place_list_img" >
                    <img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">
                </div>
                <div class="place_list_content">
                    <div>해쉬태그~~~~~~~~~~~~~~~</div>
                    <div>캠핌장명~~~~~~~~~~</div>
                    <div>주소~~~~~~~~~~~~~~~~</div>
                    <div>한줄소개~~~~~~~~~~~~~~~~~~</div>
                </div>
            </div>
            <div class="place_list">
                <div class="place_list_img" >
                    <img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">
                </div>
                <div class="place_list_content">
                    <div>해쉬태그~~~~~~~~~~~~~~~</div>
                    <div>캠핌장명~~~~~~~~~~</div>
                    <div>주소~~~~~~~~~~~~~~~~</div>
                    <div>한줄소개~~~~~~~~~~~~~~~~~~</div>
                </div>
            </div>
            <div class="place_list">
                <div class="place_list_img" >
                    <img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">
                </div>
                <div class="place_list_content">
                    <div>해쉬태그~~~~~~~~~~~~~~~</div>
                    <div>캠핌장명~~~~~~~~~~</div>
                    <div>주소~~~~~~~~~~~~~~~~</div>
                    <div>한줄소개~~~~~~~~~~~~~~~~~~</div>
                </div>
            </div><div class="place_list">
                <div class="place_list_img" >
                    <img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">
                </div>
                <div class="place_list_content">
                    <div>해쉬태그~~~~~~~~~~~~~~~</div>
                    <div>캠핌장명~~~~~~~~~~</div>
                    <div>주소~~~~~~~~~~~~~~~~</div>
                    <div>한줄소개~~~~~~~~~~~~~~~~~~</div>
                </div>
            </div><div class="place_list">
                <div class="place_list_img" >
                    <img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">
                </div>
                <div class="place_list_content">
                    <div>해쉬태그~~~~~~~~~~~~~~~</div>
                    <div>캠핌장명~~~~~~~~~~</div>
                    <div>주소~~~~~~~~~~~~~~~~</div>
                    <div>한줄소개~~~~~~~~~~~~~~~~~~</div>
                </div>
            </div><div class="place_list">
                <div class="place_list_img" >
                    <img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">
                </div>
                <div class="place_list_content">
                    <div>해쉬태그~~~~~~~~~~~~~~~</div>
                    <div>캠핌장명~~~~~~~~~~</div>
                    <div>주소~~~~~~~~~~~~~~~~</div>
                    <div>한줄소개~~~~~~~~~~~~~~~~~~</div>
                </div>
            </div><div class="place_list">
                <div class="place_list_img" >
                    <img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">
                </div>
                <div class="place_list_content">
                    <div>해쉬태그~~~~~~~~~~~~~~~</div>
                    <div>캠핌장명~~~~~~~~~~</div>
                    <div>주소~~~~~~~~~~~~~~~~</div>
                    <div>한줄소개~~~~~~~~~~~~~~~~~~</div>
                </div>
            </div>
            <div class="place_list">
                <div class="place_list_img" >
                    <img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">
                </div>
                <div class="place_list_content">
                    <div>해쉬태그~~~~~~~~~~~~~~~</div>
                    <div>캠핌장명~~~~~~~~~~</div>
                    <div>주소~~~~~~~~~~~~~~~~</div>
                    <div>한줄소개~~~~~~~~~~~~~~~~~~</div>
                </div>
            </div><div class="place_list">
                <div class="place_list_img" >
                    <img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">
                </div>
                <div class="place_list_content">
                    <div>해쉬태그~~~~~~~~~~~~~~~</div>
                    <div>캠핌장명~~~~~~~~~~</div>
                    <div>주소~~~~~~~~~~~~~~~~</div>
                    <div>한줄소개~~~~~~~~~~~~~~~~~~</div>
                </div>
            </div><div class="place_list">
                <div class="place_list_img" >
                    <img  class="img" src="../assets/img/sample/img_glamping_N6_1.png" alt="이미지1">
                </div>
                <div class="place_list_content">
                    <div>해쉬태그~~~~~~~~~~~~~~~</div>
                    <div>캠핌장명~~~~~~~~~~</div>
                    <div>주소~~~~~~~~~~~~~~~~</div>
                    <div>한줄소개~~~~~~~~~~~~~~~~~~</div>
                </div>
            </div>
        </div>


        
    </div>
</body>
</html>