<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
    function notify_detail(nofity_idx) {
      $.ajax({
            url: "mypage_container_manager_notify_one.do",
            data: {nofity_idx:nofity_idx},
            success: function (res_data) {
                $("#container_content").html(res_data);

            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.table(jqXHR)
            }
        });
    }
</script>
</head>
<body>
    <!-- [S]manager_notify -->
    <main class="th-layout-main">
        <div id="manager_notify">
            <div class="my_info_title">신고 내역</div>
            <div class="notify_list_review">
                <div class="table_title">리뷰 신고 내역</div>
                <table class="table table_list">
                    <tr>
                        <th class="table_list_th">신고 번호</th>
                        <th class="table_list_th">리뷰번호</th>
                        <th class="table_list_th notify_content">리뷰내용</th>
                        <th class="table_list_th">신고유형</th>
                        <th class="table_list_th">신고일자</th>
                        <th class="table_list_th">신고자</th>
                        <th class="table_list_th">처리내역</th>
                    </tr>
                    <tr onclick="notify_detail(1);" class="table_one">
                        <td class="table_list_td_idx">1</td>
                        <td class="table_list_td_idx">2</td>
                        <td class="table_list_td notify_content">adf</td>
                        <td class="table_list_td">adf</td>
                        <td class="table_list_td">2024-03-25</td>
                        <td class="table_list_td">금쪽이</td>
                        <td class="table_list_td">처리대기</td>
                    </tr>
                   
                </table>
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
            </div>
            <div class="table_list_camp">
                <div class="table_title">캠핑장 신고 내역</div>
                <table class="table table_list">
                    <tr>
                        <th class="table_list_th">신고 번호</th>
                        <th class="table_list_th">캠핑장<br>번호</th>
                        <th class="table_list_th notify_content">내용</th>
                        <th class="table_list_th">신고유형</th>
                        <th class="table_list_th">신고일자</th>
                        <th class="table_list_th">신고자</th>
                        <th class="table_list_th">처리내역</th>
                    </tr>
                    <tr onclick="notify_detail(0);" class="table_one">
                        <td class="table_list_td_idx">1</td>
                        <td class="table_list_td_idx">2</td>
                        <td class="table_list_td notify_content">adf</td>
                        <td class="table_list_td">adf</td>
                        <td class="table_list_td">2024-03-25</td>
                        <td class="table_list_td">금쪽이</td>
                        <td class="table_list_td">처리대기</td>
                    </tr>
                </table>
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
            </div>
        </div>
    </main>
   

    
    <!-- [E]manager_notify -->
</body>
</html>