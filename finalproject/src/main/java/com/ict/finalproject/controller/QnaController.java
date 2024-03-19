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

        return "main/main_header";
    }

    @RequestMapping("qna_content.do")
    public String qna_content(){

        return "qna/qna_content";
    }

    @RequestMapping("qna_footer.do")
    public String qna_footer(){

        return "main/main_footer";
    }



}
