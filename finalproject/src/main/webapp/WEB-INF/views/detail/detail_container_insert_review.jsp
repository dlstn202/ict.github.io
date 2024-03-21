<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function() {
	
	
	$("#registerform [name='url']").val(location.href);

});
</script>
<script type="text/javascript">
//모달이 닫혔을때 별점해제
$(document).ready(function(){
    // 리뷰 모달이 닫힐 때 실행되는 함수
    $('#review_modal').on('hidden.bs.modal', function () {
        // 별점을 선택 해제
        $(".star_intro_star .rate input[name='re_review_grade']").prop('checked', false);
        $("textarea[name='re_content']").val("");
    });
    
    // 로그인 모달이 닫힐 때 실행되는 함수
    $('#myModal').on('hidden.bs.modal', function () {
        // 별점을 선택 해제
        $(".star_intro_star .rate input[name='re_review_grade']").prop('checked', false);
    });
    
});



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



      //로그인 되었을때 리뷰 작성 모달띄우기
   if ('${empty sessionScope.user}' == "true") {
      $('#review_modal').modal('show');
   } else {
      $('#myModal').modal('show');

   }


}
</script> 

<script type="text/javascript">

<!-- 리뷰 수정/삭제 -->

function delRe(re_idx){
     
     if(confirm("정말 삭제하시겠습니까?")==false) return;

     $.ajax({
        url      :   "../review/delete.do",
        data      :   {"re_idx": re_idx },
        dataType   :   "json",
        success   :   function(res_data){
      
           if(res_data.result){

              alert('삭제 성공!!!');
              location.href = location.href;   
              
           }
        },
        error      :   function(err){
           alert(err.responseText);
        }
     });
}

</script> 

<script type="text/javascript">

let re_flag_modify = {};

function re_modify_content_form(re_idx) {
	
    re_flag_modify[re_idx] = !re_flag_modify[re_idx];
    
    let review_score = $("#re_review_grade_new"+re_idx).val();
    
    /* let matchingRadio = $("#review_score_"+re_idx).val(review_score);
    console.log(matchingRadio); */
    
    $("#review_score_" + re_idx + " input[name='re_review_grade'][value='" + review_score + "']").prop('checked', true);
    

    
    
    if (re_flag_modify[re_idx]) {
        // 수정 폼 표시
        $("#re_content_form_" + re_idx).show();
        $("#btn_review_modify_" + re_idx).show();
        $("#review_score_" + re_idx).show();
        $("#re_content" + re_idx).hide();
        $("#re_review_star" + re_idx).hide();
        $("#btn_re_modify_" + re_idx).text("취소");
    } else {
        // 수정 폼 숨김
        $("#btn_review_modify_" + re_idx).hide();
        $("#re_content_form_" + re_idx).hide();
        $("#review_score_" + re_idx).hide();
        $("#re_review_star" + re_idx).show();
        $("#re_content" + re_idx).show();
        $("#btn_re_modify_" + re_idx).text("수정");
    }
}


   function re_modify_content(f) {
      
      var re_idx			 = f.re_idx.value.trim();
      var re_content		 = f.re_content.value.trim();
      var re_review_grade	 = f.re_review_grade.value;
      console.log(re_review_grade);
      if(re_content == ''){
         alert("수정할 내용이 존재하지 않습니다.");
         f.re_content.value = '';
         f.re_content.focus();
         return;
      }
      
      $.ajax({
    	 type: "POST",
         url: urlReview+"modify.do",
         data: {re_idx:re_idx,re_content:re_content,re_review_grade:re_review_grade },
         dataType: "json",
         success: function(res_data) {
            if(res_data.result){
               alert("리뷰 수정이 완료되었습니다.");
               location.href = location.href;
            }else{
               alert("리뷰 수정 실패하였습니다.\r관리자에게 문의바랍니다.");
               location.href = location.href;               
               
            }
            
         },
         error : function(err) {
            console.log(err.responseText);
         }
         
         
      });
   }

</script>
<script type="text/javascript">

function insert_review(f) {

	   var rateFieldset = $("#registerform .rate");
	   let re_review_grade = $('#registerform input[name="re_review_grade"]:checked').val();

	   let title   = $("#registerform input[name='title']").val();
	   let pl_code = $("#registerform input[name='pl_code']").val();
	   let pl_type = $("#registerform input[name='pl_type']").val();
	   let re_content = $("#re_content").val();
	   
	   
	   if (re_review_grade == '') {
	      alert('별점을 입력하세요!');
	      f.re_review_grade.value = '';
	      f.re_review_grade.focus();
	      return;
	   }

	   if (re_content == '') {
	      alert('내용을 입력하세요!');
	      f.re_content.value = '';
	      f.re_content.focus();
	      return;
	   }
	   
	   if(confirm("등록하시겠습니까?") == false) return;
	   
	   
	   $.ajax({
	    	 type: "POST",
	         url: urlReview+"insert.do",
	         data: {title:title,pl_code:pl_code,pl_type:pl_type,re_content:re_content,re_review_grade:re_review_grade },
	         dataType: "json",
	         success: function(res_data) {
	        	 
	        	if(res_data.result == "time_out"){
	        		alert("로그인이 만료됐습니다.\r로그인후 등록해주시길바랍니다.");
	       		    $('#review_modal').modal('hide');
	       		    $('#myModal').modal('show');

	        	}
	        	 
	            if(res_data.result){
	               alert("리뷰 등록이 완료되었습니다.");
	               location.href = location.href;
	            }else{
	               alert("리뷰 등록 실패하였습니다.\r관리자에게 문의바랍니다.");
	               location.href = location.href;               
	               
	            }
	            
	         },
	         error : function(err) {
	            console.log(err.responseText);
	         }
	         
	         
	      });
	   
	}

</script>
</head>
<body>
<c:if test="${(empty user) or (user.pl_mem_grade eq '일반') }">
      <div class="star">
         <div style="text-align: center; display: flex;align-items: center;">
         
            <div class="star_intro">
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
 <!-- ---------------------리뷰모달--------------------- -->
   <div id="review_modal" class="modal fade" role="dialog">
         <div class="modal-dialog">
            <div class="modal-content custom-modal-reivew">
               <div class="modal-content ">
               
                  <!-- Modal Header -->
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                     <h4 class="modal-title" id="review_modal_title">가게명</h4>
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
                              <div class="modal-footer">
                                 <input type="file" class="photo" name="photo">
                                 <input type="button"  class="text-center btn btn-default" id="btn-register" value="등록" onclick="insert_review();">
                              </div>

                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
</body>
</html>