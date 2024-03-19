package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservationController {


    @RequestMapping("reservation_header.do")
    public String header(){

        return "reservation/reservation_header";
    }

    @RequestMapping("reservation_main_finish.do")
    public String main_finish(){

        return "reservation/reservation_main_finish";
    }

    @RequestMapping("reservation_main_input.do")
    public String main_input(){

        return "reservation/reservation_main_input";
    }

    @RequestMapping("reservation_main_date.do")
    public String main_date(){

        return "reservation/reservation_main_date";
    }

    @RequestMapping("reservation_container_date.do")
    public String container_date(){

        return "reservation/reservation_container_date";
    }

    @RequestMapping("reservation_container_input.do")
    public String container_input(){

        return "reservation/reservation_container_input";
    }

    @RequestMapping("reservation_container_finish.do")
    public String container_finish(){

        return "reservation/reservation_container_finish";
    }


}
