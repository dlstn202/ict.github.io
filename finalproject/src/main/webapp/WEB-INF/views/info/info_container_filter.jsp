<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script>
    $(document).ready(function() {
        $('.filter_select_box').click(function() {
            $(this).toggleClass('active');
        });
    });
</script>

</head>


<body>
    <div class="sido_select">
        <div id="local_cancel" onclick=""><i class="fa-solid fa-xmark" style="color: #00391c;"></i></div>
        <div id="local_button" >필터</div>
        <div id="local_ok"><i id="local_ok_con" class="fa-solid fa-check" ></i> 확인</div>
    </div>
    <div class="filter_select">
        <div class="filter_title">캠핑장타입</div>
            <div class="filter_select_list">
                <div class="filter_select_box">
                    야영장 
                </div>
                <div class="filter_select_box">
                    오토캠핑
                </div>
                <div class="filter_select_box">
                    카라반
                </div>
                <div class="filter_select_box">
                    차박
                </div>
                <div class="filter_select_box">
                    글램핑
                </div>
       
            </div>
        <div class="filter_title">위치/환경</div>
        <div class="filter_select_list">
            <div class="filter_select_box">
                숲
            </div>
            <div class="filter_select_box">
                산
            </div>
            <div class="filter_select_box">
                전국
            </div>
        </div>
        <div class="filter_title">사이트재질</div>
        <div class="filter_select_list">
            <div class="filter_select_box">
                잔디
            </div>
            <div class="filter_select_box">
                데크
            </div>
            <div class="filter_select_box">
                자갈
            </div>
        </div>
        <div class="filter_title">부대시설</div>
        <div class="filter_select_list">
            <div class="filter_select_box">
                전기
            </div>
            <div class="filter_select_box">
                화장실
            </div>
            <div class="filter_select_box">
                샤워
            </div>
        </div>
        <div class="filter_title">기타</div>
        <div class="filter_select_list">
            <div class="filter_select_box">
                반려동물입장가능
            </div>
            <div class="filter_select_box">
                어린이놀이시설
            </div>
            <div class="filter_select_box">
                체험
            </div>
        </div>
    </div>
  </body>

</html>