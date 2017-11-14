/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dn.travel.controllers;

import com.dn.travel.service.account.User;

/**
 *
 * @author duynghia
 */
public class AccountController {
    public User login(String username, String pass){
        return checkLogin(username, pass);
    }
    private static User checkLogin(java.lang.String arg0, java.lang.String arg1) {
        com.dn.travel.service.account.AccountService_Service service = new com.dn.travel.service.account.AccountService_Service();
        com.dn.travel.service.account.AccountService port = service.getAccountServicePort();
        User u = port.login(arg0, arg1);
        System.out.println(u.getId() + u.getName());
        return u;
    }
    
}
