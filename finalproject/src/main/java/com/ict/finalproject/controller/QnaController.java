package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnaController {
    
    @RequestMapping("qna_main.do")
    
    public String qna_main(){

        return "qna/qna_main";
    }


    @RequestMapping("qna_header.do")
    public String qna_header(){

        return "qna/qna_header";
    }

    @RequestMapping("qna_container.do")
    public String qna_container(){

        return "qna/qna_container";
    }



}
