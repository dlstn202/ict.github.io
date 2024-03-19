<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰작성</title>
</head>
<body>
   <c:if test="${(empty user) or (user.pl_mem_grade eq '일반') }">
         <div class="star">
            <div style="text-align: center; display: flex;align-items: center;">
            
               <div class="star_intro">
                   <!-- 로그인이 안된경우
                  <c:if test="${ empty sessionScope.user }">
                     <p>이 장소의 후기를 남겨주세요.</p>
                  </c:if> -->
                  <!-- 로그인이 된 경우 -->
                  <c:if test="${ not empty sessionScope.user }">
                     <p>${ sessionScope.user.pl_mem_name }</p>님 후기를 남겨주세요.
                  </c:if>
   
                  <c:choose>
                     <c:when test="${empty sessionScope.user}">
                        <p>이 장소의 후기를 남겨주세요.</p>
                     </c:when>
                     <c:otherwise>
                        <p>${sessionScope.user.pl_mem_name}님후기를 남겨주세요.</p>
                     </c:otherwise>
                  </c:choose>
               </div>
               
               <div>
                  <div class="star_intro_star">
                     <fieldset class="rate">
                        <input type="radio" id="rating10" name="re_review_grade" value="5.0" onclick="handleRatingClick(this.value)"><label for="rating10" title="5점"></label>
                               <input type="radio" id="rating9" name="re_review_grade" value="4.5" onclick="handleRatingClick(this.value)"><label class="half" for="rating9" title="4.5점"></label>
                               <input type="radio" id="rating8" name="re_review_grade" value="4.0" onclick="handleRatingClick(this.value)"><label for="rating8" title="4점"></label>
                             <input type="radio" id="rating7" name="re_review_grade" value="3.5" onclick="handleRatingClick(this.value)"><label class="half" for="rating7" title="3.5점"></label>
                             <input type="radio" id="rating6" name="re_review_grade" value="3.0" onclick="handleRatingClick(this.value)"><label for="rating6" title="3점"></label>
                              <input type="radio" id="rating5" name="re_review_grade" value="2.5" onclick="handleRatingClick(this.value)"><label class="half" for="rating5" title="2.5점"></label>
                               <input type="radio" id="rating4" name="re_review_grade" value="2.0" onclick="handleRatingClick(this.value)"><label for="rating4" title="2점"></label>
                             <input type="radio" id="rating3" name="re_review_grade" value="1.5" onclick="handleRatingClick(this.value)"><label class="half" for="rating3" title="1.5점"></label>
                                  <input type="radio" id="rating2" name="re_review_grade" value="1" onclick="handleRatingClick(this.value)"><label for="rating2" title="1점"></label>
                               <input type="radio" id="rating1" name="re_review_grade" value="0.5" onclick="handleRatingClick(this.value)"><label class="half" for="rating1" title="0.5점"></label>
                     </fieldset>
                  </div>
               </div>
            </div>
         </div>
   </c:if>
   </body>
</html>