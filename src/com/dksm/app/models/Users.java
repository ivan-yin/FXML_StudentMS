/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dksm.app.models;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author nelson
 */
public class Users {
    private static Map<String, User> users = new HashMap<String, User>();
    static{
        User u1 = new User();
        u1.setId(System.nanoTime());
        u1.setName("zs1");
        u1.setPassword("666666");
        User u2 = new User();
        u2.setId(System.nanoTime());
        u2.setName("zs2");
        u2.setPassword("666666");
        users.put(u1.getName(), u1);
        users.put(u2.getName(), u2);
    }
    public static Map<String, User> getUsers(){
        return users;
    }
}
