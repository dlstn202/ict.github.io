package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinController {
    
    // 약관 동의
    @RequestMapping("joinagree_main.do")
    public String joinagree_main(){

        return "loginjoin/joinagree_main";
    }

    @RequestMapping("joinagree_container.do")
    public String joinagree_container(){

        return "loginjoin/joinagree_container";
    }


    // 정보 입력
    @RequestMapping("joininput_main.do")
    public String joininput_main(){

        return "loginjoin/joininput_main";
    }

    @RequestMapping("joininput_container.do")
    public String joininput_container(){

        return "loginjoin/joininput_container";
    }


    //  회원가입 완료
    @RequestMapping("joinfinish_main.do")
    public String joinfinish_main(){

        return "loginjoin/joinfinish_main";
    }

    @RequestMapping("joinfinish_container.do")
    public String joinfinish_container(){

        return "loginjoin/joinfinish_container";
    }

    //  header
    @RequestMapping("join_header.do")
    public String joininput_header(){

        return "loginjoin/join_header";
    }


}
