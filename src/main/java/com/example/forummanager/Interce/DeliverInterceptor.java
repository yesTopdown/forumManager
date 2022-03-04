package com.example.forummanager.Interce;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DeliverInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        // 获取请求的URL
        String url = request.getRequestURI();
        if (url.contains("writer.jsp")) {
            // 获取 session
            HttpSession session = request.getSession();
            Object obj = session.getAttribute("user");
            if (obj != null) {
                return true;
            }
            request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
            return false;
        }
        return true;
    }
}
