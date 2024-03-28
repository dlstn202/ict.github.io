package com.ict.finalproject.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Alias("room")
public class RoomVo {

	int	   room_idx;	//객실번호
	int	   mem_idx;		//회원번호
	int	   contentId;	//콘텐츠아이디
	String room_name;	//객실명
	int	   room_min;	//최소인원
	int	   room_max;	//최대인원
	String room_in;		//입실시간
	String room_out;	//퇴실시간
	String room_etc;	//기타



}
