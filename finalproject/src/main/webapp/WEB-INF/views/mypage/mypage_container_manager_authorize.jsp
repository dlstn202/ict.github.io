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
                                <td class="table_list_td" id="mem_idx">1</td>
                            </tr>
                            <tr>
                                <th class="table_list_th">아이디</th>
                                <td class="table_list_td" id="mem_id">1</td>
                            </tr>
                            <tr>
                                <th class="table_list_th">패스워드초기화</th>
                                <td class="table_list_td"><input class="btnset btnset-round btnset-line btn_pwd_initialization" type="button" value="비밀번호 초기화"></td>
                            </tr>
                            <tr>
                                <th class="table_list_th">이메일</th>
                                <td class="table_list_td" id="mem_email">camperover@naver.com</td>
                            </tr>
                            <tr>
                                <th class="table_list_th">전화번호</th>
                                <td class="table_list_td" id="mem_tel">010-0000-0000</td>
                            </tr>
                            <tr>
                                <th class="table_list_th">계정부여일자</th>
                                <td class="table_list_td" id="mem_joindate">2024.03.28</td>
                            </tr>
                            <tr>
                                <th class="table_list_th">공지사항권한</th>
                                <td class="table_list_td" id="not_man_yn">1</td>
                            </tr>
                            <tr>
                                <th class="table_list_th">회원관리권한</th>
                                <td class="table_list_td" >
                                    <select class="select" id="mem_man_yn" name="mem_man_yn">
                                        <option value="y" selected>y</option>
                                        <option value="n">n</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th class="table_list_th">신고권한</th>
                                <td class="table_list_td">
                                    <select class="select" id="rep_man_yn" name="rep_man_yn">
                                        <option value="y" selected>y</option>
                                        <option value="n">n</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th class="table_list_th">온라인문의권한</th>
                                <td class="table_list_td" id="qna_man_yn">
                                    <select class="select" id="qna_man_yn" name="qna_man_yn">
                                        <option value="y" selected>y</option>
                                        <option value="n">n</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th class="table_list_th">탈퇴여부</th>
                                <td class="table_list_td" id="mem_quit_yn">
                                    <select class="select" id="mem_quit_yn" name="mem_quit_yn">
                                        <option value="y" selected>y</option>
                                        <option value="n">n</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th class="table_list_th">탈퇴일자</th>
                                <td class="table_list_td" id="mem_quitdate">1</td>
                            </tr>
                            <tr>
                                <td colspan="2" class="btn_modify_td"><input class="btnset btnset-round" type="button" value="수정"></td>
                            </tr>
                        </table>


                    </div>
                </div>
            </div>
        </div>




    </body>
    </html>