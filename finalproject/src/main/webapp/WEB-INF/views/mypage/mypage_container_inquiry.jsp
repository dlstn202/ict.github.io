<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  .box{
    margin: auto;
  }
  .table{
    height: 50px;
  }
  .search_wrap{
    display: flex;
    margin-bottom: 20px;
    float: right;
    
  }
  .search_inquiry{
    margin-right: 20px;
    border: 1px solid rgba(var(--main-ton-down-rgb), 0.11);
    border-radius: 8px;
  }
  .search_text{
    margin-right: 10px;
  }

  /* -------------------------------- */
  .table.memberlist_table tbody:last-child {
    border-bottom: 1px solid #ddd;
    
  }
  .member_list_th_wrap{
    background-color: rgba(var(--main-ton-down-rgb), 0.1);
    height: 50px;
  }
  .memberlist_td_wrap{
    height: 50px;
  }
  .memberlist_td,.memberlist_th{
    text-align: center;
    vertical-align: middle !important;
  }

  .memberlist_td_idx, .memberlist_td_yn{
      width: 75px;
      text-align: center;

  }
  .memberlist_td_btn{
      width: 110px;
  }
  .memberlist_btn{
      width: 90px;
      height: 35px;
      color: #fff;
      background-color: var(--main);
      border-radius: 3rem;
      text-align: center;
      border:none;

  }
  .inquiry_insert_wrap{
    display: flex;
    flex-direction: row-reverse;
  }
  
  .inquiry_insert{
    cursor: pointer;
    color:white;
    background-color: var(--main);
    border:  1px solid rgba(var(--main-ton-down-rgb), 0.1);
    border-radius: 5px;
  }
  
</style>
<script>
  // 문의 내역
  function inquiry_insertform(){
        $.ajax({
            url: "mypage_container_inquiry_insertform.do",
            success: function (res_data) {
                $("#container_content").html(res_data);
                changeLiColor();
                $("#inquiry").css("color", "#00AF52");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }
</script>
</head>
<body>
  <main class="th-layout-main">
    <div id="my_inquiry">
        <div class="my_info_title">문의내역</div>
    </div>
    <form action="">
      <div class="search_wrap">
        <select  class="search_inquiry">
          <option value="all">전체보기</option>
          <option value="name">이름</option>
          <option value="subject">제목</option>
          <option value="content">내용</option>
          <option value="subject_content">제목+내용</option>
        </select>
        <div class="inputset inputset-border-bottom">
          <button class="inputset-icon icon-right icon-search btn" type="button" aria-label="아이콘"></button>
          <input type="text" class="inputset-input form-control" placeholder="내용을 입력하세요" aria-label="내용">
        </div>
            <!-- <input class="search_text" placeholder="검색어를 입력하세요">
        <div ><i class="fa-solid fa-magnifying-glass" style="color: #003a1b;"></i></div> -->
      </div>
    </form> 
    <div id="ceo_memberlist">
      <table class="table memberlist_table">
          <tr class="member_list_th_wrap">
              <th class="memberlist_th">번호</th>
              <th class="memberlist_th">제목</th>
              <th class="memberlist_th">작성일자</th>
              <th class="memberlist_th">답변상태</th>
          </tr>

          <tr class="memberlist_td_wrap">
              <td class="memberlist_td_idx">1</td>
              <td class="memberlist_td">금쪽일</td>
              <td class="memberlist_td">2024.03.22</td>
              <td class="memberlist_td">답변대기</td>
          </tr>
          <tr class="memberlist_td_wrap">
              <td class="memberlist_td_idx">2</td>
              <td class="memberlist_td">금쪽일</td>
              <td class="memberlist_td">2024.03.22</td>
              <td class="memberlist_td">답변대기</td>
          </tr>
          <tr class="memberlist_td_wrap">
              <td class="memberlist_td_idx">3</td>
              <td class="memberlist_td">금쪽일</td>
              <td class="memberlist_td">2024.03.22</td>
              <td class="memberlist_td">답변대기</td>
          </tr> 
          <tr class="memberlist_td_wrap">
            <td class="memberlist_td_idx">1</td>
            <td class="memberlist_td">금쪽일</td>
            <td class="memberlist_td">2024.03.22</td>
            <td class="memberlist_td">답변대기</td>
        </tr>
        <tr class="memberlist_td_wrap">
            <td class="memberlist_td_idx">2</td>
            <td class="memberlist_td">금쪽일</td>
            <td class="memberlist_td">2024.03.22</td>
            <td class="memberlist_td">답변대기</td>
        </tr>
        <tr class="memberlist_td_wrap">
            <td class="memberlist_td_idx">3</td>
            <td class="memberlist_td">금쪽일</td>
            <td class="memberlist_td">2024.03.22</td>
            <td class="memberlist_td">답변대기</td>
        </tr>
      </table>
      <div class="inquiry_insert_wrap" >
        <div class="inquiry_insert" onclick="inquiry_insertform();">
           &nbsp;글쓰기&nbsp;  
        </div>
      </div>
    <div>
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
  </main> 
    
</body>
</html>