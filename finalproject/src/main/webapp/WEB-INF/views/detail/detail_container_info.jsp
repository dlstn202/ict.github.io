<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
         <!DOCTYPE html>
         <html>

         <head>
            <meta charset="UTF-8">
            <title>상세정보</title>
         </head>

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
                           </c:if>
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

                  <div class="info_info">
                     <div class="info_detail">
                        <i class="fa-solid fa-circle-info fa-lg" style="color:#007235;"></i>
                        <div style="font-size:15px;">상세정보</div>
                     </div>
                     <div class="new-line">${detail_vo.overview}</div>
                  </div>
               </div>
            </div>
         </body>
         </body>

         </html>