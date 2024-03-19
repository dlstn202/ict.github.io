package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping("login_main.do")
    public String login_main(){

        return "login/login_main";
    }

    @RequestMapping("login_nav.do")
    public String login_nav(){

        return "all/all_nav";
    }

    @RequestMapping("login_container.do")
    public String login_container(){

        return "login/login_container";
    }

    @RequestMapping("login_footer.do")
    public String login_footer(){

        return "all/all_footer";
    }
}
