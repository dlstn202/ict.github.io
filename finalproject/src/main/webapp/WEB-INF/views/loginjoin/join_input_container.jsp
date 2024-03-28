<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
$(document).ready(function() {
    function updateGuList(sido) {
        var guData = {
            seoul: ["강남구", "서초구", "용산구"],
            busan: ["해운대구", "수영구", "부산진구"],
            daegu: ["중구", "동구", "서구"]
        };

        var selectedGuList = guData[sido] || [];
        var guListHtml = "";
        selectedGuList.forEach(function(gu) {
            guListHtml += '<li class="selectset-item">' +
                          '<button class="selectset-link btn" type="button" data-value="' + gu.toLowerCase() + '">' +
                          '<span>' + gu + '</span>' +
                          '</button>' +
                          '</li>';
        });

        $("#districtSelect").html(guListHtml);
    }

    // 시/도 선택 이벤트 핸들러
    $(document).on("click", ".selectset-prefer", function() {
        if($(this).closest("#citySelect").length > 0) { // #citySelect 안에 있는 .selectset-prefer 요소인지 확인
            var selectedSido = $(this).data("value");
            updateGuList(selectedSido);
        }
    });
});
updateGuList("seoul");

</script>
  
</head>
<body>
<!-- [E]glamping-N2 -->
<main class="th-layout-main ">
    <!-- [S]glamping-N45 -->
    <div class="glamping-N45" data-bid="iFltwPivdp">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset">
            <h2 class="textset-tit">개인정보</h2>
            <p class="textset-desc">가입에 필요한 정보들을 입력해주세요</p>
          </div>
          <ul class="contents-list">
            <li class="contents-item item-check">
              <span>1</span>
            </li>
            <li class="contents-item item-active">
              <span>2</span>
            </li>
            <li class="contents-item">
              <span>3</span>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- [E]glamping-N45 -->
    <!-- [S]glamping-N47 -->
    <div class="glamping-N47" data-bid="KAltwpIVGl">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="contents-top">
            <h2 class="contents-tit">정보입력</h2>
            <span>* 표시는 반드시 입력하셔야 하는 항목입니다</span>
          </div>
          <form>
            <div class="contents-group">
              <div class="form-wrap">
                <h6 class="form-tit">아이디 <span>*</span>
                </h6>
                <div class="contents-form-group">
                  <div class="inputset inputset-round">
                    <input type="text" class="inputset-input form-control" aria-label="내용" required="">
                  </div>
                  <button class="btnset btnset-round" type="buton">중복확인</button>
                </div>
              </div>
              <div class="form-wrap">
                <h6 class="form-tit">비밀번호 <span>*</span>
                </h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="">
                </div>
              </div>
              <div class="form-wrap">
                <h6 class="form-tit">비밀번호 확인 <span>*</span>
                </h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="">
                </div>
              </div>
              <div class="form-wrap">
                <h6 class="form-tit">이름 <span>*</span>
                </h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="">
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
                      <input type="text" class="email_domain inputset-input form-control" aria-label="내용" required="">
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
                      <button class="selectset-link btn" type="button" value="naver.com">
                        <span>naver.com</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button" value="daum.net">
                        <span>daum.net</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button" value="hanmail.net">
                        <span>hanmail.net</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button" value="kakao.com">
                        <span>kakao.com</span>
                      </button>
                    </li>
                    <li class="selectset-item">
                      <button class="selectset-link btn" type="button" value="gmail.com">
                        <span>gmail.com</span>
                      </button>
                    </li>
                  </ul>
                </div>
              </div>


              <div class="form-wrap">
                <h6 class="form-tit">선호지역</h6>
                <div class="contents-prefer">
                  <div class="contents-form-group">
                    <div class="selectset selectset-round selectset-md">
                      <button class="selectset-toggle btn" type="button">
                        <span>시/도</span>
                      </button>
                      <ul class="selectset-list" id="citySelect">
                          <li class="selectset-item">
                            <button class="selectset-prefer btn" type="button" data-value="seoul">
                                <span>서울특별시</span>
                            </button>
                          </li>
                          <li class="selectset-item">
                            <button class="selectset-prefer btn" type="button" data-value="busan">
                                <span>부산광역시</span>
                            </button>
                          </li>
                          <li class="selectset-item">
                            <button class="selectset-prefer btn" type="button" data-value="daegu">
                                <span>대구광역시</span>
                            </button>
                          </li>
                      </ul>
                    </div>
                    <div class="selectset selectset-round selectset-md">
                      <button class="selectset-toggle btn" type="button">
                          <span>군/구</span>
                      </button>
                      <ul class="selectset-list" id="districtSelect">
                          
                      </ul>
                    </div>
                  </div>
                </div>
              </div>

            </div>

            <div class="contents-btn-group">
              <input class="btnset btnset-line btnset-round" type="button" onclick="" value="이전단계">
              <input class="btnset btnset-round" type="button" onclick="" value="다음단계">
            </div>
          </div>
        </div>
      </div>
    </form>
    <!-- [E]glamping-N47 -->
  </main>
</body>
</html>