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
  .search_qna{
    margin-right: 20px;
    border: 1px solid rgba(var(--main-ton-down-rgb), 0.11);
    border-radius: 8px;
  }
  .search_text{
    margin-right: 10px;
  }

  /* -------------------------------- */
  .table.qna_list_table tbody:last-child {
    border-bottom: 1px solid #ddd;
    
  }
  .qna_list_th_wrap{
    background-color: rgba(var(--main-ton-down-rgb), 0.1);
    height: 50px;
  }
  .qna_list_td_wrap{
    height: 50px;
  }
  .qna_list_td,.qna_list_title{
    width: 100px; /* 필요에 따라 조정 */
    max-width: 100px;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis !important;
  }
  .qna_list_td,.qna_list_th{
    text-align: center;
    vertical-align: middle !important;
  }
  

  .qna_list_td_idx, .qna_list_td_yn{
      width: 75px;
      text-align: center;
      align-content: center;

  }
  .qna_list_td_btn{
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
  .inquiry_insert{
    cursor: pointer;
  }
  .inquiry_insert:hover{
    background-color: rgba(var(--main-ton-up-rgb));
  }
  .qna_list_td_wrap{
    /* transition: 0.3s; */
    cursor: pointer;
  }
  .qna_list_title{
    align-content: center;
  }
  .qna_content{
    
    padding: 10px;
  }
  
  .qna_reply{
    padding: 10px;
    margin-top: 10px;
    
    background-color: rgba(var(--main-ton-down-rgb), 0.1);
  }
  .qna_reply_title,.qna_content_title{
    margin-bottom: 10px;
  }
  .reply_btn{
    float: right;
    padding-bottom: 2px;
    width: 90px; height: 35px; color: #fff; background-color: var(--main); border-radius: 3rem; text-align: center; border:none; margin:5px; margin-top: none;
  }
  .reply_btn:hover{
    background-color: rgba(var(--main-ton-up-rgb));
  }
  .qna_reply_content {
    width: 100%;
    resize: none;
    border: none;
    padding: 10px;
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
                $.getScript("${pageContext.request.contextPath}/assets/js/domain.js");
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
    <div id="admin_qna">
        <div class="my_info_title">문의 답변</div>
    </div>
    <form action="">
      <div class="search_wrap">
        <select  class="search_qna">
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
    <div id="qna_list">
      <table class="table qna_list_table">
          <tr class="qna_list_th_wrap">
              <th class="qna_list_th">번호</th>
              <th class="qna_list_th">제목</th>
              <th class="qna_list_th">작성자</th>
              <th class="qna_list_th">작성일자</th>
              <th class="qna_list_th">답변상태</th>
          </tr>

          <tr class="qna_list_td_wrap" >
              <td class="qna_list_td_idx">1</td>
              <td class="qna_list_title" data-toggle="collapse" data-target="#demo,#demo_reply">금쪽일</td>
              <td class="qna_list_td">금쪽일</td>
              <td class="qna_list_td">2024.03.22</td>
              <td class="qna_list_td">답변대기</td>
          </tr>
          <tr id="demo" class="collapse">
            <td class="space"></td>
            <td colspan="4">
              <div class="qna_content">
                <div class="qna_content_title">[문의내용]</div>
                <div class="qna_content_content">내용 내용</div>
              </div>
              <div class="qna_reply">
                <div class="qna_reply_title">[답변]</div>
                <textarea class="qna_reply_content" rows="5" placeholder="답변 내용을 작성하세요."></textarea>
              </div>
              <input class="reply_btn" type="button" value=" 답변작성 ">
            </td>
            
          </tr>
          <tr class="qna_list_td_wrap">
              <td class="qna_list_td_idx">2</td>
              <td class="qna_list_title">금쪽일</td>
              <td class="qna_list_td">금쪽일</td>
              <td class="qna_list_td">2024.03.22</td>
              <td class="qna_list_td">답변대기</td>
          </tr>
          <tr class="qna_list_td_wrap">
              <td class="qna_list_td_idx">3</td>
              <td class="qna_list_title">금쪽일</td>
              <td class="qna_list_td">금쪽일</td>
              <td class="qna_list_td">2024.03.22</td>
              <td class="qna_list_td">답변대기</td>
          </tr> 
          <tr class="qna_list_td_wrap">
            <td class="qna_list_td_idx">1</td>
            <td class="qna_list_title">금쪽일</td>
            <td class="qna_list_td">금쪽일</td>
            <td class="qna_list_td">2024.03.22</td>
            <td class="qna_list_td">답변대기</td>
        </tr>
        <tr class="qna_list_td_wrap">
            <td class="qna_list_td_idx">2</td>
            <td class="qna_list_title">금쪽일</td>
            <td class="qna_list_td">금쪽일</td>
            <td class="qna_list_td">2024.03.22</td>
            <td class="qna_list_td">답변대기</td>
        </tr>
        <tr class="qna_list_td_wrap">
            <td class="qna_list_td_idx">3</td>
            <td class="qna_list_title">금쪽일</td>
            <td class="qna_list_td">금쪽일</td>
            <td class="qna_list_td">2024.03.22</td>
            <td class="qna_list_td">답변대기</td>
        </tr>
      </table>
      
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