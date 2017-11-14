/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dn.travel.controller;

//import com.dn.travel.service.User;
import sun.security.jca.GetInstance;

/**
 *
 * @author ict-sv-nghiatd
 */
public class Controller {

    private static Controller controller;

    static {
        controller = new Controller();
    }
    public void addSex(){
        
    }
    
//    public boolean  login(String username, String password){
//        return checkLogin(username, password);
//    }
   
    
    public static Controller getInstance(){
        return controller;
    }

//    private static boolean checkLogin(java.lang.String arg0, java.lang.String arg1) {
//        com.dn.travel.service.UserService_Service service = new com.dn.travel.service.UserService_Service();
//        com.dn.travel.service.UserService port = service.getUserServicePort();
//        return port.checkLogin(arg0, arg1);
//    }
//
//    private static String createUser(com.dn.travel.service.User arg0) {
//        com.dn.travel.service.UserService_Service service = new com.dn.travel.service.UserService_Service();
//        com.dn.travel.service.UserService port = service.getUserServicePort();
//        return port.createUser(arg0);
//    }
//
//    private static void addSex(com.dn.travel.service.Sex user) {
//        com.dn.travel.service.TravelAppService_Service service = new com.dn.travel.service.TravelAppService_Service();
//        com.dn.travel.service.TravelAppService port = service.getTravelAppServicePort();
//        port.addSex(user);
//    }
//    
    

}
