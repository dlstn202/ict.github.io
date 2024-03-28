<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

    //내정보
    function container_info(){
        $.ajax({
            url: "mypage_container_info.do",
            success: function (res_data) {
                $("#container_content").html(res_data);
                changeLiColor();
                $("#info").css("color", "#00AF52");
                $.getScript("${pageContext.request.contextPath}/assets/js/domain.js");

            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }
    

    // 내장소
    function keep_list(){
        $.ajax({
            url: "mypage_container_general_keep_list.do",
            success: function (res_data) {
                $("#container_content").html(res_data);
                changeLiColor();
                $("#keep").css("color", "#00AF52");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }

    // 예약 내역
    function mygeneral_reserve(){
        $.ajax({
            url: "mypage_container_general_reserve.do",
            success: function (res_data) {
                $("#container_content").html(res_data);
                changeLiColor();
                $("#reserve").css("color", "#00AF52");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }

    // 문의 내역
    function inquiry(){
        $.ajax({
            url: "mypage_container_inquiry.do",
            success: function (res_data) {
                $("#container_content").html(res_data);
                changeLiColor();
                $("#inquiry").css("color", "#00AF52");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }

    // 리뷰 내역
    function review(){
        $.ajax({
            url: "mypage_container_general_review.do",
            success: function (res_data) {
                $("#container_content").html(res_data);
                changeLiColor();
                $("#review").css("color", "#00AF52");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }

    // 내캠핑장
    function business(){
        $.ajax({
            url: "mypage_container_ceo_business.do",
            success: function (res_data) {
                $("#container_content").html(res_data);
                changeLiColor();
                $("#business").css("color", "#00AF52");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }
    function business_room(){
        $.ajax({
            url: "mypage_container_ceo_business_room.do",
            success: function (res_data) {
                $("#container_content").html(res_data);
                changeLiColor();
                $("#business_room").css("color", "#00AF52");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }

    // 회원정보
    function member(){
        $.ajax({
            url: "mypage_container_manager_member.do",
            success: function (res_data) {
                $("#container_content").html(res_data);
                changeLiColor();
                $("#member").css("color", "#00AF52");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }

    // 문의답변
    function qna(){
        $.ajax({
            url: "mypage_container_manager_qna.do",
            success: function (res_data) {
                $("#container_content").html(res_data);
                changeLiColor();
                $("#qna").css("color", "#00AF52");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }

    // FAQ
    function faq(){
        $.ajax({
            url: "mypage_container_manager_faq.do",
            success: function (res_data) {
                $("#container_content").html(res_data);
                changeLiColor();
                $("#faq").css("color", "#00AF52");
                
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }

    // 캠핑장 신청내역
    function req_content(){
        $.ajax({
            url: "mypage_container_manager_req_content.do",
            success: function (res_data) {
                $("#container_content").html(res_data);
                changeLiColor();
                $("#req_content").css("color", "#00AF52");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }

    // 신고내역
    function notify(){
        $.ajax({
            url: "mypage_container_manager_notify.do",
            success: function (res_data) {
                $("#container_content").html(res_data);
                changeLiColor();
                $("#notify").css("color", "#00AF52");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }

    // 권한/계정 부여
    function authorize(){
        $.ajax({
            url: "mypage_container_manager_authorize.do",
            success: function (res_data) {
                $("#container_content").html(res_data);
                changeLiColor();
                $("#authorize").css("color", "#00AF52");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }


</script>
<script>
    function changeLiColor() {

        var lis = document.querySelectorAll(".mypage_container_list li");

        
        lis.forEach(function(li) {
            li.style.color = "#003A1B"; 
        });
}
</script>
</head>
<body>
<nav class="mypage_container_list_nav">
<ul class="mypage_container_list">
    <li id="info"><div onclick="container_info();">내정보</div></li>
    <!-- 일반 -->
    <li id="keep"><div onclick="keep_list();">내장소</div></li>
    <!-- 일반 -->
    <li id="reserve"><div onclick="mygeneral_reserve();">예약내역</div></li>
    <!-- 일반+사장 -->
    <li id="inquiry"><div onclick="inquiry();">문의내역</div></li>
    <!-- 일반 -->
    <li id="review"><div onclick="review();">내리뷰</div></li>
    <!-- 사장 -->
    <li id="business"><div onclick="business();">내캠핑장</div></li>
    <li id="business_room"><div onclick="business_room();">객실정보</div></li>
    <!-- 관리자 -->
    <li id="member"><div onclick="member();">회원정보</div></li>
    <li id="qna"><div onclick="qna();">문의답변</div></li>
    <li id="faq"><div onclick="faq();">FAQ</div></li>
    <li id="req_content"><div onclick="req_content();">캠핑장신청내역</div></li>
    <li id="notify"><div onclick="notify();">신고내역</div></li>
    <li id="authorize"><div onclick="authorize();">관리자 계정/권한</div></li>
</ul>
</nav>
</body>
</html>