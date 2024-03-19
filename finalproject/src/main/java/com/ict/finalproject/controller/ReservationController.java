package com.ict.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservationController {



    @RequestMapping("reservation_header.do")
    public String header(){

        return "reservation/reservation_header";
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
