package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@Controller
public class DetailController {
		
		
		@RequestMapping("detail_main.do")
		public String main(HttpServletRequest request, HttpServletResponse response) {
			
			return "detail/detail_main";
		}

		@RequestMapping("detail_container_info.do")
		public String container_info(){
	
			return "detail/detail_container_info";
		}

		@RequestMapping("detail_container_insert_review.do")
		public String container_insert_review(){
	
			return "detail/detail_container_insert_review";
		}

		@RequestMapping("detail_container_review.do")
		public String container_review(){
	
			return "detail/detail_container_review";
		}
		
	}//end class


