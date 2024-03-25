package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MypageController {


    @RequestMapping("mypage_header.do")
    public String mypage_header(){

        return "mypage/mypage_header";
    }

    @RequestMapping("mypage_main_general.do")
    public String main_general(){

        return "mypage/mypage_main_general";
    }

    @RequestMapping("mypage_main_ceo.do")
    public String main_ceo(){

        return "mypage/mypage_main_ceo";
    }

    @RequestMapping("mypage_main_manager.do")
    public String main_manager(){

        return "mypage/mypage_main_manager";
    }

    @RequestMapping("mypage_container_list.do")
    public String mypage_container_list(){

        return "mypage/mypage_container_list";
    }

    @RequestMapping("mypage_container_info.do")
    public String mypage_container_info(){

        return "mypage/mypage_container_info";
    }

    @RequestMapping("mypage_container_general_keep_list.do")
    public String mypage_container_general_keep_list(){

        return "mypage/mypage_container_general_keep_list";
    }

    @RequestMapping("mypage_container_general_reserve.do")
    public String mypage_container_general_reserv() {
        return "mypage/mypage_container_general_reserve";
    }

    @RequestMapping("mypage_container_inquiry.do")
    public String mypage_container_inquiry() {
        return "mypage/mypage_container_inquiry";
    }
    @RequestMapping("mypage_container_inquiry_insertform.do")
    public String mypage_container_inquiry_insertform() {
        return "mypage/mypage_container_inquiry_insertform";
    }
        
    @RequestMapping("mypage_container_general_review.do")
    public String mypage_container_general_review() {
        return "mypage/mypage_container_general_review";
    }
        
    @RequestMapping("mypage_container_ceo_business.do")
    public String mypage_container_ceo_business() {
        return "mypage/mypage_container_ceo_business";
    }

    @RequestMapping("mypage_container_ceo_business_room.do")
    public String mypage_container_ceo_business_room() {
        return "mypage/mypage_container_ceo_business_room";
    }

    @RequestMapping("mypage_container_ceo_business_room_insertform.do")
    public String mypage_container_ceo_business_room_insertform() {
        return "mypage/mypage_container_ceo_business_room_insertform";
    }
        
    @RequestMapping("mypage_container_manager_member.do")
    public String mypage_container_manager_member() {
        return "mypage/mypage_container_manager_member";
    }
        
    @RequestMapping("mypage_container_manager_qna.do")
    public String mypage_container_manager_qna() {
        return "mypage/mypage_container_manager_qna";
    }
        
    @RequestMapping("mypage_container_manager_faq.do")
    public String mypage_container_manager_faq() {
        return "mypage/mypage_container_manager_faq";
    }
        
    @RequestMapping("mypage_container_manager_req_content.do")
    public String mypage_container_manager_req_content() {
        return "mypage/mypage_container_manager_req_content";
    }
        
    @RequestMapping("mypage_container_manager_notify.do")
    public String mypage_container_manager_notify() {
        return "mypage/mypage_container_manager_notify";
    }

    @RequestMapping("mypage_container_manager_notify_one.do")
    public String mypage_container_manager_notify_one() {
        return "mypage/mypage_container_manager_notify_one";
    }

    @RequestMapping("mypage_container_manager_notify_send.do")
    public String mypage_container_manager_notify_send() {
        return "redirect:mypage_container_manager_notify.do";
    }
    



}
