package com.ict.finalproject.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Alias("review")
public class ReviewVo {

	int	   rev_idx;			//리뷰번호
	int	   mem_idx;			//회원번호
	int	   contentId;		//콘텐츠아이디
	String rev_date;		//등록일자
	String rev_title;		//리뷰제목
	String rev_content;		//리뷰내용
	int	   hea_num;			//하트갯수
	String facltNm;			//장소명
	String addr1;			//주소
	double mapY;			//위도
	double mapX;			//경도
	String rep_yn;			//신고여부
	String rep_result;		//신고처리결과
	String rev_modify_yn;	//수정여부
	String rev_modifydate;	//수정일자
	String rev_del_yn;		//삭제여부
	String rev_deldate;		//삭제일자



}
