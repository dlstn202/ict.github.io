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
            $('.sido_select_box').click(function() {
        // 모든 .sido_select_box 요소에서 'active' 클래스 제거 후 현재 요소에만 추가
        $('.sido_select_box').removeClass('active');
        $(this).addClass('active');
        
        // 클릭된 요소의 텍스트 가져오기
        var selectedSido = $(this).text().trim();
        
        // 구/군 목록을 담을 변수 초기화
        var guListHtml = '';
        
        // 경상남도가 선택된 경우
        if(selectedSido === "경상남도") {
            guListHtml += '<div class="gu_select_box">전체</div>';
            guListHtml += '<div class="gu_select_box">가평</div>';
            guListHtml += '<div class="gu_select_box">고양시</div>';
        }
        // 강원이 선택된 경우
        else if(selectedSido === "강원") {
            guListHtml += '<div class="gu_select_box">전체</div>';
            guListHtml += '<div class="gu_select_box">강릉시</div>';
            guListHtml += '<div class="gu_select_box">고성군</div>';
        }
        
        // 기타 시/도 선택에 따른 조건 추가 가능...
        
        // .gu_select_list의 내용을 새로운 목록으로 업데이트
        $('.gu_select_list').html(guListHtml);

        $('.gu_select_box:first').addClass('active');
        
        // 새로운 구/군 박스에 대해서도 클릭 이벤트 핸들러 설정
        $('.gu_select_box').click(function() {
            $('.gu_select_box').removeClass('active');
            $(this).toggleClass('active');
        });
    });
        });

        
    </script>
</head>
<body>
    <div class="sido_select">
        <div id="local_cancel" onclick=""><i class="fa-solid fa-xmark" style="color: #00391c;"></i></div>
        <div id="local_button" >지역선택</div>
        <div id="local_ok"><i id="local_ok_con" class="fa-solid fa-check" ></i> 확인</div>
    </div>
    <div class="local_select">
        <div class="sido_wrap">
            <div class="sido_title">시/도</div>
            <div class="sido_select_list">
                    <div class="sido_select_box">
                        내근처&nbsp;<span>(123)</span>
                    </div>
                    <div class="sido_select_box">
                        전국&nbsp;<span>(123)</span>
                    </div>
                    <div class="sido_select_box">
                        경상남도</span>
                    </div>
                    <div class="sido_select_box">
                        강원
                    </div>
                    <div class="sido_select_box">
                        전국
                    </div>
                    <div class="sido_select_box">
                        전국
                    </div>
                    <div class="sido_select_box">
                        전국
                    </div>
                    <div class="sido_select_box">
                        전국
                    </div>
                    <div class="sido_select_box">
                        전국 
                    </div>
                    <div class="sido_select_box">
                        전국
                    </div>
            </div>
        </div>
        <div class="gu_wrap">
            <div class="gu_title">구/군</div>
            <div class="gu_select_list">
                <div class="gu_select_box">
                    전체
                </div>
                <div class="gu_select_box">
                    가평
                </div>
                <div class="gu_select_box">
                    고양시
                </div>
                <div class="gu_select_box">
                    강릉시
                </div>
                <div class="gu_select_box">
                    고성군
                </div>
                <div class="gu_select_box">
                    전국
                </div>
                <div class="gu_select_box">
                    전국
                </div>
                <div class="gu_select_box">
                    전국
                </div>
                <div class="gu_select_box">
                    전국
                </div>
                <div class="gu_select_box">
                    전국
                </div>
            </div>        
             
        </div>
    </div>
</body>
</html>