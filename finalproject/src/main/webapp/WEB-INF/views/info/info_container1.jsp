<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = { 
                center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };
        
        // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
        var map = new kakao.maps.Map(mapContainer, mapOption); 
    </script>
</head>
<body>

    <!-- 지도를 표시할 div 입니다 -->
    <div class="map-container">
        <div id="map" ></div>
        <div id="list" >
            <div class="sido_select">
                <div id="sido">전국</div>
                <div id="search">검색</div>
            </div>
            <div class="palce_select">캠핌장     병원        편의점      마트</div>
            <div class="hashtag">
                필터
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