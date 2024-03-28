<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="mypage_container_manager_member_modal.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
    $(document).ready(function () {
        $.getScript("${pageContext.request.contextPath}/assets/js/domain.js");
    })
</script>

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

<script>

    function GeneralModifyForManager() {

        $("#GeneralModifyModal").modal('show');
        $("#GeneralModifyModal").modal({backdrop : "static"});

    }

    function CEOModifyForManager() {

        $("#CEOModifyModal").modal('show');
        $("#CEOModifyModal").modal({backdrop : "static"});

    }

    function ManagerModifyForManager() {

        $("#ManagerModifyModal").modal('show');
        $("#ManagerModifyModal").modal({backdrop : "static"});

    }

</script>

<style>
/* member tab : 일반/사장/관리자 나누기 */
.memberlist_tab{position: relative; }
.memberlist_tab_ul{ margin-top: 35px; margin-bottom: 35px; width: 810px; display: flex; position: relative; }
.memberlist_tab_ul li{ flex: 1 1; text-align: center; }
.memberlist_tab_ul li :last-child{ border-left: none; border-right: none;}
.memberlist_tab_ul li a:before{content:""; position:absolute; left:0; top:0px; width:100%; }
.memberlist_tab_ul li a.active{ border-bottom: none; }
.memberlist_tab_ul li a{ position:relative; display:block; background: rgba(var(--main-ton-down-rgb),0.1); border:2px solid rgba(var(--main-ton-down-rgb),1); color: #000; padding:0 30px; line-height:46px; text-decoration:none; font-size:16px; }
.memberlist_tab_ul li a.active{background:#fff; color:#000000; }
.memberlist_tab_button{ width: 250px; height: 45px; }
.memberlist_tab_text{ font-size: var(--fs-p2); } 
.ml_t_1{ border-left:2px solid rgba(var(--main-ton-down-rgb),1);}
.ml_t_2{ border-right:2px solid rgba(var(--main-ton-down-rgb),1); border-left:2px solid rgba(var(--main-ton-down-rgb),1); }
.ml_t_3{ border-right:2px solid rgba(var(--main-ton-down-rgb),1); }

/* memberlist table */
.memberlist_table{ width: 810px;}
.table>tbody>tr>th,.table>tbody>tr>td{ vertical-align: middle;  padding: 10px; border-bottom: 1px solid #ddd; }
.memberlist_th{ text-align: center; background-color: rgba(var(--main-ton-down-rgb),0.1); }
.memberlist_td{ text-align: center; }
.memberlist_td_idx, .memberlist_td_yn{ width: 75px; text-align: center; }
.memberlist_td_btn{ width: 110px;}
/* 버튼 */
.memberlist_btn { display: inline-flex; justify-content: center; align-items: center; flex-shrink: 0; width: 9.2rem; padding: 0 2.8rem; height: 3.8rem; color: var(--white); background-color: var(--main); border-width: 2px; border-style: solid; border-color: var(--main); border-radius: .4rem; font-weight: 500; letter-spacing: var(--letter-spacing); transition: .3s; border-radius: 3rem; } 
.memberlist_btn::before { transition: inherit; } 
.memberlist_btn::after { transition: inherit; } 
.memberlist_btn + .memberlist_btn { margin-left: .8rem; } 
.memberlist_btn:hover { color: var(--white); background-color: rgba(var(--main-ton-up-rgb)); border-color: rgba(var(--main-ton-up-rgb)); text-decoration: none;} 
.memberlist_btn:disabled, .memberlist_btn.disabled { background-color: rgba(var(--main-ton-down-rgb), 0.1) !important; border: none !important;} 
.memberlist_btn:disabled:hover, .memberlist_btn.disabled:hover {background-color: rgba(var(--main-ton-down-rgb), 0.1) !important; color: var(--main) !important;border: none !important;} 
/* 히얀버튼 */
.memberlist_btn.btnset-line { color: var(--main-ton-down); background-color: transparent; border-color: var(--main); } 
.memberlist_btn.btnset-line:hover { color: var(--white); background-color: var(--main-ton-up); border-color: var(--main-ton-up); text-decoration: none;} 
.memberlist_btn.btnset-line:disabled, .btnset.btnset-line.disabled { color: var(--text-color4); background-color: var(--bg-color); border-color: var(--line-color1); } 
.memberlist_btn.btnset-line.btnset-black { border-color: var(--line-color4); color: var(--text-color2); } 
.memberlist_btn.btnset-line.btnset-black:hover { border-color: var(--line-color4); background-color: var(--main); color: var(--white); text-decoration: none;} 
.memberlist_btn.btnset-line.btnset-white { border-color: var(--white); color: var(--white); } 
.memberlist_btn.btnset-line.btnset-white:hover { background-color: var(--white); color: var(--text-color1); } 

.memberlist_span{ color: var(--main);}

/* memberlist Modal */
.custom-modal-mypage{ max-width: 600px !important;} 
.modal-dialog>.modal-body{ max-width: 380px  !important; }
.modal-title{ font-size: larger; font-weight: 700; }
.memberlist_modal_header{ background-color: #fff; padding:20px }
.memberlist_modal_content{ background-color: #fff; position: relative; background-clip: none; border: none; border-radius: 0px; -webkit-box-shadow: none; box-shadow: none; outline: 0;}
.form-wrap{ padding-right: 20px; padding-left: 20px; padding-top: 15px;}
.ml_modify_btn_wrap{ display: flex; justify-content: center; align-items: center; margin-bottom: 20px;}
/* .memberlist_btn_modify{ width: 90px; height: 35px; color: #fff; background-color: var(--main); border-radius: 3rem; text-align: center; border:none; padding-bottom: 2px; margin:5px; margin-top: none;} */

</style>

</head>
<body>
    <main class="th-layout-main">
        <div id="my_manager_member">
            <div class="my_info_title">회원정보</div>
        </div>

        <div class="memberlist_tab">
            <ul class="memberlist_tab_ul">
                <li class="memberlist_tab_li ml_t_1">
                    <a href="#normal_memberlist">일반회원</a>
                </li>
                <li class="memberlist_tab_li ml_t_2">
                    <a href="#ceo_memberlist">기업회원</a>
                </li>
                <li class="memberlist_tab_li ml_t_3">
                    <a href="#manager_memberlist">관리자회원</a>
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
                        <th class="memberlist_th" rowspan="2">로그인<br>여부</th>
                        <th class="memberlist_th" rowspan="2"></th>
                    </tr>
                    <tr class="memberlist_tr">

                        <th class="memberlist_th">카카오</th>
                        <th class="memberlist_th">네이버</th>
                        <th class="memberlist_th">구글</th>
                    </tr>

                    <tr>
                        <td class="memberlist_td_idx">4</td>
                        <td class="memberlist_td">금쪽맘</td>
                        <td class="memberlist_td">gold0</td>
                        <td class="memberlist_td">O</td>
                        <td class="memberlist_td">-</td>
                        <td class="memberlist_td">-</td>
                        <td class="memberlist_td">일반</td>
                        <td class="memberlist_td">0</td>
                        <td class="memberlist_td_yn">y</td>
                        <td class="memberlist_td_btn"><input class="memberlist_btn" type="button" onclick="GeneralModifyForManager();" value="수정하기"></td>
                    </tr>
                    <tr>
                        <td class="memberlist_td_idx">3</td>
                        <td class="memberlist_td">금쪽삼</td>
                        <td class="memberlist_td">gold3</td>
                        <td class="memberlist_td">-</td>
                        <td class="memberlist_td">-</td>
                        <td class="memberlist_td">O</td>
                        <td class="memberlist_td">일반</td>
                        <td class="memberlist_td">0</td>
                        <td class="memberlist_td_yn">y</td>
                        <td class="memberlist_td_btn"><input class="memberlist_btn" type="button" onclick="GeneralModifyForManager();" value="수정하기"></td>
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
                        <td class="memberlist_td_btn"><input class="memberlist_btn" type="button" onclick="CEOModifyForManager();" value="수정하기"></td>
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

            
            <div id="manager_memberlist">
                <table class="table memberlist_table">
                    <tr>
                        <th class="memberlist_th">회원번호</th>
                        <th class="memberlist_th">회원명</th>
                        <th class="memberlist_th">아이디</th>
                        <th class="memberlist_th">등급</th>
                        <th class="memberlist_th"></th>
                    </tr>

                    <tr>
                        <td class="memberlist_td_idx">2</td>
                        <td class="memberlist_td">금쪽이</td>
                        <td class="memberlist_td">gold2</td>
                        <td class="memberlist_td">관리자</td>
                        <td class="memberlist_td_btn"><input class="memberlist_btn" type="button" onclick="ManagerModifyForManager();" value="수정하기"></td>
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


    
</body>
</html>