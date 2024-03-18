package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfoController {

    @RequestMapping("info.do")
    public String main(){

        return "info/info";
    }

    @RequestMapping("info_header.do")
    public String header(){

        return "info/info_header";
    }

    @RequestMapping("info_container.do")
    public String container(){

        return "info/info_container";
    }

}
