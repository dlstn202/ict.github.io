<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 관리자 수정 모달-->
<div id="ManagerModifyModal" class="modal fade custom-modal-mypage" role="dialog">
    <div class="modal-dialog custom-modal-mypage">

        <div class="modal-header memberlist_modal_header">
            <button id="closememberlistModal" type="button" class="close" data-dismiss="modal">&times;</button>
            <p class="modal-title">회원정보 수정</p>
        </div>

        <div class="modal-content memberlist_modal_content">

            <!-- Modal body -->
            <div class="form-wrap">
                <h6 class="form-tit">회원명</h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="" readonly="readonly" value="금쪽이">
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">아이디</h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="" readonly="readonly" value="gold2">
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">등급</h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="" readonly="readonly" value="관리자">
                </div>
            </div>          
            <div class="form-wrap">
                <div class="inputset inputset-round ml_modify_btn_wrap">
                    <input class="memberlist_btn btnset-line" type="button" onclick="" value="수정하기">
                    <input class="memberlist_btn" type="button" onclick="" value="삭제하기">
                </div>
            </div>
            </div>
        </div>
    </div>
</div>
<!-- 사장 수정 모달 -->
<div id="CEOModifyModal" class="modal fade custom-modal-mypage" role="dialog">
    <div class="modal-dialog custom-modal-mypage">

        <div class="modal-header memberlist_modal_header">
            <button id="closememberlistModal" type="button" class="close" data-dismiss="modal">&times;</button>
            <p class="modal-title">회원정보 수정</p>
        </div>

        <div class="modal-content memberlist_modal_content">

            <!-- Modal body -->
            <div class="form-wrap">
                <h6 class="form-tit">회원명</h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="" readonly="readonly" value="금쪽일">
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">사업자번호</h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="" readonly="readonly" value="100-00-00000">
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">아이디</h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="" readonly="readonly" value="gold1">
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">등급</h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="" readonly="readonly" value="사장">
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">신고누적</h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="" value="0">
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">로그인여부</h6>
                <div class="selectset selectset-round selectset-md">
                    <button class="selectset-toggle btn" type="button">
                    <span class="memberlist_span">y</span>
                    </button>
                    <ul class="selectset-list">
                    <li class="selectset-item">
                        <button class="selectset-link btn" type="button" value="y">
                        <span class="memberlist_span">y</span>
                        </button>
                    </li>
                    <li class="selectset-item">
                        <button class="selectset-link btn" type="button" value="n">
                        <span class="memberlist_span">n</span>
                        </button>
                    </li>                     
                    </ul>
                </div>
            </div>
            
            <div class="form-wrap">
                <div class="inputset inputset-round ml_modify_btn_wrap">
                    <input class="memberlist_btn btnset-line" type="button" onclick="" value="수정하기">
                    <input class="memberlist_btn" type="button" onclick="" value="삭제하기">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 일반 수정 모달 -->
<div id="GeneralModifyModal" class="modal fade custom-modal-mypage" role="dialog">
    <div class="modal-dialog custom-modal-mypage">
        <div class="modal-header memberlist_modal_header">
            <button id="closememberlistModal" type="button" class="close" data-dismiss="modal">&times;</button>
            <p class="modal-title">회원정보 수정</p>
        </div>

        <div class="modal-content memberlist_modal_content">

            <!-- Modal body -->
            <div class="form-wrap">
                <h6 class="form-tit">회원명</h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="" readonly="readonly" value="금쪽맘">
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">아이디</h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="" readonly="readonly" value="gold0">
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">등급</h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="" readonly="readonly" value="일반">
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">신고누적</h6>
                <div class="inputset inputset-round">
                  <input type="text" class="inputset-input form-control" aria-label="내용" required="" value="0">
                </div>
            </div>
            <div class="form-wrap">
                <h6 class="form-tit">로그인여부</h6>
                <div class="selectset selectset-round selectset-md">
                    <button class="selectset-toggle btn" type="button">
                    <span class="memberlist_span">y</span>
                    </button>
                    <ul class="selectset-list">
                    <li class="selectset-item">
                        <button class="selectset-link btn" type="button" value="y">
                        <span class="memberlist_span">y</span>
                        </button>
                    </li>
                    <li class="selectset-item">
                        <button class="selectset-link btn" type="button" value="n">
                        <span class="memberlist_span">n</span>
                        </button>
                    </li>                     
                    </ul>
                </div>
            </div>
            
            <div class="form-wrap">
                <div class="inputset inputset-round ml_modify_btn_wrap">
                    <input class="memberlist_btn btnset-line" type="button" onclick="" value="수정하기">
                    <input class="memberlist_btn" type="button" onclick="" value="삭제하기">
                </div>
            </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>