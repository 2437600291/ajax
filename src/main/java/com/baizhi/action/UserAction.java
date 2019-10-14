package com.baizhi.action;

import com.alibaba.fastjson.JSONObject;
import com.baizhi.entity.User;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UserAction {
    private String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String check() throws IOException {

        HttpServletResponse response = ServletActionContext.getResponse();
        PrintWriter writer = response.getWriter();
        if (username.equals("ly")) {
            writer.println("this username exits");
        } else {
            writer.println("this username not exits");
        }
        return null;
    }

    public String findOne() throws IOException {
        User user = new User();
        user.setId("1");
        user.setUsername("小黑");
        user.setBir(new Date());
        user.setPassword("123456");
        HttpServletResponse response = ServletActionContext.getResponse();
        response.setContentType("application/json;charset=utf-8");
        PrintWriter writer = response.getWriter();
        String s = JSONObject.toJSONStringWithDateFormat(user, "yyyy-MM-dd");
        writer.println(s);
        return null;
    }

    public String findAll() throws IOException {
        User user1 = new User();
        user1.setId("1");
        user1.setUsername("小黑1");
        user1.setBir(new Date());
        user1.setPassword("123456");

        User user2 = new User();
        user2.setId("2");
        user2.setUsername("小黑2");
        user2.setBir(new Date());
        user2.setPassword("123456");

        User user3 = new User();
        user3.setId("3");
        user3.setUsername("小黑");
        user3.setBir(new Date());
        user3.setPassword("123456");
        List<User> users = new ArrayList<>();
        users.add(user1);
        users.add(user2);
        users.add(user3);
        HttpServletResponse response = ServletActionContext.getResponse();
        response.setContentType("application/json;charset=utf-8");
        PrintWriter writer = response.getWriter();
        String s = JSONObject.toJSONStringWithDateFormat(users, "yyyy年MM月dd");
        writer.println(s);
        return null;
    }
}
