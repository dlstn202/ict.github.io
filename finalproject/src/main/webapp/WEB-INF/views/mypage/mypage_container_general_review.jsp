<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

function showGeneralReviewModal(){
    $("#GeneralReviewModal").modal('show');
    $("#GeneralReviewModal").modal({backdrop : "static"});
}

</script>
<style>

/* 리뷰별점 */
.star-rating { width: 90px;}
.star-rating,.star-rating span {display: inline-block; height: 17px; overflow: hidden; background: url(${pageContext.request.contextPath}/assets/icons/ico_star_small_90px.png)no-repeat;}
.star-rating span {background-position: left bottom; line-height: 0; vertical-align: top;}


/* 리뷰 리스트 */
.my_review_list{max-width: 1280px; display: inline-block; padding-bottom: 20px; }
.review_title{font-size: 2rem; font-weight: 500; color: #fff; text-shadow: 0 0 2px rgba(0,0,0,.5);}   
.review_addr{color: #fff; text-shadow: 0 0 2px rgba(0,0,0,.5);}   
.mypage_reviewlist_btn{ position: relative; width: 26rem; height: 27rem; border-radius: 9px; border: none; margin: 10px;}
.mypage_review_info{ position: absolute; bottom: 12px; left: 12px; text-align: left;}
.mypage_review_backimage{ width:100%; height: 100%; border-radius: 9px; background-size: cover; background-position: center;}
.review_title_star{ display: flex; justify-content: space-between; width: 243px;}

/* GeneralReview Modal */
.custom-modal-mypage{ max-width: 600px !important;} 
.modal { top: 50%; left: 50%; transform: translate(-50%, -50%); width: fit-content; height: fit-content; }
.modal-dialog>.modal-body{ max-width: 380px  !important; }
.modal-title{ font-size: larger; font-weight: 700; }
.generalreview_modal_header{ background-color: #fff; padding:20px }
.generalreview_modal_content{ background-color: #fff; position: relative; background-clip: none; border: none; border-radius: 0px; -webkit-box-shadow: none; box-shadow: none; outline: 0;}
.form-wrap{ padding-right: 20px; padding-left: 20px; padding-top: 15px;}
.gl_modify_btn_wrap{ display: flex; justify-content: center; align-items: center; margin-bottom: 20px;}
.generalreview_btn_modify{ width: 90px; height: 35px; color: #fff; background-color: var(--main); border-radius: 3rem; text-align: center; border:none; margin:5px; margin-top: none;}
.general_review_img_wrap{ display: inline-block; position: relative; width: 110px; padding:0px; margin-left: 7px; }
.general_review_img_wrap>img{ width:104px; border-radius: 4px; }
.general_review_img_wrap>button{ position: absolute; top: 3px; right: 10px; border:none; background-color: transparent; color:#fff }
.general_reivew_photo{    
    margin-top: 10px;
    margin-left:405px;
    
}
.general_reivew_photo_btn{
    width: 182px;

}



/* ---------------------------------------------------------------별점*/
.star {display: flex;  justify-content: center; align-items: center; width: 800px; min-height: 100px; margin: auto;margin-top: 20px; background-color: #FFFFFF;}
.star_intro { margin-top: 10px; margin-right: 60px; font-size: 18px;}
.star_intro_star {  margin-top: 10px;}
.rate { display: inline-block; border: 0; margin-right: 15px;}
.rate>input {display: none;}
.rate>label {float: right; color: #ddd;}
.rate>label:before {display: inline-block; font-size: 4rem; padding: .3rem .2rem;margin: 0; font-family: FontAwesome; content: "\f005";}
.rate .half:before { content: "\f089 "; position: absolute; padding-right: 0;}
.rate input:checked~label,.rate label:hover,.rate label:hover~label {color: #007235 !important;}
.rate input:checked+.rate label:hover,.rate input input:checked~label:hover,.rate input:checked~.rate label:hover~label,.rate label:hover~input:checked~label {color: #007235 !important;}
.review_score_rate {display: inline-block; border: 0;}
.review_score_rate>input {display: none;}
.review_score_rate>label { float: right; color: #ddd;}
.review_score_rate>label:before { display: inline-block; font-size: 2rem; padding: .3rem .2rem; margin: 0; font-family: FontAwesome; content: "\f005";}
.review_score_rate .half:before { content: "\f089 "; position: absolute; padding-right: 0;}
.review_score_rate input:checked~label,.review_score_rate label:hover,.review_score_rate label:hover~label { color: #007235 !important;}
.review_score_rate input:checked+.review_score_rate label:hover,.review_score_rate input input:checked~label:hover.review_score_rate input:checked~.review_score_rate label:hover~label,.review_score_rate label:hover~input:checked~label {color: #007235 !important;}
.rateRed>input {display: none;}
.rateRed>label {float: right; color: #ddd;}
.rateRed>label:before { display: inline-block; font-size: 2rem; padding: .3rem .2rem; margin: 0; font-family: FontAwesome; content: "\f005";}
.rateRed .half:before {content: "\f089 "; position: absolute; padding-right: 0;}
.rateRed input:checked~label {color: #007235 !important;}
.rateAver { display: inline-block; border: 0; margin-right: 15px;}
.rateAver>input {display: none;}
.rateAver>label {float: right; color: #ddd;}
.rateAver>label:before { display: inline-block; font-size: 3.8rem; padding: .3rem .2rem; margin: 0; font-family: FontAwesome; content: "\f005";}
.rateAver .half:before { content: "\f089 "; position: absolute; padding-right: 0;}
#re_review_grade_new { color: #007235; transform: scale(0.6);margin-left: 78px;}
.rateRed {color: #007235; display: inline-block;border: 0;}

</style>
</head>
<body>


    <div id="GeneralReviewModal" class="modal fade custom-modal-mypage" role="dialog">
		<div class="modal-dialog custom-modal-mypage">

            <div class="modal-header generalreview_modal_header">
                <button id="closegeneralreviewModal" type="button" class="close" data-dismiss="modal">&times;</button>
                <p class="modal-title">리뷰 수정</p>
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
                        <textarea class="inputset-textarea form-control" required="">몇번째 방문인지 모르는 강원신재새에너지... 정말 좋습니다 여러분도 방문하세요.</textarea>
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



    <main class="th-layout-main">
        <div id="my_review">
            <div class="my_info_title">내 리뷰</div>
        </div>
        <div class="my_review_list">
            <button class="mypage_reviewlist_btn"  onclick="showGeneralReviewModal();">

                <div class="mypage_review_backimage" style="background-image:url();"></div>


                <div class="mypage_review_info">
                    <div class="review_addr">강원특별자치도 평창군</div>
                    <div class="review_title_star">
                        <div class="review_title">강원신재생에너지</div>
                        <div>
                            <span class='star-rating'>
                            <span style ="width:100%">
                            </span>
                        </div>
                    </div>
                </div>
            </button>

            <button class="mypage_reviewlist_btn"  onclick="showGeneralReviewModal();">
                <div class="mypage_review_backimage" style="background-image:url('${pageContext.request.contextPath}/assets/img/sample/img_glamping_N5_2.png');"></div>

                <div class="mypage_review_info">
                    <div class="review_addr">강원특별자치도 평창군</div>
                    <div class="review_title_star">
                        <div class="review_title">강원신재생에너지</div>
                        <div>
                            <span class='star-rating'>
                            <span style ="width:100%">
                            </span>
                        </div>
                    </div>
                </div>
            </button>

            <button class="mypage_reviewlist_btn"  onclick="showGeneralReviewModal();">
                <div class="mypage_review_backimage" style="background-image:url('${pageContext.request.contextPath}/assets/img/sample/img_glamping_N6_1.png');"></div>

                <div class="mypage_review_info">
                    <div class="review_addr">강원특별자치도 평창군</div>
                    <div class="review_title_star">
                        <div class="review_title">강원신재생에너지</div>
                        <div>
                            <span class='star-rating'>
                            <span style ="width:100%">
                            </span>
                        </div>
                    </div>
                </div>
            </button>
            <button class="mypage_reviewlist_btn" onclick="showGeneralReviewModal();">
                <div class="mypage_review_backimage" style="background-image:url('${pageContext.request.contextPath}/assets/img/sample/img_glamping_N7_1.png');"></div>

                <div class="mypage_review_info">
                    <div class="review_addr">강원특별자치도 평창군</div>
                    <div class="review_title_star">
                        <div class="review_title">강원신재생에너지</div>
                        <div>
                            <span class='star-rating'>
                            <span style ="width:100%">
                            </span>
                        </div>
                    </div>
                </div>
            </button>
            <button class="mypage_reviewlist_btn" onclick="showGeneralReviewModal();">
                <div class="mypage_review_backimage" style="background-image:url('${pageContext.request.contextPath}/assets/img/sample/img_glamping_N5_2.png');"></div>

                <div class="mypage_review_info">
                    <div class="review_addr">강원특별자치도 평창군</div>
                    <div class="review_title_star">
                        <div class="review_title">강원신재생에너지</div>
                        <div>
                            <span class='star-rating'>
                            <span style ="width:100%">
                            </span>
                        </div>
                    </div>
                </div>
            </button>
            <button class="mypage_reviewlist_btn"  onclick="showGeneralReviewModal();">
                <div class="mypage_review_backimage" style="background-image:url('${pageContext.request.contextPath}/assets/img/sample/img_glamping_N5_2.png');"></div>

                <div class="mypage_review_info">
                    <div class="review_addr">강원특별자치도 평창군</div>
                    <div class="review_title_star">
                        <div class="review_title">강원신재생에너지</div>
                        <div>
                            <span class='star-rating'>
                            <span style ="width:100%">
                            </span>
                        </div>
                    </div>
                </div>
            </button>
           
        </div> 
        



                <nav class="pagiset pagiset-circ">
                    <div class="pagiset-ctrl">
                      <a class="pagiset-link pagiset-first" href="javascript:void(0)">
                        <span class="visually-hidden">처음</span>
                      </a>
                    </div>
                    <div class="pagiset-ctrl">
                      <a class="pagiset-link pagiset-prev" href="javascript:void(0)">
                        <span class="visually-hidden">이전</span>
                      </a>
                    </div>
                    <div class="pagiset-list">
                      <a class="pagiset-link active-fill" href="javascript:void(0)">1</a>
                      <a class="pagiset-link" href="javascript:void(0)">2</a>
                      <a class="pagiset-link" href="javascript:void(0)">3</a>
                    </div>
                    <div class="pagiset-ctrl">
                      <a class="pagiset-link pagiset-next" href="javascript:void(0)">
                        <span class="visually-hidden">다음</span>
                      </a>
                    </div>
                    <div class="pagiset-ctrl">
                      <a class="pagiset-link pagiset-last" href="javascript:void(0)">
                        <span class="visually-hidden">마지막</span>
                      </a>
                    </div>
                  </nav>
            </div>
    </main>
</body>
</html>