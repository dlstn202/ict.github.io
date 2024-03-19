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
            <input type="hidden" id="detail_contenttypeid" value="${detail_vo.contenttypeid}">
            <input type="hidden" id="detail_contentid" value="${detail_vo.contentid}">
               <!-- ---------------------상세정보--------------------- -->
               <div class="detail">
                  <div class="detail_top">
                     
                     <c:if test="${fn:contains(detail_vo.firstimage, 'assets/image')}">
                      <img src="${pageContext.request.contextPath}${detail_vo.firstimage }">
                  </c:if>
                  <c:if test="${not fn:contains(detail_vo.firstimage, 'assets/image')}">
                      <img src="${detail_vo.firstimage }">
                  </c:if>
                  </div>
                  <div class="detail_center">
                     <div class="detail_center_sm">
                        <div id="location_title">${detail_vo.title}</div>
                        <div id="evaluate">${detail_vo.type}</div>
                        <div id="detail_icon">
                           <div id="detail_map"  onclick="location.href='${pageContext.request.contextPath}/search/keyword.do?search_keyword=${detail_vo.title}'">
                              <i class="fa-solid fa-location-dot fa-2x"  style="color: #3396ff;"></i>
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
                      <div class="info_reg">업데이트 : 
                        ${detail_vo.modifiedtime.substring(0, 4)}. 
                        ${detail_vo.modifiedtime.substring(4, 6)}. 
                        ${detail_vo.modifiedtime.substring(6, 8)}
                     </div>
                  </div>
               
                     <div class="info_addr">
                        <i class="fa-solid fa-location-dot" style="color:#1166DD;"></i>
                        <div>${detail_vo.addr1}</div>
                     </div>
                     
                     <c:if test="${param.contenttypeid==12}">
                        <div class="info_operate">
                           <i class="fa-regular fa-clock" style="color:#1166DD;"></i>
                           <div>${detail_vo.usetime}</div>
                        </div>
                        <div class="info_home">
                           <i class="fa-solid fa-globe" style="color:#1166DD;"></i>
                           <div>${detail_vo.homepage}</div>
                        </div>
                        <div class="info_tel">
                           <i class="fa-solid fa-phone" style="color:#1166DD;"></i>
                           <div>${detail_vo.infocenter}</div>
                        </div>
                        
                        <div class="info_info">
                           <div class="info_detail">
                              <i class="fa-solid fa-circle-info" style="color:#1166DD;"></i>
                              <div style="font-size:15px;">상세정보</div>
                           </div>
                              <div class="new-line">${detail_vo.overview}</div>
                        </div>
                        <!-- 추가정보 #태그로 남기기 -->
                             <div class="info_add">
                                 <div class="chkpet">애완동물동반유무 : ${detail_vo.chkpet}</div>
                                 <div class="expagerange">체험가능연령 : ${detail_vo.expagerange}</div>
                             </div>
                      </c:if>
                      <c:if test="${param.contenttypeid==14}">
                        <div class="info_operate">
                           <i class="fa-regular fa-clock" style="color:#1166DD;"></i>
                           <div>${detail_vo.usetime}</div>
                        </div>
                        <div class="info_home">
                           <i class="fa-solid fa-globe" style="color:#1166DD;"></i>
                           <div>${detail_vo.homepage}</div>
                        </div>
                        <div class="info_tel">
                           <i class="fa-solid fa-phone" style="color:#1166DD;"></i>
                           <div>${detail_vo.infocenter}</div>
                        </div>
                        
                        <div class="info_info">
                           <div class="info_detail">
                              <i class="fa-solid fa-circle-info" style="color:#1166DD;"></i>
                              <div style="font-size:15px;">상세정보</div>
                           </div>
                              <div class="new-line">${detail_vo.overview}</div>
                        </div>
                        <!-- 추가정보 #태그로 남기기 -->
                             <div class="info_add">
                                 <div class="chkpet">애완동물동반유무 : ${detail_vo.chkpet}</div>
                                 <div class="usefee">이용요금 : ${detail_vo.usefee}</div>
                                 <div class="parking">주차시설 : ${detail_vo.parking}</div>
                          </div>
                      </c:if>
                      <c:if test="${param.contenttypeid==15}">
                        <div class="info_operate">
                           <i class="fa-regular fa-clock" style="color:#1166DD;"></i>
                           <div>행사시작일 : ${detail_vo.eventstartdate}</div>
                           <div>${detail_vo.usetime}</div>
                           
                        </div>
                        <div class="info_home">
                           <i class="fa-solid fa-globe" style="color:#1166DD;"></i>
                           <div>${detail_vo.eventhomepage}</div>
                        </div>
                        <div class="info_tel">
                           <i class="fa-solid fa-phone" style="color:#1166DD;"></i>
                           <div>${detail_vo.tel}</div>
                        </div>
                        
                        <div class="info_info">
                           <div class="info_detail">
                              <i class="fa-solid fa-circle-info" style="color:#1166DD;"></i>
                              <div style="font-size:15px;">상세정보</div>
                           </div>
                              <div class="new-line">${detail_vo.overview}</div>
                        </div>
                        <!-- 추가정보 #태그로 남기기 -->
                             <div class="info_add">
                                 <div class="agelimit">관람가능연령 : ${detail_vo.agelimit}</div>
                                 <div class="usetimefestival">이용요금 : ${detail_vo.usetimefestival}</div>
                             </div>
                      </c:if>
                      <c:if test="${param.contenttypeid==28}">
                        <div class="info_operate">
                           <i class="fa-regular fa-clock" style="color:#1166DD;"></i>
                           <div>개장기간 : ${detail_vo.openperiod}</div>
                           <div>${detail_vo.usetime}</div>
                        </div>
                        <div class="info_home">
                           <i class="fa-solid fa-globe" style="color:#1166DD;"></i>
                           <div>${detail_vo.homepage}</div>
                        </div>
                        <div class="info_tel">
                           <i class="fa-solid fa-phone" style="color:#1166DD;"></i>
                           <div>${detail_vo.infocenter}</div>
                        </div>
                        
                        <div class="info_info">
                           <div class="info_detail">
                              <i class="fa-solid fa-circle-info" style="color:#1166DD;"></i>
                              <div style="font-size:15px;">상세정보</div>
                           </div>
                              <div class="new-line">${detail_vo.overview}</div>
                        </div>
                        <!-- 추가정보 #태그로 남기기 -->
                             <div class="info_add">
                                 <div class="expagerange">체험가능연령 : ${detail_vo.expagerange}</div>
                                 <div class="usefee">이용요금 : ${detail_vo.usefee}</div>
                             </div>
                     </c:if>
                      <c:if test="${param.contenttypeid==32}">
                        <div class="info_operate">
                           <i class="fa-regular fa-clock" style="color:#1166DD;"></i>
                           <div>입실시간 : ${detail_vo.checkintime}</div>
                           <div>퇴실시간 : ${detail_vo.checkouttime}</div>
                        </div>
                        <div class="info_home">
                           <i class="fa-solid fa-globe" style="color:#1166DD;"></i>
                           <div>${detail_vo.reservationurl}</div>
                        </div>
                        <div class="info_tel">
                           <i class="fa-solid fa-phone" style="color:#1166DD;"></i>
                           <div>${detail_vo.tel}</div>
                        </div>
                        
                        <div class="info_info">
                           <div class="info_detail">
                              <i class="fa-solid fa-circle-info" style="color:#1166DD;"></i>
                              <div style="font-size:15px;">상세정보</div>
                           </div>
                              <div class="new-line">${detail_vo.overview}</div>
                        </div>
                        <!-- 추가정보 #태그로 남기기 -->
                             <div class="info_add">
                                 <div class="parking">주차시설 : ${detail_vo.parking}</div>
                                 <div class="usefee">이용요금 : ${detail_vo.usefee}</div>
                                 <div class="parking">주차시설 : ${detail_vo.parking}</div>
                          </div>
                      </c:if>
                      <c:if test="${param.contenttypeid==38}">
                        <div class="info_operate">
                           <i class="fa-regular fa-clock" style="color:#1166DD;"></i>
                           <div>쉬는날 : ${detail_vo.restdate}</div>
                           <div>${detail_vo.opentime}</div>
                        </div>
                        <div class="info_home">
                           <i class="fa-solid fa-globe" style="color:#1166DD;"></i>
                           <div>${detail_vo.homepage}</div>
                        </div>
                        <div class="info_tel">
                           <i class="fa-solid fa-phone" style="color:#1166DD;"></i>
                           <div>${detail_vo.infocenter}</div>
                        </div>
                        
                        <div class="info_info">
                           <div class="info_detail">
                              <i class="fa-solid fa-circle-info" style="color:#1166DD;"></i>
                              <div style="font-size:15px;">상세정보</div>
                           </div>
                              <div class="new-line">${detail_vo.overview}</div>
                        </div>
                        <!-- 추가정보 #태그로 남기기 -->
                             <div class="info_add">
                                 <div class="parking">주차시설 : ${detail_vo.parking}</div>
                             </div>
                      </c:if>
                      <c:if test="${param.contenttypeid==39}">
                        <div class="info_operate">
                           <i class="fa-regular fa-clock" style="color:#1166DD;"></i>
                           <div>${detail_vo.opentime}</div>
                        </div>
                        <div class="info_home">
                           <i class="fa-solid fa-globe" style="color:#1166DD;"></i>
                           <div>${detail_vo.homepage}</div>
                        </div>
                        <div class="info_tel">
                           <i class="fa-solid fa-phone" style="color:#1166DD;"></i>
                           <div>${detail_vo.tel}</div>
                        </div>
                        
                        <div class="info_info">
                           <div class="info_detail">
                              <i class="fa-solid fa-circle-info" style="color:#1166DD;"></i>
                              <div style="font-size:15px;">상세정보</div>
                           </div>
                              <div class="new-line">${detail_vo.overview}</div>
                        </div>
                        <!-- 추가정보 #태그로 남기기 -->
                             <div class="info_add">
                                 <div class="parking">주차시설 : ${detail_vo.parking}</div>
                                 <div class="packing">포장가능 : ${detail_vo.packing}</div>
                                 <div class="treatmenu">취급메뉴 : ${detail_vo.treatmenu}</div>
                          </div>
                      </c:if>
               </div>
               </div>
         </body>

    </html>