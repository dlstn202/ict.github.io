<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>

    <body>
        <main class="th-layout-main ">
            <div id="my_info">
                <div class="my_info_title">내 정보 관리</div>
                 <div id="photo">
                    <img src="${pageContext.request.contextPath}/assets/img/sample/img_glamping_N5_1.png" alt="">
                    <input class="btn_modify_photo" type="button" value="수정">
                </div>
                <!-- [S]mypage_container_info  -->
                <div id="info_content">
                    <form>
                        <div class="glamping-N47" data-bid="KAltwpIVGl">
                            <div class="contents-inner">
                                <div class="contents-container container-md">
                                    <div class="contents-top">
                                        <span>* 표시는 반드시 입력하셔야 하는 항목입니다</span>
                                    </div>
                                    <div class="contents-group">
                                        <div class="form-wrap">
                                            <h6 class="form-tit">아이디 <span>*</span>
                                            </h6>
                                            <div class="contents-form-group">
                                                <div class="inputset inputset-round">
                                                    <input type="text" class="inputset-input form-control"
                                                        aria-label="내용" required="아이디">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-wrap">
                                            <h6 class="form-tit">비밀번호 <span>*</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" class="inputset-input form-control" aria-label="내용"
                                                    required="">
                                            </div>
                                        </div>
                                        <div class="form-wrap">
                                            <h6 class="form-tit">비밀번호 확인 <span>*</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" class="inputset-input form-control" aria-label="내용"
                                                    required="">
                                            </div>
                                        </div>
                                        <div class="form-wrap">
                                            <h6 class="form-tit">이름 <span>*</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" class="inputset-input form-control" aria-label="내용"
                                                    required="">
                                            </div>
                                        </div>
                                        <div class="form-wrap">
                                            <h6 class="form-tit">이메일 <span>*</span>
                                            </h6>
                                            <div class="contents-form-group">
                                              <div class="inputset inputset-round">
                                                <div class="contents-mail">
                                                  <input type="text" class="inputset-input form-control" aria-label="내용" required="">
                                                  <span class="joininput_email">@</span>
                                                  <input type="text" class="email_domain inputset-input form-control" value=" ">
                                                </div>
                                              </div>
                                            </div>
                                            <div class="selectset selectset-round selectset-md">
                                              <button class="selectset-toggle btn" type="button">
                                                <span>선택해주세요</span>
                                              </button>
                                              <ul class="selectset-list">
                                                <li class="selectset-item">
                                                  <button class="selectset-link btn" type="button" data-value="직접입력" selected="">
                                                    <span>직접입력</span>
                                                  </button>
                                                </li>
                                                <li class="selectset-item">
                                                  <button class="selectset-link btn" type="button" data-value="naver.com">
                                                    <span>naver.com</span>
                                                  </button>
                                                </li>
                                                <li class="selectset-item">
                                                  <button class="selectset-link btn" type="button" data-value="daum.net">
                                                    <span>daum.net</span>
                                                  </button>
                                                </li>
                                                <li class="selectset-item">
                                                  <button class="selectset-link btn" type="button" data-value="hanmail.net">
                                                    <span>hanmail.net</span>
                                                  </button>
                                                </li>
                                                <li class="selectset-item">
                                                  <button class="selectset-link btn" type="button" data-value="kakao.com">
                                                    <span>kakao.com</span>
                                                  </button>
                                                </li>
                                                <li class="selectset-item">
                                                  <button class="selectset-link btn" type="button" data-value="gmail.com">
                                                    <span>gmail.com</span>
                                                  </button>
                                                </li>
                                              </ul>
                                            </div>
                                          </div>
                                        <div class="form-wrap">
                                            <h6 class="form-tit">연락처 <span>*</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" class="inputset-input form-control" aria-label="내용"
                                                    placeholder="-없이 번호를 입력해주세요" required="">
                                            </div>
                                        </div>
                                        <div class="form-wrap">
                                            <h6 class="form-tit">주소</h6>
                                            <div class="contents-address">
                                                <div class="contents-form-group">
                                                    <div class="inputset inputset-round">
                                                        <input type="text" class="inputset-input form-control"
                                                            aria-label="내용">
                                                    </div>
                                                    <button class="btnset btnset-round btnset-line" type="buton">우편번호 검색</button>
                                                    <button class="btnset btnset-round btnset-line" type="buton">수정</button>
                                                </div>
                                                <div class="inputset inputset-round">
                                                    <input type="text" class="inputset-input form-control"
                                                        aria-label="내용" required="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="contents-btn-group">
                                        <!-- <input type="button" class="btnset btnset-round" value="수정"> -->
                                        <button class="btnset btnset-round btnset-line" type="buton">수정</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- [E]mypage_container_info  -->
                <!-- [S]sns  -->
                <div id="sns_box">
                    <div id="sns">
                        <div id="sns_title">SNS 계정 연동하기</div>
                        <div id="sns_content">SNS 계정을 연동하면 해당 계정을 사용해 바로 로그인 할 수 있습니다.</div>
                        <div class="sns_brand">
                            <div class="sns_brand_one">
                                <img src="${pageContext.request.contextPath}/assets/icons/ico_naver_round.png" alt="">
                                <div class="company">Naver</div>
                                <input type="button" value="연동하기">
                                <input type="button" value="연동해제" style="display: none;">
                            </div>
                            <div class="sns_brand_one kakao">
                                <div class="kakao_logo">
                                    <img src="${pageContext.request.contextPath}/assets/icons/ico_kakao.svg" alt="">
                                </div>
                                <div class="company ">Kakao</div>
                                <input type="button" value="연동하기" style="display: none;">
                                <input type="button" value="연동해제" >
                            </div>
                            <div class="sns_brand_one">
                                <img src="${pageContext.request.contextPath}/assets/icons/ico_google.svg" alt="">
                                <div class="company">Google</div>
                                <input type="button" value="연동하기">
                                <input type="button" value="연동해제" style="display: none;">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- [E]sns  -->



            </div>
        </main>
    </body>

    </html>