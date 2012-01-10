/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dksm.app.models;

import java.util.Date;

/**
 *
 * @author nelson
 */
public class User {
    private String name;
    private String email;
    private String password;
    private Long id;
    private Date registerTime;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(Date registerTime) {
        this.registerTime = registerTime;
    }
    
}
