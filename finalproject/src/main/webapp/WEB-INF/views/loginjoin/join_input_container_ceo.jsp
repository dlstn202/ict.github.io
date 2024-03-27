<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
    const regular_bizrno = /^[1-6]{1}[0-9]{2}-[0-9]{2}-[0-9]{5}$/;

    function check_bizrno(f){

        let bizrno = document.getElementById('bizrno').value;

        if(regular_bizrno.test(bizrno)==false){
            alert("사업자 등록번호 형식에 맞는 번호를 입력해주세요");
            document.getElementById('bizrno').value = '';
            document.getElementById('bizrno').focus();
            return;
        }

        alert("형식에 맞는 사업자 등록번호입니다.");
    }
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
          <div class="contents-group">
            <div class="form-wrap">
              <h6 class="form-tit">사업자번호 <span>*</span>
              </h6>
              <div class="contents-form-group">
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" name="bizrno" id="bizrno" aria-label="내용" required="" placeholder="000-00-00000 형식으로 입력하세요">
                </div>
                <button class="btnset btnset-round" type="buton" onclick="check_bizrno();">형식확인</button>
              </div>
            </div>
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
              <h6 class="form-tit">연락처 <span>*</span>
              </h6>
              <div class="inputset inputset-round">
                <input type="text" class="inputset-input form-control" aria-label="내용" placeholder="-없이 번호를 입력해주세요" required="">
              </div>
            </div>
            <div class="form-wrap">
              <h6 class="form-tit">주소</h6>
              <div class="contents-address">
                <div class="contents-form-group">
                  <div class="inputset inputset-round">
                    <input type="text" class="inputset-input form-control" aria-label="내용">
                  </div>
                  <button class="btnset btnset-round btnset-line" type="buton">우편번호 검색</button>
                </div>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="">
                </div>
              </div>
            </div>
          </div>
          <input type="hidden" name="mem_grade" value="${mem_grade}">
          <div class="contents-btn-group">
            <a href="javascript:void(0);" class="btnset btnset-line btnset-round">이전단계</a>
            <a href="javascript:void(0);" class="btnset btnset-round" onclick="">다음단계</a>
          </div>
        </div>
      </div>
    </div>
    <!-- [E]glamping-N47 -->
  </main>
</body>
</html>