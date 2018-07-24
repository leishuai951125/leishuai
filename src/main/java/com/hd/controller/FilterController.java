package com.hd.controller;

import com.hd.pojo.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by leishuai on 2018/7/23.
 */
public class FilterController implements HandlerInterceptor {

    @Override
    public void afterCompletion(HttpServletRequest httpRequest,
                                HttpServletResponse httpResponse, Object arg2, Exception arg3)
            throws Exception {

    }

    @Override
    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
                           Object arg2, ModelAndView arg3) throws Exception {


    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
                             Object object) throws Exception {
        User user = (User) request.getSession().getAttribute("user");
        if(user!=null)
            return true;
//        String []paths= {"index.jsp","views/register.jsp",
//                "user/login","user/register"
//        };
//        String reqUri=request.getRequestURI();
//        System.out.println(reqUri);
//        for(int i=0;i<paths.length;i++)
//            if(("/TestGit/"+paths[i]).equals(reqUri))
//                return true;
//
//         if(("/TestGit/user/toJsp").equals(reqUri)){
//            if(request.getParameter("page").equals("register"))
//                return true;
//            }
////        request.getRequestDispatcher("/user/toJsp?page=register").forward(request,response);
        response.sendRedirect(request.getContextPath());
        return false;
    }
}
