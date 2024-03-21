<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<title>Insert title here</title>
			</head>

			<body>
				<!-- ---------------------리뷰--------------------- -->
					<div id="review">
			  
					   <div class="all_score">
						  <p>전체</p>
						  <div class="review_total">${fn:length(review_list)}</div>
					   </div>
					   
					   <div class="average">
						  <div class="average_score">
							  <!-- 평균 계산 -->
							  <c:set var="totalScore" value="0"/>
							  <c:forEach var="vo" items="${review_list}">
								  <c:set var="totalScore" value="${totalScore + vo.re_review_grade}"/>
							  </c:forEach>
							  <c:set var="averageScore" value="${totalScore / fn:length(review_list)}"/>
							  <c:set var="roundedAverageScore" value="${Math.round(averageScore)}" />
							  (평균점수) ${roundedAverageScore }점
								<span class='star-rating'>
									<span style ="width:50%">
								</span>
		
						</div>
					   </div>
					   <!-- ----------------------------리뷰목록----------- -->
							<form>
							  <div id="review_bord">
			  
									 <hr>
								  <div class="review_writer" id="review_writer">금족이</div>
								  
								  <div class="review_regdate" id="re_regdate${vo.re_idx}">
									  2024-03-19
									  <c:if test="${user.pl_mem_idx eq vo.pl_mem_idx or user.pl_mem_grade eq '관리자'}">
										  <span class="del_close" >
											  <c:if test="${user.pl_mem_idx eq vo.pl_mem_idx}">
											  <span class="btn_re_modify" id="btn_re_modify_${ vo.re_idx }" onclick="re_modify_content_form('${ vo.re_idx}');">수정</span>
											  </c:if>
											  <span>x</span>
										  </span>
									  </c:if>
									  <c:if test="${user.pl_mem_idx ne vo.pl_mem_idx and user.pl_mem_grade ne '관리자'}">
										  <span class="del_close" >
											  <span id="btn_re_modify_${ vo.re_idx }">&nbsp;</span>
											  <span >&nbsp;</span>
										  </span>
									  </c:if>
								  </div>
									  
								  
								  <div class="review_write"> 						
									  <div> 
										  <fieldset class="review_score_rate" id="review_score_${vo.re_idx}" style="display: none;">
												<input type="radio" id="rating_5_0${vo.re_idx}" name="re_review_grade" value="5.0"><label for="rating_5_0${vo.re_idx}" title="5점"></label>
												<input type="radio" id="rating_4_5${vo.re_idx}" name="re_review_grade" value="4.5"><label class="half" for="rating_4_5${vo.re_idx}" title="4.5점"></label>
												<input type="radio" id="rating_4_0${vo.re_idx}" name="re_review_grade" value="4.0"><label for="rating_4_0${vo.re_idx}" title="4점"></label>
												<input type="radio" id="rating_3_5${vo.re_idx}" name="re_review_grade" value="3.5"><label class="half" for="rating_3_5${vo.re_idx}" title="3.5점"></label>
												<input type="radio" id="rating_3_0${vo.re_idx}" name="re_review_grade" value="3.0"><label for="rating_3_0${vo.re_idx}" title="3점"></label>
												<input type="radio" id="rating_2_5${vo.re_idx}" name="re_review_grade" value="2.5"><label class="half" for="rating_2_5${vo.re_idx}" title="2.5점"></label>
												<input type="radio" id="rating_2_0${vo.re_idx}" name="re_review_grade" value="2.0"><label for="rating_2_0${vo.re_idx}" title="2점"></label>
												<input type="radio" id="rating_1_5${vo.re_idx}" name="re_review_grade" value="1.5"><label class="half" for="rating_1_5${vo.re_idx}" title="1.5점"></label>
												<input type="radio" id="rating_1_0${vo.re_idx}" name="re_review_grade" value="1"><label for="rating_1_0${vo.re_idx}" title="1점"></label>
												<input type="radio" id="rating_0_5${vo.re_idx}" name="re_review_grade" value="0.5"><label class="half" for="rating_0_5${vo.re_idx}" title="0.5점"></label>
										  </fieldset>
										  <div id="re_content_form_${ vo.re_idx }" style="display: none;">
											  <input type="hidden"  name="re_idx"  value="${ vo.re_idx }">
												 <input type="hidden"  name="pl_code" value="${vo.pl_code}">
											  <input type="hidden" class="review_star2"   name="re_review_grade" id="re_review_grade_new${ vo.re_idx }" value="${ vo.re_review_grade }">
											  <textarea class=" re_con form-control" name="re_content" rows="5" id="re_content_new${ vo.re_idx }" >${ vo.re_content }</textarea>
											  <input class="modifybut3" type="button" value="수정" id="btn_review_modify_${ vo.re_idx }" onclick="re_modify_content(this.form);" style="display: none;"><!-- 진짜 수정버튼 -->
										  </div> 
										  <div class="review_star2" id="re_review_star${vo.re_idx}">별점위치함${vo.re_star}</div>
										  <div class="review_content" id="re_content${vo.re_idx}">하 집가기 글렀노</div>
									  </div>
									  
									  <div> 
										  
									  </div> 
								</div>
								 
							  </div>
									  </form>
			      
										 <!-- 게시물이 없는 경우
								  <hr>
								  <c:if test="${empty review_list}">
									  <div class="no">
										  <font color="red">등록된 리뷰가 없습니다</font>
									  </div>
								  </c:if> -->
							   
					  </div>
			  
			  </body>

			</html>