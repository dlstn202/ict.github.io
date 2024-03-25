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
                display: flex;
                align-items: center;
                margin-bottom: 40px;

            }


            .radioset-wrap .radioset+.radioset {
                margin-left: 0;
            }


            .form-wrap {
                display: flex;
                flex-direction: column;
                align-items: stretch;
            }



            .radioset-wrap {
                display: flex;
                flex-wrap: wrap;
                gap: 10px;
            }

            .radioset {
                display: flex;
                align-items: center;

                width: auto;
                /* 기본적으로 내용에 맞게 너비 설정 */
                max-width: 200px;
                /* 너비의 최대값 설정 */
            }

            .radioset-input {
                margin-right: 5px;
            }

            .radioset-text {
                flex-grow: 1;
                text-align: left;
                width: 100px;
            }

            /* Ensure that the labels align nicely with the inputs */
            /* .radioset-label {
  display: block;
  position: relative;
} */



            /* You may want to style the checked state differently */
            .radioset-input:checked+.radioset-label {
                background-color: #e0e0e0;
                /* Other styles as needed */
            }

            ul {
                margin-bottom: -10px;
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
                                            <div class="unique">
                                                <h6 class="form-tit">입지구분 <span>(택1)</span></h6>

                                                <ul class="radioset-wrap">
                                                    <li class="radioset">
                                                        <input id="radioset-b-1" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value=""
                                                            checked="">
                                                        <label class="radioset-label" for="radioset-b-1"></label>
                                                        <span class="radioset-text">일출명소</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-2" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value="">
                                                        <label class="radioset-label" for="radioset-b-2"></label>
                                                        <span class="radioset-text">수상레저</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-3" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value="">
                                                        <label class="radioset-label" for="radioset-b-3"></label>
                                                        <span class="radioset-text">수상레저</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-4" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value="">
                                                        <label class="radioset-label" for="radioset-b-4"></label>
                                                        <span class="radioset-text">항공레저</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-5" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value="">
                                                        <label class="radioset-label" for="radioset-b-5"></label>
                                                        <span class="radioset-text">스키</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-6" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value="">
                                                        <label class="radioset-label" for="radioset-b-6"></label>
                                                        <span class="radioset-text">낚시</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-7" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value="">
                                                        <label class="radioset-label" for="radioset-b-7"></label>
                                                        <span class="radioset-text">액티비티</span>
                                                    </li>

                                                    <li class="radioset">
                                                        <input id="radioset-b-8" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value="">
                                                        <label class="radioset-label" for="radioset-b-8"></label>
                                                        <span class="radioset-text">걷기길</span>
                                                    </li>
                                                </ul>
                                            </div>
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