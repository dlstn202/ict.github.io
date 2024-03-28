package com.ict.finalproject.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Alias("photo")
public class PhotoVo {

	int	   pho_idx;			//사진번호
	int	   mem_idx;			//회원번호
	String pho_loc;			//사진위치
	int	   rev_idx;			//리뷰번호
	int	   contentId;		//콘텐츠아이디
	int	   room_idx;		//객실번호
	String pho_regdate;		//일자
	String pho_del_yn;		//삭제유무
	String pho_deldate;		//삭제일자
	String pho_modify_yn;	//수정유무
	String pho_modifydate;	//수정일자

}
