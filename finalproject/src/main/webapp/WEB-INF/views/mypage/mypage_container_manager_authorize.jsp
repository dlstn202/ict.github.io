<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        
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
                                <th class="table_list_th">관리자<br>번호</th>
                                <th class="table_list_th">아이디</th>
                                <th class="table_list_th">이름</th>
                                <th class="table_list_th">이메일</th>
                                <th class="table_list_th">전화번호</th>
                                <th class="table_list_th">공지사항<br>FAQ</th>
                                <th class="table_list_th">회원관리</th>
                                <th class="table_list_th">전화번호</th>
                                <th class="table_list_th">탈퇴여부</th>
                            </tr>
                            <tr>
                                <td class="table_list_td_idx">5</td>
                                <td class="table_list_td center">test</td>
                                <td class="table_list_td center name">테스트</td>
                                <td class="table_list_td center email">dfdfdf@naver.com</td>
                                <td class="table_list_td center tel">010-5465-4584</td>
                                <td class="table_list_td center yn">N</td>
                            </tr>
                        </table>
                    </div>
                </div>
                 
            </div>
            <!-- [E] my_authorize -->
        </main>
    </body>

    </html>