package com.hniu.controller;

import com.alibaba.fastjson.JSON;
import com.hniu.dao.IUserDao;
import com.hniu.domain.UserInfo;
import com.hniu.mapper.getMapper;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/testControol")
public class testcontroller extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
        System.out.println("inner doget");
        response.setContentType("html/text");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("UTF-8");
        getMapper mapper=new getMapper();
        SqlSession sqlsession= null;
        try {
            sqlsession = mapper.getSession();
        } catch (Exception e) {
            e.printStackTrace();
        }
        IUserDao dao= sqlsession.getMapper(IUserDao.class);
        List<UserInfo> userinfos = dao.selectAll();
        for (UserInfo user: userinfos) {
            System.out.println(user);
        }
       String str= JSON.toJSONString(userinfos);
        response.getWriter().print(str);
        try {
            mapper.closeSource();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
