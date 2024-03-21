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

    @RequestMapping("info_container_list.do")
    public String info_container_list(){

        return "info/info_container_list";
    }

    @RequestMapping("info_container_local.do")
    public String info_container_local(){

        return "info/info_container_local";
    }


     
}
