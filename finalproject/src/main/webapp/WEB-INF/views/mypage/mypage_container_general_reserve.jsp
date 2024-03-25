<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
    function show_detail_reserve(){
        $(".reserve_box").css("height","33rem");
        $(".reserve_name").css("display","block");
        $(".reserve_tel").css("display","block");
        $(".reserve_pay").css("display","block");
        $(".reserve_amount").css("display","block");
        $(".hide_detail_reserve").css("display","block");
        $(".show_detail_reserve").css("display","none");
    }

    function hide_detail_reserve(){
        $(".reserve_box").css("height","23rem");
        $(".reserve_name").css("display","none");
        $(".reserve_tel").css("display","none");
        $(".reserve_pay").css("display","none");
        $(".reserve_amount").css("display","none");
        $(".hide_detail_reserve").css("display","none");
        $(".show_detail_reserve").css("display","block");
    }
</script>
</head>
<body>
    <main class="th-layout-main">
        <!-- [S]my_reserve  -->
        <div id="my_reserve">
            <div class="my_info_title">예약 내역</div>
            <div class="my_reserve_list">
                <div class="reserve_box">

                    <table class="reserve_info_idx">
                        <tr>
                            <th>예약번호 :</th>
                            <td>49845</td>
                            <th>예약일자 :</th>
                            <td>2024-03-22</td>
                        </tr>
                    </table>

                    <div class="reserve_box_content">
                        <div class="reserve_box_img">
                            <img src="${pageContext.request.contextPath}/assets/img/sample/img_glamping_N5_1.png" alt="">
                        </div>
                        <div class="reserve_info">
                            <div class="reserve_title">강원신재생에너지</div>
                            <div class="reserve_addr">주소주소</div>
                            <div class="reserve_detailed">
                                <div class="reserve_date">
                                    <div class="reserve_date_to">2024-03-21 ~ 2024-03-22</div>
                                    <div class="reserve_date_str">1박</div>
                                </div>
                                <div class="reserve_room">글램핑</div>
                                <div class="reserve_guest">성인 1명</div>
                                
                            </div>
                            <div>
                                <div class="reserve_name">예약자명 : 금쪽이</div>
                                <div class="reserve_tel">전화번호 : 010-1234-1234</div>
                                <div class="reserve_pay">결제방법 : 카드</div>
                                <div class="reserve_amount">결제금액 : 100,000원</div>
                            </div>
                            <div class="reserve_detailed_pay">
                                <div onclick="show_detail_reserve();" class="show_detail_reserve">자세히보기</div>
                                <div onclick="hide_detail_reserve();" class="hide_detail_reserve">닫기</div>
                                <div>예약완료</div>
                            </div>
                        </div>
                    </div>
                </div>

                </div>
            </div>
        </div>
        <!-- [E]my_reserve  -->
    </main>
</body>
</html>