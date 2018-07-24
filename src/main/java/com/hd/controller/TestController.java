package com.hd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by leishuai on 2018/7/23.
 */
@Controller
@RequestMapping("test")
public class TestController {
    @RequestMapping("date")
    public String date(String  date){
        System.out.println(date+"11111");
        date="1234-12-1 12:12:12";
        DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.");
        try {
            System.out.println(dateFormat.parse(date));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return "redirect:/";
    }
}
