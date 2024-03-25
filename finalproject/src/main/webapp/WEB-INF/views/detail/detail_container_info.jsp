<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
         <!DOCTYPE html>
         <html>

         <head>
            <meta charset="UTF-8">
            <title>상세정보</title>
         </head>
         <script>
            $(document).ready(function () {
               $('#myCarousel').carousel({
                  interval: false
               });
            });
         </script>

         <body>
            <div id="info">
               <input type="hidden" id="detail_contenttypeid" value=""><!--${detail_vo.contenttypeid}-->
               <input type="hidden" id="detail_contentid" value=""> <!--${detail_vo.contentid}-->
               <!-- ---------------------상세정보--------------------- -->
               <div class="detail">
                  <div class="detail_top">
                  </div>
                  <div class="detail_center">
                     <div class="detail_center_sm">
                        <div id="location_title">가게명</div>
                        <div id="evaluate">글램핑</div>
                        <div id="detail_icon">
                           <div id="detail_map"
                              onclick="location.href='${pageContext.request.contextPath}/search/keyword.do?search_keyword=${detail_vo.title}'">
                              <i class="fa-solid fa-location-dot fa-2x" style="color: #007235;"></i>
                              <p>지도</p>
                           </div>
                           <c:if test="${user.pl_mem_grade eq '일반' or empty user}">
                              <div id="detail_keep">
                                 <i id="keepNo" class="fa-regular fa-bookmark fa-2x"></i>
                                 <i id="keepOn" class="fa-solid fa-bookmark fa-2x"></i>
                                 <p>저장</p>
                              </div>
                              <div id="detail_reservation">
                              <i class="fa-solid fa-calendar-check fa-2x" style="color: #007235;"></i>
                              <p>예약</p>
                           </div>
                           </c:if>
                           <div id="detail_report">
                              <i class="fa-solid fa-land-mine-on fa-2x" style="color: #007235;"></i>
                              <p>신고</p>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="detail_bottom"></div> <!-- 여백 -->
               </div>

               <div class="detail_info">
                  <div class="detail_infotop">
                     <p>상세정보</p>
                     <div class="info_reg">업데이트 : 2024-03-19
                     </div>
                  </div>

                  <div class="info_addr">
                     <i class="fa-solid fa-location-dot fa-lg" style="color:#007235;"></i>
                     <div>주소</div>
                  </div>

                  <div class="info_operate">
                     <i class="fa-regular fa-clock fa-lg" style="color:#007235;"></i>
                     <div>상호명</div>
                  </div>
                  <div class="info_home">
                     <i class="fa-solid fa-globe fa-lg" style="color:#007235;"></i>
                     <div>홈페이지</div>
                  </div>
                  <div class="info_tel">
                     <i class="fa-solid fa-phone fa-lg" style="color:#007235;"></i>
                     <div>전화번호</div>
                  </div>

                  <div class="info_image_container">
                     <div class="info_image">
                        <i class="fa-regular fa-image fa-lg" style="color:#007235;"></i>
                        <div style="font-size:15px;">이미지</div>
                     </div>

                     <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="false">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                           <li data-target="#myCarousel" data-slide-to="0"></li>
                           <li data-target="#myCarousel" data-slide-to="1"></li>
                           <li data-target="#myCarousel" data-slide-to="2"></li>
                           <li data-target="#myCarousel" data-slide-to="3"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                           <div class="item active">
                              <img src="${pageContext.request.contextPath}/assets/img/header/main_header.jpg"
                                 alt="PC 메인 비주얼 이미지">
                           </div>

                           <div class="item">
                              <img src="${pageContext.request.contextPath}/assets/img/header/main_header.jpg"
                                 alt="PC 메인 비주얼 이미지">
                           </div>

                           <div class="item">
                              <img src="${pageContext.request.contextPath}/assets/img/sample/img_glamping_N5_2.png"
                                 alt="PC 메인 비주얼 이미지">
                           </div>

                           <div class="item">
                              <img src="${pageContext.request.contextPath}/assets/img/header/main_header.jpg"
                                 alt="PC 메인 비주얼 이미지">
                           </div>
                        </div>

                        <!-- Left and right controls -->
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                           <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                           <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                     </div>
                  </div>



                     <div class="info_info">
                        <div class="info_detail">
                           <i class="fa-solid fa-circle-info fa-lg" style="color:#007235;"></i>
                           <div style="font-size:15px;">상세정보</div>
                        </div>
                        <div class="new-line">${detail_vo.overview}dfdsfsdfdsfdsfdsf</div>
                     </div>
                     <!-- 추가정보 #태그로 남기기 -->
                     <div class="info_add">
                        <div class="chkpet">애완동물동반유무 : ${detail_vo.chkpet}</div>
                        <div class="expagerange">체험가능연령 : ${detail_vo.expagerange}</div>
                     </div>


                  </div>
               </div>
         </body>
         </body>

         </html>