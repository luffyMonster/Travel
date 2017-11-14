/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dn.travel.controllers;

import com.dn.travel.service.tour.Tour;

/**
 *
 * @author duynghia
 */
public class TourController {
    
    public String createTour(Tour tour){
        return _createTour(tour);
    }

    private static String _createTour(com.dn.travel.service.tour.Tour arg0) {
        com.dn.travel.service.tour.TourService_Service service = new com.dn.travel.service.tour.TourService_Service();
        com.dn.travel.service.tour.TourService port = service.getTourServicePort();
        return port.createTour(arg0);
    }
    
}
