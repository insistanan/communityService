package com.anan.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class loginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //判断是否登录过
        if(request.getSession().getAttribute("admin") == null){
            request.getRequestDispatcher("/index.jsp").forward(request,response);
            return false;
        }
        return true;
    }
}
