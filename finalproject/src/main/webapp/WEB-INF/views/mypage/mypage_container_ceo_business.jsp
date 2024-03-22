<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <style>
            .contents-inner2 {
                padding: 2.4rem;
            }

            .form-wrap .radioset-input:checked+.radioset-label::before {
                color: rgba(var(--main-ton-down-rgb), 1);
            }

            .unique {
                width: 100%;
            }



            /* -- */
        </style>
    </head>

    <body>
        <main class="th-layout-main">
            <div id="my_keep">
                <div class="my_info_title">내 캠핑장</div>
                <!-- [S]mypage_container_info  -->
                <div id="info_content">
                    <form>
                        <div class="glamping-N47" data-bid="KAltwpIVGl">
                            <div class="contents-inner2">
                                <div class="contents-container container-md">
                                    <div class="contents-top">
                                        <span>* 표시는 반드시 입력하셔야 하는 항목입니다</span>
                                    </div>
                                    <div class="contents-group">
                                        <div class="form-wrap">
                                            <h6 class="form-tit">사업자번호<span>*</span>
                                            </h6>
                                            <div class="contents-form-group">
                                                <div class="inputset inputset-round">
                                                    <input type="text" class="inputset-input form-control"
                                                        placeholder="000-00-00000 형식으로 입력하세요" aria-label="내용"
                                                        required="아이디">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-wrap">
                                            <h6 class="form-tit">업종 <span>*</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" class="inputset-input form-control" aria-label="내용"
                                                    required="">
                                            </div>
                                        </div>
                                        <div class="form-wrap">
                                            <h6 class="form-tit">가게명 <span>*</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" class="inputset-input form-control" aria-label="내용"
                                                    required="">
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
                                            <h6 class="form-tit">주소 <span>*</span>
                                            </h6>
                                            <div class="contents-address">
                                                <div class="contents-form-group">
                                                    <div class="inputset inputset-round">
                                                        <input type="text" class="inputset-input form-control"
                                                            aria-label="내용">
                                                    </div>
                                                    <input class="btnset btnset-round btnset-line" type="button"
                                                        value="우편번호 검색">
                                                </div>
                                                <div class="inputset inputset-round">
                                                    <input type="text" class="inputset-input form-control"
                                                        aria-label="내용" required="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-wrap">
                                            <h6 class="form-tit">가게소개 <span>*</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" class="inputset-input form-control" aria-label="내용"
                                                    required="">
                                            </div>
                                        </div>
                                        <div class="form-wrap">
                                            <h6 class="form-tit">한줄소개 <span>*</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" class="inputset-input form-control" aria-label="내용"
                                                    required="">
                                            </div>
                                        </div>
                                        <div class="form-wrap">
                                            <h6 class="form-tit">홈페이지 <span>(선택)</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" class="inputset-input form-control" aria-label="내용"
                                                    required="">
                                            </div>
                                        </div>
                                        <!-- -------------------------------------------------------------------------------------------------------------------->
                                        <div class="form-wrap">
                                            <h6 class="form-tit">입지구분 <span>(택1)</span></h6>
                                            <div class="unique">
                                                <ul class="radioset-wrap">
                                                    <li class="radioset">
                                                        <input id="radioset-b-1" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value=""
                                                            checked="">
                                                        <label class="radioset-label" for="radioset-b-1"></label>
                                                        <span class="radioset-text">해변</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-2" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value="">
                                                        <label class="radioset-label" for="radioset-b-2"></label>
                                                        <span class="radios et-text">섬</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-3" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value="">
                                                        <label class="radioset-label" for="radioset-b-3"></label>
                                                        <span class="radioset-text">섬</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-3" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value="">
                                                        <label class="radioset-label" for="radioset-b-3"></label>
                                                        <span class="radioset-text">섬</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-3" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value="">
                                                        <label class="radioset-label" for="radioset-b-3"></label>
                                                        <span class="radioset-text">섬</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-4" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value="">
                                                        <label class="radioset-label" for="radioset-b-4"></label>
                                                        <span class="radioset-text">섬섬섬섬섬섬</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-5" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value="">
                                                        <label class="radioset-label" for="radioset-b-5"></label>
                                                        <span class="radioset-text">섬섬섬섬섬섬</span>
                                                    </li>

                                                </ul>
                                            </div>


                                        </div>

                                        <!-- <div class="form-wrap">
                                            <h6 class="form-tit">입지구분 <span>(택1)</span></h6>
                                            <div class="radioset-wrap">
                                                <div class="radioset">
                                                    <input id="radioset-b-1" name="radioset-b" class="radioset-input input-line" type="radio" value="" checked="">
                                                    <label class="radioset-label" for="radioset-b-1"></label>
                                                    <span class="radioset-text">해변</span>
                                                </div>
                                            </div>
                                            <div class="radioset">
                                                <input id="radioset-b-2" name="radioset-b" class="radioset-input input-line" type="radio" value="">
                                                <label class="radioset-label" for="radioset-b-2"></label>
                                                <span class="radioset-text">섬</span>
                                            </div>
                                            <div class="radioset">
                                                <input id="radioset-b-3" name="radioset-b" class="radioset-input input-line" type="radio" value="">
                                                <label class="radioset-label" for="radioset-b-3"></label>
                                                <span class="radioset-text">산</span>
                                            </div>
                                            <div class="radioset">
                                                <input id="radioset-b-4" name="radioset-b" class="radioset-input input-line" type="radio" value="">
                                                <label class="radioset-label" for="radioset-b-4"></label>
                                                <span class="radioset-text">숲</span>
                                            </div>
                                            <div class="radioset">
                                                <input id="radioset-b-5" name="radioset-b" class="radioset-input input-line" type="radio" value="">
                                                <label class="radioset-label" for="radioset-b-5"></label>
                                                <span class="radioset-text">계곡</span>
                                            </div>
                                            <div class="radioset">
                                                <input id="radioset-b-6" name="radioset-b" class="radioset-input input-line" type="radio" value="">
                                                <label class="radioset-label" for="radioset-b-6"></label>
                                                <span class="radioset-text">강</span>
                                            </div>
                                            <div class="radioset">
                                                <input id="radioset-b-7" name="radioset-b" class="radioset-input input-line" type="radio" value="">
                                                <label class="radioset-label" for="radioset-b-7"></label>
                                                <span class="radioset-text">호수</span>
                                            </div>
                                            <div class="radioset">
                                                <input id="radioset-b-8" name="radioset-b" class="radioset-input input-line" type="radio" value="">
                                                <label class="radioset-label" for="radioset-b-8"></label>
                                                <span class="radioset-text">도심</span>
                                            </div>
                                            <div class="radioset">
                                                <input id="radioset-b-9" name="radioset-b" class="radioset-input input-line" type="radio" value="">
                                                <label class="radioset-label" for="radioset-b-9"></label>
                                                <span class="radioset-text">도심</span>
                                            </div>
                                            <div class="radioset-wrap">
                                            <div class="radioset">
                                                <input id="radioset-b-9" name="radioset-b" class="radioset-input input-line" type="radio" value="">
                                                <label class="radioset-label" for="radioset-b-9"></label>
                                                <span class="radioset-text">도심</span>
                                            </div>
                                        </div> -->
                                        <!-- -------------------------------------------------------------------------------------------------------------------->
                                    </div>
                                </div>
                                <div class="contents-btn-group">
                                    <input type="button" class="btnset btnset-round" value="수정">
                                </div>
                            </div>
                        </div>
                </div>
                </form>
            </div>
            <!-- [E]mypage_container_info  -->
            </div>
        </main>
    </body>

    </html>