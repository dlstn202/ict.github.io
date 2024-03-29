package com.ict.finalproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ict.finalproject.dao.CampMapper;
import com.ict.finalproject.vo.CampVo;


@Controller
public class InfoController {

    @Autowired
	CampMapper camp_dao;

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
    public String info_container_place(String type ,Model model){    
        if ("camping".equals(type)) {

            List<CampVo> list = camp_dao.selectList();

            model.addAttribute("list",list);
 
            return "info/info_camping";
        }

        else if ("HP8".equals(type)) {

            
            return "info/info_hospital";

        }else if ("PM9".equals(type)) {

            return "info/info_drug";
        }

        else if ("CS2".equals(type)) {

            return "info/info_store";
        }
        // 마트 페이지
        else if ("MT1".equals(type)) {

            return "info/info_mart";
        }
        else {
       
            return "info/info_container_list";
        }
    }
}