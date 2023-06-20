package com.poly.entities;

import javax.persistence.*;

import lombok.Data;
@Data
@Entity
@Table(name = "Khachhangs")
public class Khachhang {
    @Id
    private String tai_khoan;
    
    private String ho_ten;

    
    // Constructors, getters, and setters
}
