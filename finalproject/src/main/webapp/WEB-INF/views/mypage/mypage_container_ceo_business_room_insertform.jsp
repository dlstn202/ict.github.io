<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <style>
        
        </style>
        <script>
            // 객실정보수정
            function business_room_insertform(){
                  $.ajax({
                      url: "mypage_container_ceo_business_room_insertform.do",
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
          </script>
    </head>

    <body>
        <main class="th-layout-main">

            <div class="th-layout-main">
                <!-- [S]my_room  -->
                <div id="my_room">
                    <div class="my_info_title">객실정보수정</div>
                    <div class="my_room_list">
                        <div class="room_box">

                            <div class="room_box_content">
                                <div class="room_box_img">
                                    <img src="${pageContext.request.contextPath}/assets/img/sample/img_glamping_N5_1.png"
                                        alt="">
                                </div>
                                <div class="room_info">
                                    <div class="room_title">객실명</div>
                                    <div class="room_look" onclick="business_room_insertform();">상세보기 ></div>
                                    <div class="room_detailed">
                                        <div class="room_time">
                                            <div class="room_date_to">입실시간</div>
                                            <div class="room_date_str">퇴실시간</div>
                                            <div class="room_reserve">
                                                <div class="room_price">50,000원</div>
                                                <div class="room_remain">남은객실</div>
                                            </div>
                                        </div>    
                                        <div class="room_addinfo">
                                            <div class="room_date_to">객실정보 &nbsp;&nbsp;&nbsp;기준2인 · 최대2인</div>
                                            <div class="room_date_str">추가정보 &nbsp;&nbsp;&nbsp;기준인원 외 추가 시 1인 20,000원 / 체크인 최소 1일전 호텔 측에 연락 필수</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- [E]my_room  -->
        </main>
    </body>

    </html>