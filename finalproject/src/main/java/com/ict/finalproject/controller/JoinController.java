package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class JoinController {
    
    // 약관 동의
    @RequestMapping("join_agree.do")
    public String join_agree_main(Model model,String mem_grade){
        
        model.addAttribute("mem_grade", mem_grade);

        return "loginjoin/join_agree_main";
    }

    @RequestMapping("join_agree_container.do")
    public String join_agree_container(){

        return "loginjoin/join_agree_container";
    }


    // 정보 입력 - 일반회원
    @RequestMapping("join_input.do")
    public String join_input_main(){

        return "loginjoin/join_input_main";
    }

    @RequestMapping("join_input_container.do")
    public String join_input_container(){

        return "loginjoin/join_input_container";
    }


    // 정보입력 - 사장 회원
    @RequestMapping("join_input_ceo.do")
    public String join_input_ceo_main(Model model,String mem_grade){

        model.addAttribute("mem_grade", mem_grade);

        return "loginjoin/join_input_main_ceo";
    }

    @RequestMapping("join_input_container_ceo.do")
    public String join_input_forceo_container(){

        return "loginjoin/join_input_container_ceo";
    }


    //  회원가입 완료
    @RequestMapping("join_finish.do")
    public String join_finish(){

        return "loginjoin/join_finish_main";
    }

    @RequestMapping("join_finish_container.do")
    public String join_finish_container(){

        return "loginjoin/join_finish_container";
    }

    //  header
    @RequestMapping("join_header.do")
    public String join_header(){

        return "loginjoin/join_header";
    }


}
