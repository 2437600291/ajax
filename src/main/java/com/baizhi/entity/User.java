package com.baizhi.entity;

import java.util.Date;

public class User {
    private String id;
    private String username;
    private Date bir;
    private String password;

    public User() {
    }

    public User(String id, String username, Date bir, String password) {
        this.id = id;
        this.username = username;
        this.bir = bir;
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getBir() {
        return bir;
    }

    public void setBir(Date bir) {
        this.bir = bir;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", bir=" + bir +
                ", password='" + password + '\'' +
                '}';
    }
}
