package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FAQController {

    @RequestMapping("faqmain.do")
    public String main(){

        return "faq/faq_main";
    }
    
    @RequestMapping("faq_nav.do")
    public String nav(){

        return "faq/faq_nav";
    }
    @RequestMapping("faq_header.do")
    public String header(){

        return "faq/faq_header";
    }

    @RequestMapping("faq_container.do")
    public String container(){

        return "faq/faq_container";
    }

    @RequestMapping("faq_footer.do")
    public String footer(){

        return "faq/faq_footer";
    }
}
