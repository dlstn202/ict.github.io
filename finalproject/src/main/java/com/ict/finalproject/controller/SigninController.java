package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SigninController {
    
    @RequestMapping("signin_main.do")
    public String signin_main(){

        return "signin/signin_main";
    }


    @RequestMapping("signin_nav.do")
    public String signin_nav(){

        return "all/all_nav";
    }

    @RequestMapping("signin_container.do")
    public String signin_container(){

        return "signin/signin_container";
    }
    
    @RequestMapping("signin_footer.do")
    public String signin_footer(){

        return "all/all_footer";
    }

}
