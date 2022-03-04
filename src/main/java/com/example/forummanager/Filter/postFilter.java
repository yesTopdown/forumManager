package com.example.forummanager.Filter;

import com.example.forummanager.pojo.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.*;
import javax.servlet.annotation.*;
import java.io.IOException;

/**
 * 计算页面访问
 */
@Component
@WebFilter(filterName = "postFilter")
public class postFilter implements Filter {
    @Autowired
    Post post;
    private Integer hitNum; //统计浏览量
    @Override
    public void init(FilterConfig config) throws ServletException {
        hitNum=0;
    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        hitNum++;
        post.setViews(hitNum);
        //修改浏览量
        chain.doFilter(request, response);
    }

}
