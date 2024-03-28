<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <script>
            function openAuthorizeModal(){
                $("#ManagerAuthorizeModal").modal('show');
                $("#ManagerAuthorizeModal").modal({backdrop : "static"});
            }
        </script>
    </head>

    <body>
        <main class="th-layout-main ">
            <!-- [S] my_authorize -->
            <div id="my_authorize">
                <div class="my_info_title">관리자 계정/권한 관리</div>
                
                <div id="manager_list">
                    <div id="manager_list_title">
                        <div>관리자 계정</div>
                        <input class="btnset btnset-round" type="button" value="계정부여">
                    </div>
                    <div id="manager_list_table">
                        <table class="table table_list">
                            <tr>
                                <th rowspan="2" class="table_list_th">번호</th>
                                <th rowspan="2" class="table_list_th">아이디</th>
                                <th rowspan="2" class="table_list_th">이름</th>
                                <th rowspan="2" class="table_list_th">전화번호</th>
                                <th colspan="4" class="table_list_th">관리자권한</th>
                                <th rowspan="2" class="table_list_th">탈퇴<br>여부</th>
                            </tr>
                            <tr>
                                
                                <th class="table_list_th">공지사항<br>FAQ</th>
                                <th class="table_list_th">회원관리</th>
                                <th class="table_list_th">신고</th>
                                <th class="table_list_th">온라인<br>문의</th>
                            </tr>
                            <tr class="table_one" onclick="openAuthorizeModal();">
                                <td class="table_list_td_idx center num">5</td>
                                <td class="table_list_td center">test</td>
                                <td class="table_list_td center name">테스트</td>
                                <td class="table_list_td center tel">010-5465-4584</td>
                                <td class="table_list_td center yn">Y</td>
                                <td class="table_list_td center yn">Y</td>
                                <td class="table_list_td center yn">Y</td>
                                <td class="table_list_td center yn">Y</td>
                                <td class="table_list_td center yn">N</td>
                            </tr>
                        </table>
                    </div>
                </div>
                 
            </div>
            <!-- [E] my_authorize -->
        </main>

        <!-- 계정 수정 모달 -->
        <div id="ManagerAuthorizeModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content ">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <p class="modal-title"><a onclick="">관리자 계정 수정</a></p>
                    </div>
        
                    <div class="modal-body ">
                        <table class="table table_list">
                            <tr>
                                <th class="table_list_th">관리자 번호</th>
                                <td class="table_list_td">1</td>
                            </tr>
                        </table>
                        <div class="textarea_parent">
                            <textarea class="form-control" name="" id="" ></textarea>
                        </div>

                    </div>
                </div>
            </div>
        </div>




    </body>
    </html>