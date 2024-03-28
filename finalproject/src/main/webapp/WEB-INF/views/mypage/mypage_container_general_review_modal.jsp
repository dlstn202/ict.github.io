<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 리뷰모달 -->

<div id="GeneralReviewModal" class="modal fade custom-modal-mypage" role="dialog">
    <div class="modal-dialog custom-modal-mypage">

        <div class="modal-header generalreview_modal_header">
            <button id="closegeneralreviewModal" type="button" class="close" data-dismiss="modal">&times;</button>
            <p class="modal-title"><a onclick="">강원신재생에너지</a></p>
        </div>

        <div class="modal-content generalreview_modal_content">
            <!-- Modal body -->
            <div class="form-wrap general_review_img_x_wrap">
                <div class="form-wrap general_review_img_wrap">
                    <img src="${pageContext.request.contextPath}/assets/img/sample/img_glamping_N5_1.png">
                    <button>X</button>
                </div>
                <div class="form-wrap general_review_img_wrap">
                    <img src="${pageContext.request.contextPath}/assets/img/sample/img_glamping_N5_1.png">
                    <button>X</button>
                </div>
                <div class="form-wrap general_review_img_wrap">
                    <img src="${pageContext.request.contextPath}/assets/img/sample/img_glamping_N5_1.png">
                    <button>X</button>
                </div>
                <div class="form-wrap general_review_img_wrap">
                    <img src="${pageContext.request.contextPath}/assets/img/sample/img_glamping_N5_1.png">
                    <button>X</button>
                </div>
                <div class="form-wrap general_review_img_wrap">
                    <img src="${pageContext.request.contextPath}/assets/img/sample/img_glamping_N5_1.png">
                    <button>X</button>
                </div>
            </div>
            <div class="general_reivew_photo">
                <input type="file" class="general_reivew_photo_btn" name="photo">
            </div>

            <div class="form-wrap">
                <h6 class="form-tit">별점</h6>
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
            <div class="form-wrap">
                <h6 class="form-tit">내용</h6>
                <div class="inputset inputset-round">
                    <textarea class="inputset-textarea form-control" required="">몇번째 방문인지 모르는 강원신재생에너지... 정말 좋습니다 여러분도 방문하세요.</textarea>
                </div>
            </div>

            <div class="form-wrap">
                <div class="inputset inputset-round gl_modify_btn_wrap">
                    <input class="generalreview_btn_modify" type="button" onclick="" value="수정하기">
                    <input class="generalreview_btn_modify" type="button" onclick="" value="삭제하기">
                </div>
            </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>