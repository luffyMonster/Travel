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
    
    public String createUser(User user){
        return _createUser(user);
    }
    
    public User updateUser(User u){
        return _updateUser(u);
    }
    private static User checkLogin(java.lang.String arg0, java.lang.String arg1) {
        com.dn.travel.service.account.AccountService_Service service = new com.dn.travel.service.account.AccountService_Service();
        com.dn.travel.service.account.AccountService port = service.getAccountServicePort();
        User u = port.login(arg0, arg1);
        return u;
    }

    private static String _createUser(com.dn.travel.service.account.User arg0) {
        com.dn.travel.service.account.AccountService_Service service = new com.dn.travel.service.account.AccountService_Service();
        com.dn.travel.service.account.AccountService port = service.getAccountServicePort();
        return port.createUser(arg0);
    }

    private static User _updateUser(com.dn.travel.service.account.User arg0) {
        com.dn.travel.service.account.AccountService_Service service = new com.dn.travel.service.account.AccountService_Service();
        com.dn.travel.service.account.AccountService port = service.getAccountServicePort();
        return port.updateUser(arg0);
    }
    
    
}
