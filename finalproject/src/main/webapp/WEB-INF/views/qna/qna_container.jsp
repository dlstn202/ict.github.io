<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        var radiosetTexts = document.querySelectorAll('.radioset-text');
    
        radiosetTexts.forEach(function(text) {
            text.addEventListener('click', function() {
                var inputId = this.getAttribute('data-for');
                var input = document.getElementById(inputId);
                if(input) {
                    input.checked = true;
                }
            });
        });
    });
</script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // 도메인 선택 버튼들에 대한 클릭 이벤트 리스너를 추가합니다.
        document.querySelectorAll('.selectset-link').forEach(function(button) {
            button.addEventListener('click', function() {
                var value = this.getAttribute('data-value'); // 버튼의 data-value 값을 가져옵니다.
                var emailInputs = document.querySelectorAll('.contents-mail .inputset-input'); // 이메일 입력 필드들을 선택합니다.
                var domainInput = emailInputs[emailInputs.length - 1]; // 마지막 입력 필드(도메인 입력 필드)를 선택합니다.
                
                if (value === "직접입력") {
                    // "직접입력"이 선택된 경우, 도메인 입력 필드를 비워 사용자가 직접 입력할 수 있도록 합니다.
                    domainInput.value = "";
                    domainInput.removeAttribute('readonly'); // 읽기 전용 속성을 제거하여 입력 가능하게 합니다.
                } else {
                    // 그 외의 경우, 도메인 입력 필드에 선택된 도메인을 설정하고 읽기 전용으로 만듭니다.
                    domainInput.value = value;
                    domainInput.setAttribute('readonly', true); // 읽기 전용 속성을 추가하여 수정할 수 없도록 합니다.
                }
    
                // 선택된 도메인을 버튼에 표시합니다.
                document.querySelector('.selectset-toggle span').textContent = this.textContent;
            });
        });
    });
</script>
</head>
<body>

    <!-- [E]glamping-N11 -->
    <!-- [S]glamping-N42 -->
    <div class="glamping-N42" data-bid="KHltWpT6mP">
        <div class="contents-inner">
            <div class="contents-container container-md">
                <h2 class="form-tit">개인정보 수집 동의 <span>(필수)</span></h2>
                
                <ul class="contents-list">
                    <li class="contents-item">
                        <strong>온라인 문의(문의) 개인정보수집동의</strong>
                        <p> 이용자 본인은 아래의 개인정보가 사실임을 확인하며, 아래와 같이 개인정보를 수집 및 이용하는 것에 동의합니다. </p>
                    </li>
                    <li class="contents-item">
                        <strong>1. 개인정보의 수집 및 이용 목적</strong>
                        <p> 원활한 고객상담, 각종 서비스의 제공, 정확한 본인 확인을 위한 개인정보를 수집하고 있습니다. <br> 수집한 개인정보는 수집∙이용목적 이외에 고객의 동의 없이 다른 용도로 이용하거나 제3자에게 제공하지 않습니다. </p>
                    </li>
                </ul>
                <div class="radioset-wrap">
                    <div class="radioset">
                        <input id="radioset-a-1-1" name="radioset-a" class="radioset-input input-line" type="radio" value="" checked="">
                        <label class="radioset-label" for="radioset-a-1-1"></label>
                        <span class="radioset-text" data-for="radioset-a-1-1">약관에 동의합니다.</span>
                    </div>
                    <div class="radioset">
                        <input id="radioset-a-1-2" name="radioset-a" class="radioset-input input-line" type="radio" value="">
                        <label class="radioset-label" for="radioset-a-1-2"></label>
                        <span class="radioset-text" data-for="radioset-a-1-2">동의하지 않습니다.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- [E]glamping-N42 -->
    <!-- [S]glamping-N43 -->
    <div class="glamping-N43" data-bid="BNlTWpT6SZ">
        <div class="contents-inner">
            <div class="contents-container container-md">
                <h2 class="contents-tit">정보입력</h2>
                <div class="contents-group">
                    <div class="form-wrap">
                        <h6 class="form-tit">상담구분 <span>*</span></h6>
                        <div class="radioset-wrap">
                            <div class="radioset">
                                <input id="radioset-b-1" name="radioset-b" class="radioset-input input-line" type="radio" value="" checked="">
                                <label class="radioset-label" for="radioset-b-1"></label>
                                <span class="radioset-text">예약문의</span>
                            </div>
                        <div class="radioset">
                            <input id="radioset-b-2" name="radioset-b" class="radioset-input input-line" type="radio" value="">
                            <label class="radioset-label" for="radioset-b-2"></label>
                            <span class="radioset-text">환불문의</span>
                        </div>
                    <div class="radioset">
                        <input id="radioset-b-3" name="radioset-b" class="radioset-input input-line" type="radio" value="">
                        <label class="radioset-label" for="radioset-b-3"></label>
                        <span class="radioset-text">고객불만</span>
                    </div>
                    <div class="radioset">
                        <input id="radioset-b-4" name="radioset-b" class="radioset-input input-line" type="radio" value="">
                        <label class="radioset-label" for="radioset-b-4"></label>
                        <span class="radioset-text">기타</span>
                    </div>
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">성명 <span>*</span></h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="">
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">연락처 <span>*</span></h6>
                <div class="inputset inputset-round">
                    <input type="text" class="inputset-input form-control" aria-label="내용" placeholder="-없이 번호를 입력해주세요" required="">
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">이메일 <span>*</span></h6>
                <div class="contents-form-group">
                    <div class="inputset inputset-round">
                        <div class="contents-mail">
                            <input type="text" class="inputset-input form-control" aria-label="내용" required="">
                            <span class="qna_email">@</span>
                            <input type="text" class="inputset-input form-control" aria-label="내용" required="">
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
                    </ul>
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">제목 <span>*</span></h6>
                <div class="inputset inputset-round">
                    <input type="text" class="inputset-input form-control" aria-label="내용" required="">
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">문의내용 <span>*</span></h6>
                <div class="inputset inputset-round">
                    <textarea class="inputset-textarea form-control" required=""></textarea>
                    <div class="inputset-langth">
                        <span class="inputset-count">0</span>
                        <span class="inputset-total">/2000 Byte</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="contents-btn-group">
            <a href="javascript:void(0);" class="btnset btnset-round">문의하기</a>
            <a href="javascript:void(0);" class="btnset btnset-line btnset-round">취소하기</a>
        </div>
    </div>
</div>

</body>
</html>