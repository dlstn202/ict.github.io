<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

    $(function(){
      $('.memberlist_wrap > div').hide();
      $('.memberlist_tab_ul a').click(function () {
        $('.memberlist_wrap > div').hide().filter(this.hash).css('display', 'block');
        $('.memberlist_tab_ul a').removeClass('active');
        $(this).addClass('active');
        return false;
      }).filter(':eq(0)').click();
      });
    </script>

<style>


/* login tab : 일반/사장 나누기 */
.memberlist_tab{position: relative;}
.memberlist_tab_ul{ margin-top: 35px; margin-bottom: 35px; width: 810px; display: flex; position: relative;}
.memberlist_tab_ul li{ flex: 1 1; text-align: center;}
.memberlist_tab_ul li a:before{content:""; position:absolute; left:0; top:0px; width:100%; }
.memberlist_tab_ul li a.active{ border: 2px solid rgba(var(--main-ton-down-rgb),1); border-bottom: none;}
.memberlist_tab_ul li a{ position:relative; display:block; background: rgba(var(--main-ton-down-rgb),0.1); border-bottom:2px solid rgba(var(--main-ton-down-rgb),1); color: #000; padding:0 30px; line-height:46px; text-decoration:none; font-size:16px;}
.memberlist_tab_ul li a.active{background:#fff; color:#000000; }
.memberlist_tab_button{ width: 250px; height: 45px;}
.memberlist_tab_text{ font-size: var(--fs-p2);}

.memberlist_table{
    width: 810px;

}

.table>tbody>tr>th,.table>tbody>tr>td{
    vertical-align: middle; 
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

.memberlist_th{
    text-align: center;
    
}

.memberlist_td{
    text-align: center;

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

</style>

</head>
<body>
    <main class="th-layout-main">
        <div id="my_manager_member">
            <div class="my_info_title">회원정보</div>
        </div>

        <div class="memberlist_tab">
            <ul class="memberlist_tab_ul">
                <li class="memberlist_tab_li">
                    <a href="#normal_memberlist">일반회원</a>
                </li>
                <li class="memberlist_tab_li">
                    <a href="#ceo_memberlist">기업회원</a>
                </li>
                <li class="memberlist_tab_li">
                    <a href="#admin_memberlist">관리자회원</a>
                </li>       
            </ul>
          </div>

        <div class="memberlist_wrap">
            <div id="normal_memberlist">
                <table class="table memberlist_table">
                    <tr>
                        <th class="memberlist_th" rowspan="2">회원번호</th>
                        <th class="memberlist_th" rowspan="2">회원명</th>
                        <th class="memberlist_th" rowspan="2">아이디</th>
                        <th class="memberlist_th" colspan="3">SNS 연동</th>
                        <th class="memberlist_th" rowspan="2">등급</th>
                        <th class="memberlist_th" rowspan="2">신고누적</th>
                        <th class="memberlist_th" rowspan="2">로그인여부</th>
                        <th class="memberlist_th" rowspan="2"></th>
                    </tr>
                    <tr class="memberlist_tr">

                        <th class="memberlist_th">카카오</th>
                        <th class="memberlist_th">네이버</th>
                        <th class="memberlist_th">구글</th>
                    </tr>

                    <tr>
                        <td class="memberlist_td_idx">0</td>
                        <td class="memberlist_td">금쪽맘</td>
                        <td class="memberlist_td">gold0</td>
                        <td class="memberlist_td">O</td>
                        <td class="memberlist_td">-</td>
                        <td class="memberlist_td">-</td>
                        <td class="memberlist_td">일반</td>
                        <td class="memberlist_td">0</td>
                        <td class="memberlist_td_yn">y</td>
                        <td class="memberlist_td_btn"><input class="memberlist_btn" type="button" onclick="" value="수정하기"></td>
                    </tr>
                </table>
            </div>

            <div id="ceo_memberlist">
                <table class="table memberlist_table">
                    <tr>
                        <th class="memberlist_th">회원번호</th>
                        <th class="memberlist_th">회원명</th>
                        <th class="memberlist_th">사업자번호</th>
                        <th class="memberlist_th">아이디</th>
                        <th class="memberlist_th">등급</th>
                        <th class="memberlist_th">신고누적</th>
                        <th class="memberlist_th">로그인여부</th>
                        <th class="memberlist_th"></th>
                    </tr>

                    <tr>
                        <td class="memberlist_td_idx">1</td>
                        <td class="memberlist_td">금쪽일</td>
                        <td class="memberlist_td">100-00-00000</td>
                        <td class="memberlist_td">gold1</td>
                        <td class="memberlist_td">사장</td>
                        <td class="memberlist_td">0</td>
                        <td class="memberlist_td">y</td>
                        <td class="memberlist_td_btn"><input class="memberlist_btn" type="button" onclick="" value="수정하기"></td>
                    </tr>
                </table>
            </div>

            
            <div id="admin_memberlist">
                <table class="table memberlist_table">
                    <tr>
                        <th class="memberlist_th">회원번호</th>
                        <th class="memberlist_th">회원명</th>
                        <th class="memberlist_th">아이디</th>
                        <th class="memberlist_th">등급</th>
                        <th class="memberlist_th"></th>
                    </tr>

                    <tr>
                        <td class="memberlist_td_idx">1</td>
                        <td class="memberlist_td">금쪽일</td>
                        <td class="memberlist_td">gold1</td>
                        <td class="memberlist_td">관리자</td>
                        <td class="memberlist_td_btn"><input class="memberlist_btn" type="button" onclick="" value="수정하기"></td>
                    </tr>
                </table>
            </div>
        </div>






    </main>
</body>
</html>