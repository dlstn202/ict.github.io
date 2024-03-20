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

<script>
   //모달이 닫혔을때 별점해제
   $(document).ready(function(){
       // 리뷰 모달이 닫힐 때 실행되는 함수
       $('#review_modal').on('hidden.bs.modal', function () {
           // 별점을 선택 해제
           $(".star_intro_star .rate input[name='re_review_grade']").prop('checked', false);
           $("textarea[name='re_content']").val("");
       });
       
      //  // 로그인 모달이 닫힐 때 실행되는 함수
      //  $('#myModal').on('hidden.bs.modal', function () {
      //      // 별점을 선택 해제
      //      $(".star_intro_star .rate input[name='re_review_grade']").prop('checked', false);
      //  });
       
   });
   
</script>  

<script>  
   //별점 클릭 이벤트 핸들러
   function handleRatingClick(value) {
   
      let ratingValue = parseFloat(value);
         
      // 별점 입력 요소들을 찾음
      let radioButtons = document
            .querySelectorAll('.rate input[name="re_review_grade"]');
   
      // 각 별점 입력 요소에 선택된 값 적용
      radioButtons.forEach(function(radioButton) {
         if (parseFloat(radioButton.value) == ratingValue) {
            radioButton.checked = true;
         } else {
            radioButton.checked = false;
         }
      });
   
      //    //로그인 되었을때 리뷰 작성 모달띄우기
      // if ('${not empty sessionScope.user}' == "true") {
      //    
      // } else {
      //    $('#myModal').modal('show');
   
      // }
     
   }

   function handleRatingClick() {
  // 이곳에 로그인 상태를 체크하는 코드 추가 가능

  $('#review_modal').modal('show');
}

</script> 

<body>
<!-- <c:if test="${(empty user) or (user.pl_mem_grade eq '일반') }"> -->
      <div class="star">
         <div style="text-align: center; display: flex;align-items: center;">
         
            <div class="star_intro">
               <!-- 로그인이 안된경우-->
               <!-- <c:if test="${ empty sessionScope.user }"> -->
                  <p>이 장소의 후기를 남겨주세요.</p>
               <!-- </c:if> -->
               <!-- 로그인이 된 경우 -->
               <!-- <c:if test="${ not empty sessionScope.user }">
                  <p>${ sessionScope.user.pl_mem_name }</p>님 후기를 남겨주세요.
               </c:if> -->

               <!-- <c:choose>
                  <c:when test="${empty sessionScope.user}">
                     <p>이 장소의 후기를 남겨주세요.</p>
                  </c:when>
                  <c:otherwise>
                     <p>${sessionScope.user.pl_mem_name}님후기를 남겨주세요.</p>
                  </c:otherwise>
               </c:choose> -->
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
<!-- </c:if> -->
 <!-- ---------------------리뷰모달--------------------- -->
   <div id="review_modal" class="modal fade" role="dialog">
         <div class="modal-dialog">
            <div class="modal-content custom-modal-reivew">
               <div class="modal-content ">
               
                  <!-- Modal Header -->
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                     <h4 class="modal-title" id="review_modal_title">${detail_vo.title}</h4>
                  </div>
      
                  <!-- Modal body -->
                  <div class="modal-body">
                     <div class="container">
                        <form id="registerform">
                        <input type="hidden" name="title" value="">
                        <input type="hidden" name="pl_code" value="">
                        <input type="hidden" name="pl_type" value="">
                        <input type="hidden" name="url" value="">
                           <div>
                              <fieldset class="rate">
                                    <input type="radio" id="rating10" name="re_review_grade" value="5.0"><label for="rating10" title="5점"></label>
                                           <input  type="radio" id="rating9" name="re_review_grade" value="4.5" ><label class="half" for="rating9" title="4.5점"></label>
                                           <input type="radio" id="rating8" name="re_review_grade" value="4.0"><label for="rating8" title="4점"></label>
                                         <input type="radio" id="rating7" name="re_review_grade" value="3.5"><label class="half" for="rating7" title="3.5점"></label>
                                         <input type="radio" id="rating6" name="re_review_grade" value="3.0"><label for="rating6" title="3점"></label>
                                          <input type="radio" id="rating5" name="re_review_grade" value="2.5"><label class="half" for="rating5" title="2.5점"></label>
                                           <input type="radio" id="rating4" name="re_review_grade" value="2.0"><label for="rating4" title="2점"></label>
                                         <input type="radio" id="rating3" name="re_review_grade" value="1.5"><label class="half" for="rating3" title="1.5점"></label>
                                              <input type="radio" id="rating2" name="re_review_grade" value="1"><label for="rating2" title="1점"></label>
                                           <input type="radio" id="rating1" name="re_review_grade" value="0.5"><label class="half" for="rating1" title="0.5점"></label>
                              </fieldset>
                         </div>
                              <div class="form-group mb-3">
                                 <textarea class="form-control" id="re_content" name="re_content" rows="5" maxlength="1000" placeholder="작성내용은 마이페이지와 장소상세에 노출되며 매장주를 포함한 다른 사용자들이 볼 수 있으니, 서로를 배려하는 마음을 담아 작성해 주세요.">${ vo.re_content }</textarea>
                                 
                              </div>
                           <input type="button"  class="text-center btn btn-default" id="btn-register" value="등록">
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
</body>
</html>