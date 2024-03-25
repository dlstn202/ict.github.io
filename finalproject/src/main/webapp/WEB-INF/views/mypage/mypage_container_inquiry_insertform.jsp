<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <main class="th-layout-main">
        <div id="my_keep">
            <div class="my_info_title">문의작성하기</div>
        </div>
    </main>
    
        <div id="box">
            <div class="">
                <div class="">
                   <table class="table">
                       <tr>
                          <th>제목</th>
                          <td><input  style="width: 100%;"></td>
                       </tr>
                       <tr>
                          <th>작성자</th>
                          <td><input  style="width: 100%;"value="로그인한아이디자동들어옴"></td>
                       </tr>
                       <tr>
                          <th>내용</th>
                          <td><textarea style="width: 100%;" rows="5" name="b_content"></textarea></td>
                       </tr>
                       
                       <tr>
                          <td colspan="2" align="center">
                              <input type="button" value="새글쓰기" 
                                     onclick="send(this.form);">
                              <input type="button" value="목록보기" 
                                     onclick="inquiry();">
                          </td>
                       </tr>
                   </table> 
                </div>
            </div>
        </div>
   
</body>
</html>