package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {


    @RequestMapping("mypage_header.do")
    public String mypage_header(){

        return "mypage/mypage_header";
    }

    @RequestMapping("mypage_main_general.do")
    public String main_general(){

        return "mypage/mypage_main_general";
    }

    @RequestMapping("mypage_main_ceo.do")
    public String main_ceo(){

        return "mypage/mypage_main_ceo";
    }

    @RequestMapping("mypage_main_manager.do")
    public String main_manager(){

        return "mypage/mypage_main_manager";
    }




}
