package com.ict.finalproject.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Alias("camp_ceo")
public class CampCeoVo {

	int	   mem_idx; //사장회원 번호
	String bizrno;	//사업자등록번호


}
