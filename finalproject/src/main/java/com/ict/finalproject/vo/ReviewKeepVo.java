package com.ict.finalproject.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Alias("review_keep")
public class ReviewKeepVo {

	int	   rev_keep_idx;	//리뷰하트번호
	int	   mem_idx;			//회원번호
	int	   rev_idx;			//리뷰번호
	int	   contentId;		//컨텐츠아이디
	double mapY;			//위도
	double mapX;			//경도
	String rev_keepdate;	//등록일자
	String faclNm;			//캠핑장명
	String addr1;			//캠핑장주소



}
