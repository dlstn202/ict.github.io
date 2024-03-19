package com.ict.finalproject.controller;

import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


	public class DetailController {
		
		
		@RequestMapping("/detail_info/main.do")
		public String main(HttpServletRequest request, HttpServletResponse response) {
			
			return "detail_info/detail_info_main";
		}
		
	}//end class


