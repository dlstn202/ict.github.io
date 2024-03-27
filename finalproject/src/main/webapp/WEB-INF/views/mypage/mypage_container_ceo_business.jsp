<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <style>
            .contents-inner2 {padding: 2.4rem;}
.business .radioset-input:checked+.radioset-label::before {color: rgba(var(--main-ton-down-rgb), 1);background: white;}
.unique {display: flex; align-items: center; margin-bottom: 30px;}
.unique > ul .radioset+.radioset {margin-left: 0;}
.business {display: flex;flex-direction: column;align-items: stretch;}
.radioset {display: flex;align-items: center;width: auto; max-width: 200px;}
.radioset-input { margin-right: 5px; }
.uniquetext {flex-grow: 1;text-align: left;width: 100px;}
.radioset-input:checked+.radioset-label {background-color: #e0e0e0;}
.unique > ul { display: flex;flex-wrap: wrap; gap: 10px; margin-bottom: -5px;} 
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
                                        <div class="business form-wrap">
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
                                        <div class="business form-wrap">
                                            <h6 class="form-tit">업종 <span>*</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" class="inputset-input form-control" aria-label="내용"
                                                    required="">
                                            </div>
                                        </div>
                                        <div class="business form-wrap">
                                            <h6 class="form-tit">가게명 <span>*</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" class="inputset-input form-control" aria-label="내용"
                                                    required="">
                                            </div>
                                        </div>
                                        <div class="business form-wrap">
                                            <h6 class="form-tit">연락처 <span>*</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" class="inputset-input form-control" aria-label="내용"
                                                    placeholder="-없이 번호를 입력해주세요" required="">
                                            </div>
                                        </div>
                                        <div class="business form-wrap">
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
                                        <div class="business form-wrap">
                                            <h6 class="form-tit">가게소개 <span>*</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" class="inputset-input form-control" aria-label="내용"
                                                    required="">
                                            </div>
                                        </div>
                                        <div class="business form-wrap">
                                            <h6 class="form-tit">한줄소개 <span>*</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" class="inputset-input form-control" aria-label="내용"
                                                    required="">
                                            </div>
                                        </div>
                                        <div class="business form-wrap">
                                            <h6 class="form-tit">홈페이지 <span>(선택)</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" class="inputset-input form-control" aria-label="내용"
                                                    required="">
                                            </div>
                                        </div>
                                        <div class="business form-wrap">
                                            <h6 class="form-tit">부대시설 <span>*</span>
                                            </h6>
                                            <div class="inputset inputset-round">
                                                <input type="text" placeholder="예: 전기,무선인터넷,장작판매" class="inputset-input form-control" aria-label="내용"
                                                    required="">
                                            </div>
                                        </div>
                                        <!-- -------------------------------------------------------------------------------------------------------------------->
                                        <div class="business form-wrap">
                                            <div class="unique">
                                                <h6 class="form-tit">입지구분 <span>(택1)</span></h6>
                                                <ul class="radioset-wrap">
                                                    <li class="radioset">
                                                        <input id="radioset-b-1" name="radioset-b"
                                                            class="radioset-input input-line" type="checkbox" value=""
                                                          >
                                                        <label class="radioset-label" for="radioset-b-1"></label>
                                                        <span class="uniquetext radioset-text">일출명소</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-2" name="radioset-b"
                                                            class="radioset-input input-line" type="checkbox" value="">
                                                        <label class="radioset-label" for="radioset-b-2"></label>
                                                        <span class="uniquetext radioset-text">수상레저</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-3" name="radioset-b"
                                                            class="radioset-input input-line" type="checkbox" value="">
                                                        <label class="radioset-label" for="radioset-b-3"></label>
                                                        <span class="uniquetext radioset-text">수상레저</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-4" name="radioset-b"
                                                            class="radioset-input input-line" type="checkbox" value="">
                                                        <label class="radioset-label" for="radioset-b-4"></label>
                                                        <span class="uniquetext radioset-text">항공레저</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-5" name="radioset-b"
                                                            class="radioset-input input-line" type="checkbox" value="">
                                                        <label class="radioset-label" for="radioset-b-5"></label>
                                                        <span class="uniquetext radioset-text">스키</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-6" name="radioset-b"
                                                            class="radioset-input input-line" type="checkbox" value="">
                                                        <label class="radioset-label" for="radioset-b-6"></label>
                                                        <span class="uniquetext radioset-text">낚시</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-7" name="radioset-b"
                                                            class="radioset-input input-line" type="checkbox" value="">
                                                        <label class="radioset-label" for="radioset-b-7"></label>
                                                        <span class="uniquetext radioset-text">액티비티</span>
                                                    </li>

                                                    <li class="radioset">
                                                        <input id="radioset-b-8" name="radioset-b"
                                                            class="radioset-input input-line" type="checkbox" value="">
                                                        <label class="radioset-label" for="radioset-b-8"></label>
                                                        <span class="uniquetext radioset-text">걷기길</span>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="business form-wrap">
                                            <div class="unique">
                                                <h6 class="form-tit">화로대 <span>*(택1)</span></h6>
                                                <ul class="radioset-wrap">
                                                    <li class="radioset">
                                                        <input id="radioset-b-10" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value=""
                                                            >
                                                        <label class="radioset-label" for="radioset-b-10"></label>
                                                        <span class="uniquetext radioset-text">개별</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-11" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value=""
                                                            >
                                                        <label class="radioset-label" for="radioset-b-11"></label>
                                                        <span class="uniquetext radioset-text">공동취사장</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-12" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value=""
                                                            >
                                                        <label class="radioset-label" for="radioset-b-12"></label>
                                                        <span class="uniquetext radioset-text">기타</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-b-13" name="radioset-b"
                                                            class="radioset-input input-line" type="radio" value=""
                                                            >
                                                        <label class="radioset-label" for="radioset-b-13"></label>
                                                        <span class="uniquetext radioset-text">불가</span>
                                                    </li>

                                                </ul>
                                            </div>
                                        </div>

                                        <div class="business form-wrap">
                                            <div class="unique">
                                                <h6 class="form-tit">애견동물출입 <span>*(택1)</span></h6>
                                                <ul class="radioset-wrap">
                                                    <li class="radioset">
                                                        <input id="radioset-c-10" name="radioset-c"
                                                            class="radioset-input input-line" type="radio" value=""
                                                           >
                                                        <label class="radioset-label" for="radioset-c-10"></label>
                                                        <span class="uniquetext radioset-text">개별문의</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-c-11" name="radioset-c"
                                                            class="radioset-input input-line" type="radio" value=""
                                                            >
                                                        <label class="radioset-label" for="radioset-c-11"></label>
                                                        <span class="uniquetext radioset-text">가능</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-c-12" name="radioset-c"
                                                            class="radioset-input input-line" type="radio" value=""
                                                            >
                                                        <label class="radioset-label" for="radioset-c-12"></label>
                                                        <span class="uniquetext radioset-text">가능(소형견)</span>
                                                    </li>
                                                    <li class="radioset">
                                                        <input id="radioset-c-13" name="radioset-c"
                                                            class="radioset-input input-line" type="radio" value=""
                                                            >
                                                        <label class="radioset-label" for="radioset-c-13"></label>
                                                        <span class="uniquetext radioset-text">불가능</span>
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