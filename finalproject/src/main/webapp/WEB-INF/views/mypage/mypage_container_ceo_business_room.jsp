<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <style>
            /* [S]my_room */
            .my_room_list { max-width: 1280px; display: flex; flex-direction: column; gap: 2rem;}
            .room_box { width: 83rem; min-height: 28rem; background-color: rgba(var(--main-ton-down-rgb), 0.1); display: flex; flex-direction: column; padding: 1rem; gap: 1rem; border-radius: 9px; transition: .3s;}
            .room_reserve { display: flex; flex-direction: column; align-items: flex-end; height: 100%;}
            .room_info_idx {width: 100%;}
            .room_info_idx tbody tr { height: 4rem; border-bottom: 1px solid var(--main-ton-down);}
            .room_info_idx tbody tr th {width: 8%;}
            .room_info_idx tbody tr td { width: 40%; text-align: left;}
            .room_box_img img { width: 22rem; height: 26rem; border-radius: 9px;margin-top: 1rem;}
            .room_box_content { height: 100%; width: 100%; display: flex; gap: 1rem; flex-direction: row; align-items: flex-start; padding-left: 1rem; padding-right: 1rem;}
            .room_info {width: 100%;}
            .room_detailed { width: 100%; display: flex; margin-bottom: 1rem; flex-direction: column;padding: 2px;}
            .room_detailed>* { background-color: rgba(var(--main-rgb), 0.1); width: 32%; height: 100%; border-radius: 9px; }
            .room_info {height: 100%;display: flex; flex-direction: column; justify-content: space-between;}
            .room_title { overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 1; -webkit-box-orient: vertical;}
            .room_time , .room_addinfo{padding: 15px;}
            .room_look {display: flex; justify-content: flex-end; font-size: 1.4rem; font-weight: 500;}
            .room_title { font-size: 2rem; font-weight: 600; padding-top: 1rem;}
            .room_time {display: flex;width: 100%; height: 120px; margin-bottom: 7px; margin-top: 7px; flex-direction: column;}
            .room_price{ font-size: 20px; font-weight: 450;}
            .room_remain{ font-size: 12px; color: red;}
            .room_addinfo { display: flex; width: 100%; min-height: 80px; flex-direction: column;}
            .room_room {width: 29%;}
            .room_detailed_pay {display: flex;justify-content: space-between;}
            .room_name,.room_tel,.room_pay,.room_amount,.hide_detail_room {display: none;}
            .show_detail_room,.hide_detail_room { cursor: pointer;}
            @media (max-width: 992px) {.room_box {width: 100%;}}
            /* [E]my_room */
        </style>
                <script>
                    // 객실정보수정
                    function business_room_insertform(){
                          $.ajax({
                              url: "mypage_container_ceo_business_room_insertform.do",
                              success: function (res_data) {
                                  $("#container_content").html(res_data);
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
                    <div class="my_info_title">객실정보</div>
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
                                            <div class="room_date_str">추가정보 &nbsp;&nbsp;&nbsp;기준인원 외 추가 시 1인 20,000원 / 체크인 최소 1일전 호텔 측에 연락 필수</div>
                                            <div class="room_date_str">추가정보 &nbsp;&nbsp;&nbsp;기준인원 외 추가 시 1인 20,000원 / 체크인 최소 1일전 호텔 측에 연락 필수</div>
                                            <div class="room_date_str">추가정보 &nbsp;&nbsp;&nbsp;기준인원 외 추가 시 1인 20,000원 / 체크인 최소 1일전 호텔 측에 연락 필수</div>
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