<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="mypage_container_general_review_modal.jsp" %>
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


/* 리뷰 목록 */
.my_review_list{max-width: 1280px; display: inline-block; padding-bottom: 20px; }
.mypage_review_info{ position: absolute; bottom: 12px; left: 12px; text-align: left;}
.mypage_reviewlist_heart_btn{ display: inline-block; }

.mypage_reviewlist_btn{ position: relative; width: 26rem; height: 27rem; border-radius: 9px; border: none; margin: 10px; margin-top: 4px;
    margin-bottom: 17px;}
.mypage_review_backimage{ width:100%; height: 100%; border-radius: 9px; background-size: cover; background-position: center; box-shadow: inset 0px -52px 34px -18px;}
.rev_keep_heart{ display: flex; width: 26rem; justify-content: flex-end;}
.review_title_star{ display: flex; justify-content: space-between; width: 243px;}
.review_title{font-size: 2rem; font-weight: 500; color: #fff; text-shadow: 0 0 2px rgba(0,0,0,.9); }   
.review_addr{color: #fff; text-shadow: 0 0 2px rgba(0,0,0,.9); }     

.fa-heart{
    color: red;
    font-size: 2.2rem;
}

.hea_num{
    height: 2.4rem;
    font-size: 2.1rem;
    color: rgba(var(--main-rgb),1);
    
}

/* GeneralReview Modal */
.custom-modal-mypage{ max-width: 600px !important;} 
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
.general_reivew_photo{ margin-top: 10px; margin-left:405px; }
.general_reivew_photo_btn{ width: 182px; }



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
    
    <!-- 리뷰 목록 -->

    <main class="th-layout-main">
        <div id="my_review">
            <div class="my_info_title">내 리뷰</div>
        </div>
        <div class="my_review_list">

            <div class="mypage_reviewlist_heart_btn">
                <div class="rev_keep_heart"><i class="fa-regular fa-heart"></i>&nbsp;<div class="hea_num">12</div>
            </div>
            <button class="mypage_reviewlist_btn"  onclick="showGeneralReviewModal();">

                <div class="mypage_review_backimage" style="background-image:url('${pageContext.request.contextPath}/assets/img/sample/img_glamping_N5_1.png');"></div>
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

            <div class="mypage_reviewlist_heart_btn">
                <div class="rev_keep_heart"><i class="fa-regular fa-heart"></i>&nbsp;<div class="hea_num">0</div>
            </div>
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
            </div>

            <div class="mypage_reviewlist_heart_btn">
                <div class="rev_keep_heart"><i class="fa-regular fa-heart"></i>&nbsp;<div class="hea_num">120</div>
            </div>
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
            </div>

            <div class="mypage_reviewlist_heart_btn">
                <div class="rev_keep_heart"><i class="fa-regular fa-heart"></i>&nbsp;<div class="hea_num">5</div>
            </div>
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
            </div>

            <div class="mypage_reviewlist_heart_btn">
                <div class="rev_keep_heart"><i class="fa-regular fa-heart"></i>&nbsp;<div class="hea_num">9</div>
            </div>
            <button class="mypage_reviewlist_btn" onclick="showGeneralReviewModal();">
                <div class="mypage_review_backimage" style="background-image:url('${pageContext.request.contextPath}/assets/img/sample/img_glamping_N5_2.png');"></div>

                <div class="mypage_review_info">
                    <div class="review_addr_heart">
                        <div class="review_addr">강원특별자치도 평창군</div>
                        <div class="review_heart">1♡</div>
                    </div>
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

            <div class="mypage_reviewlist_heart_btn">
                <div class="rev_keep_heart"><i class="fa-regular fa-heart"></i>&nbsp;<div class="hea_num">1</div>
            </div>
            <button class="mypage_reviewlist_btn"  onclick="showGeneralReviewModal();">
                <div class="mypage_review_backimage" style="background-image:url();"></div>
                <div class="mypage_review_info">
                    <div class="review_addr_heart">
                        <div class="review_addr">강원특별자치도 평창군</div>
                        <div class="review_heart">1♡</div>
                    </div>
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
        </div> 
        

        <!-- 페이징 -->

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