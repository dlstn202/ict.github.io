package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfoController {

    @RequestMapping("info_main.do")
    public String main(){

        return "info/info_main";
    }
    @RequestMapping("info_nav.do")
    public String info_nav(){

        return "info/info_nav";
    }
    
    @RequestMapping("info_container1.do")
    public String info_container1(){

        return "info/info_container1";
    }


     
}
