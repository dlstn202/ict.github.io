package com.ict.finalproject.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Alias("notice")
public class NoticeVo {

	int	   not_idx;				//공지번호
	int	   mem_idx;				//회원번호
	String not_emergency_yn;	//긴급공지여부
	int	   not_public;			//공개범위
	String not_title;			//공지제목
	String not_content;			//공지내용
	String not_date;			//등록일자
	String not_del_yn;			//삭제여부
	String not_deldate;			//삭제일자
	String not_modify_yn;		//수정여부
	String not_modifydate;		//수정일자
	String not_file;			//파일

}
