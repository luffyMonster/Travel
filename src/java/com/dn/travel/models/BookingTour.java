/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dn.travel.models;

import java.io.Serializable;
import java.time.LocalDateTime;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author duynghia
 */
@Entity
public class BookingTour implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    private Tour tour;
    
    private Customer customer;
    
    private float payedMoney;
    
    private LocalDateTime created;

    public BookingTour(Long id, Tour tour, Customer customer, float payedMoney, LocalDateTime created) {
        this.id = id;
        this.tour = tour;
        this.customer = customer;
        this.payedMoney = payedMoney;
        this.created = created;
    }

    public BookingTour() {
    }
    
    

    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public float getPayedMoney() {
        return payedMoney;
    }

    public void setPayedMoney(float payedMoney) {
        this.payedMoney = payedMoney;
    }

    public LocalDateTime getCreated() {
        return created;
    }

    public void setCreated(LocalDateTime created) {
        this.created = created;
    }
    
    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof BookingTour)) {
            return false;
        }
        BookingTour other = (BookingTour) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.dn.travel.models.BookingTour[ id=" + id + " ]";
    }
    
}
