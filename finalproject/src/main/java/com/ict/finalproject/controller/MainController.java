package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("main.do")
    public String main(){

        return "main/main";
    }

    @RequestMapping("nav.do")
    public String nav(){

        return "main/main_nav";
    }

    @RequestMapping("header.do")
    public String header(){

        return "main/main_header";
    }

    @RequestMapping("conteiner1.do")
    public String conteiner1(){

        return "main/main_conteiner1";
    }

    @RequestMapping("conteiner2.do")
    public String conteiner2(){

        return "main/main_conteiner2";
    }

    @RequestMapping("footer.do")
    public String footer(){

        return "main/main_footer";
    }
}
