<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠프로버</title>
</head>
<body>
   <!-- [S]glamping-N1 -->
  <header class="glamping-N1" data-bid="KdltWpHPRk">
    <div class="header-container">
      <div class="header-left" onclick="location.href='main.do'">
        <h1 class="header-title">
          <a href="javascript:void(0)">
            <img src="${pageContext.request.contextPath}/assets/img/sample/img_logo_white.png" alt="로고">
          </a>
        </h1>
      </div>
      <div class="header-center">
        <ul class="header-member">
          <li>
            <a href="javascript:void(0)">로그인</a>
          </li>
          <li>
            <a href="javascript:void(0)">회원가입</a>
          </li>
        </ul>
        <ul class="header-gnblist">
          <li class="header-gnbitem" onclick="location.href='info_main.do'">
            <a class="header-gnblink" href="javascript:void(0)" >
              <span>캠핑안내</span>
            </a>
          </li>
          <li class="header-gnbitem" onclick="location.href='story_main.do'">
            <a class="header-gnblink" href="javascript:void(0)" >
              <span>스토리</span>
            </a>
          <li class="header-gnbitem" onclick="location.href='notice_main.do'">
            <a class="header-gnblink" href="javascript:void(0)">
              <span>공지사항</span>
            </a>
          </li>
          <li class="header-gnbitem" onclick="location.href='faq_main.do'">
            <a class="header-gnblink" href="javascript:void(0)">
              <span>FAQ</span>
            </a>
          </li>
          <li class="header-gnbitem" onclick="location.href='qna_main.do'">
            <a class="header-gnblink" href="javascript:void(0)">
              <span>온라인문의</span>
            </a>
          </li>
        </ul>
      </div>
      <div class="header-right">
        <div class="header-utils">
          <a href="javascript:void(0);" class="btn-user header-utils-btn" onclick="location.href='login_main.do'">
            <img src="${pageContext.request.contextPath}/assets/icons/ico_user_white.svg" alt="유저 아이콘">
          </a>
          <button class="btn-momenu header-utils-btn">
            <img src="${pageContext.request.contextPath}/assets/icons/ico_menu_white.svg" alt="모바일메뉴">
          </button>
          <button class="btn-moclose header-utils-btn">
            <img src="${pageContext.request.contextPath}/assets/icons/ico_close_white.svg" alt="닫기">
          </button>
        </div>
      </div>
    </div>
    <div class="header-fullmenu fullmenu-right">
      <div class="fullmenu-wrapper">
        <div class="fullmenu-head">
          <h4 class="fullmenu-title">
            <a href="javascript:void(0)">
              <img src="${pageContext.request.contextPath}/assets/img/sample/img_logo_white.png" alt="로고">
            </a>
          </h4>
          <ul class="fullmenu-member">
            <li>
              <a href="javascript:void(0)">로그인</a>
            </li>
            <li>
              <a href="javascript:void(0)">회원가입</a>
            </li>
          </ul>
        </div>
        <ul class="fullmenu-gnblist">
          <li class="fullmenu-gnbitem">
            <a class="fullmenu-gnblink" href="javascript:void(0)">
              <span>캠핑안내</span>
            </a>
          </li>
          <li class="fullmenu-gnbitem">
            <a class="fullmenu-gnblink" href="javascript:void(0)">
              <span>스토리</span>
            </a>
          </li>
          <li class="fullmenu-gnbitem">
            <a class="fullmenu-gnblink" href="javascript:void(0)">
              <span>공지사항</span>
            </a>
          </li>
          <li class="fullmenu-gnbitem">
            <a class="fullmenu-gnblink" href="javascript:void(0)">
              <span>QNA</span>
            </a>
          </li>
          <li class="fullmenu-gnbitem">
            <a class="fullmenu-gnblink" href="javascript:void(0)">
              <span>온라인문의</span>
            </a>
          </li>
        </ul>
      </div>
      <button class="fullmenu-close">
        <img src="${pageContext.request.contextPath}/assets/icons/ico_close_white.svg" alt="닫기">
      </button>
    </div>
  </header>
</body>
</html>