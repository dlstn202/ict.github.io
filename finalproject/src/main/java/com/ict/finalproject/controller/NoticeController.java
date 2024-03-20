package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

    @RequestMapping("notice_main.do")
    public String main(){

        return "notice/notice_main";
    }

    @RequestMapping("notice_header.do")
    public String header(){

        return "notice/notice_header";
    }

    @RequestMapping("notice_container.do")
    public String container(){

        return "notice/notice_container";
    }

}
