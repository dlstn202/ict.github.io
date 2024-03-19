package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

    @RequestMapping("notice.do")
    public String main(){

        return "notice/notice_main";
    }

    @RequestMapping("notice_nav.do")
    public String nav(){

        return "main/main_nav";
    }

    @RequestMapping("notice_header.do")
    public String header(){

        return "notice/notice_header";
    }

    @RequestMapping("notice_container.do")
    public String container(){

        return "notice/notice_container";
    }
    @RequestMapping("notice_footer.do")
    public String footer(){

        return "main/main_footer";
    }

}
