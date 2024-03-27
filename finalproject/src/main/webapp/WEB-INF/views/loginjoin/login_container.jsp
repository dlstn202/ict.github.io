<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="join_select_modal.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
$(function(){
  $('.login_wrap > div').hide();
  $('.login_tab_ul a').click(function () {
    $('.login_wrap > div').hide().filter(this.hash).css('display', 'block');
    $('.login_tab_ul a').removeClass('active');
    $(this).addClass('active');
    return false;
  }).filter(':eq(0)').click();
  });
</script>
<script>
function gradeSelect() {

    $("#joinModal").modal('show');
		$("#joinModal").modal({backdrop : "static"});
  
}

</script>
</head>
<body>
    <!-- [E]glamping-N2 -->
    <main class="th-layout-main ">
    <!-- [S]glamping-N44 -->
    <div class="glamping-N44" data-bid="gtlTWpIoop">
      <div class="contents-inner">
        <div class="contents-container">
          <div class="textset">
            <h2 class="textset-tit">로그인</h2>
            <p class="textset-desc">캠프로버에 오신것을 진심으로 환영합니다</p>
          </div>

            <div class="login_tab">
              <ul class="login_tab_ul">
                <li class="login_tab_li l_t_1">
                  <a href="#noraml_login">일반회원</a>
                </li>
                <li class="login_tab_li l_t_2">
                  <a href="#ceo_login">기업회원</a>
                </li>       
              </ul>
            </div>
            <div class="login_wrap">
              <div id="noraml_login">
                <form>
                  <div class="contents-form">
                    <div class="inputset inputset-round">
                      <input type="text" class="inputset-input form-control" aria-label="내용" placeholder="아이디를 입력해주세요" required="">
                    </div>
                    <div class="inputset inputset-round">
                      <input type="password" class="inputset-input form-control" aria-label="내용" placeholder="비밀번호를 입력해주세요" required="">
                    </div>
                    <div class="contents-util">
                      <div class="checkset">
                        <input id="checkset-a-1-1" class="checkset-input input-round" type="checkbox" value="" checked="">
                        <label class="checkset-label" for="checkset-a-1-1"></label>
                        <span class="checkset-text">아이디저장</span>
                      </div>
                      <div class="contents-find">
                        <a href="javascript:void(0);">아이디 찾기</a>
                        <a href="javascript:void(0);">비밀번호 찾기</a>
                      </div>
                    </div>
                    <div class="contents-btnset">
                      <input class="btnset btnset-round" type="button" onclick="" value="로그인">
                      <input class="btnset btnset-round btnset-line" type="button" onclick="gradeSelect();" value="회원가입">
                    </div>
                  </div>
                </form>
                <!-- end:contents-form -->

                <div class="contents-start">
                  <span class="contents-or">
                    <span class="contents-ortext">SNS 계정으로 간편 로그인</span>
                  </span>
                  <ul class="contents-list">
                    <li>
                      <a href="javascript:void(0);">
                        <figure class="contents-figure ico-kakao">
                          <img class="contents-icon-kakao-emblem" src="${pageContext.request.contextPath}/assets/icons/ico_kakao.svg" alt="카카오톡 아이콘">
                          <span class="content-sns fontkakao">카카오 로그인</span>
                        </figure>
                      </a>
                    </li>
                    <li class="contents-item">
                      <a href="javascript:void(0);">
                        <figure class="contents-figure ico-naver">
                          <img class="contents-icon-naver-emblem" src="${pageContext.request.contextPath}/assets/icons/ico_naver_round.png" alt="네이버 아이콘">
                          <span class="content-sns fontnaver">네이버 로그인</span>
                        </figure>
                      </a>
                    </li>
                    <li class="contents-item">
                      <a href="javascript:void(0);">
                        <figure class="contents-figure ico-google">
                          <img class="contents-icon-google-emblem" src="${pageContext.request.contextPath}/assets/icons/ico_google_round.svg" alt="구글 아이콘">
                          <span class="content-sns fontgoogle">&nbsp;구글&nbsp;&nbsp;로그인</span>
                        </figure>
                      </a>
                    </li>
                  </ul>
                </div>
                <!-- end:contents-start -->
              </div>
              <div id="ceo_login">
                <form>
                  <div class="contents-form">
                    <div class="inputset inputset-round">
                      <input type="text" class="inputset-input form-control" aria-label="내용" placeholder="아이디를 입력해주세요" required="">
                    </div>
                    <div class="inputset inputset-round">
                      <input type="password" class="inputset-input form-control" aria-label="내용" placeholder="비밀번호를 입력해주세요" required="">
                    </div>
                    <div class="contents-util">
                      <div class="checkset">
                        <input id="checkset-a-1-1" class="checkset-input input-round" type="checkbox" value="" checked="">
                        <label class="checkset-label" for="checkset-a-1-1"></label>
                        <span class="checkset-text">아이디저장</span>
                      </div>
                      <div class="contents-find">
                        <a href="javascript:void(0);">아이디 찾기</a>
                        <a href="javascript:void(0);">비밀번호 찾기</a>
                      </div>
                    </div>
                    <div class="contents-btnset">
                      <input class="btnset btnset-round" type="button" onclick="" value="로그인">
                      <input class="btnset btnset-round btnset-line" type="button" onclick="gradeSelect();" value="회원가입">
                    </div>
                  </div>
                </form>
                <!-- end:contents-form -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- [E]glamping-N44 -->
  </main>


</body>
</html>