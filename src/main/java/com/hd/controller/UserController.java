package com.hd.controller;

import com.hd.pojo.User;
import com.hd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//import javax.jws.soap.SOAPBinding;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("test")
    public String test(Model model) {
        List<User> users = userService.getAllUser();
        model.addAttribute("users", users);
//        HttpServletRequest request=
        return "test";
    }
    @RequestMapping("register")
    public String register(Model model,User user,HttpSession session) {
        if(session.getAttribute("user")==null){  //没登陆，注册
            User user2=userService.getUserByName(user.getUser_name());
            if(user2!=null)
            {
                model.addAttribute("error","用户名已经被注册");
                return "register";
            }
            System.out.println("**********"+user.getPassword());
            userService.addUser(user); //注册成功
        }else {  //已登陆，改信息
            if(user.getUser_name().trim().equals(session.getAttribute("user")))
            {
                model.addAttribute("error","用户名不允许更改");
                return "register";
            }
            else {
                userService.updateUser(user); //更新成功
            }
        }
        return "forward:login";
//        List<User> users = userService.getAllUser();
//        model.addAttribute("users", users);
//        HttpServletRequest request=
    }

    @RequestMapping("toJsp")
    public String toJsp(Model model, HttpServletRequest request, HttpServletResponse response) {
        User user = (User) request.getSession().getAttribute("user");
        String pageName = request.getParameter("page");
        if (user != null || pageName.trim().equals("register")) {
            return pageName;
        }
        return "../../index";
    }

    @RequestMapping("logout")
    public String logout(Model model, HttpServletRequest request, HttpServletResponse response, User user) {
        HttpSession session=request.getSession();
        session.invalidate();
        return "../../index";
    }
//    @RequestMapping("editUser")
//    public String editUser(Model model, HttpServletRequest request, HttpServletResponse response, User user) {
//        HttpSession session=request.getSession();
//        return "register";
//    }
    @RequestMapping("login")
    public String login(Model model, HttpServletRequest request, HttpServletResponse response, User user) {
        User user2 = userService.getUserByName(user.getUser_name());
        if (user2 == null) {
            model.addAttribute("error", "用户名不存在");
            return "../../index";
        } else if (!user2.getPassword().equals(user.getPassword())) {
            model.addAttribute("error", "密码错误");
            return "../../index";
//AutoWired RequestMapping Controller redirect forward
        }
//        else if(request.getSession().getAttribute("user")!=null){
//            model.addAttribute("error", "您已登陆");
//            return "../../index";
//        }
        else {
//            model.addAttribute("user",user2);
            request.getSession().setAttribute("user", user2);
//            return "todo_list";
            return "forward:/todoItem/showAll";
//            return "user_manage";
        }
    }
}

/**
 * Created by 赵传昊 on 2018/7/18.
 */
//@Controller
//@RequestMapping("user")
//public class UserController {
//    @Autowired
//    private UserService userService;
//
//    @RequestMapping("test")
//    public String test(Model model){
//        List<User> users = userService.getAllUser();
//        for (User u:users) {
//            System.out.println("==========");
//            System.out.println(u.getName());
//            System.out.println("==========");
//        }
//        model.addAttribute("users", users);
//        return "test";
//    }
//}
