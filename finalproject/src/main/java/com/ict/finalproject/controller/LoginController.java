package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping("login_main.do")
    public String login_main(){

        return "loginjoin/login_main";
    }


    @RequestMapping("login_container.do")
    public String login_container(){

        return "loginjoin/login_container";
    }

    @RequestMapping("login_header.do")
    public String login_header(){

        return "loginjoin/login_header";
    }

}
