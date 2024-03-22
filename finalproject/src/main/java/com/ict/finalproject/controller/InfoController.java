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

    @RequestMapping("info_container_filter.do")
    public String info_container_filter(String type){    
        if ("local".equals(type)) {
 
            return "info/info_container_local";
        }

        else if ("filter".equals(type)) {

            return "info/info_container_filter";
        }
        else {
       
            return "info/info_container_list";
        }
    }
    @RequestMapping("info_container_place.do")
    public String info_container_place(String type){    
        if ("camping".equals(type)) {
 
            return "info/info_camping";
        }

        else if ("hospital".equals(type)) {

            return "info/info_hospital";
        }

        else if ("store".equals(type)) {

            return "info/info_store";
        }
        // 마트 페이지
        else if ("mart".equals(type)) {

            return "info/info_mart";
        }
        else {
       
            return "info/info_container_list";
        }
    }
}