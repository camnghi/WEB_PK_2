package com.poly.entities;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name = "Sanphams")
public class Sanpham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_sp;
    
    private String ten_sp;
    
    private double gia_sp;
    
    // Constructors, getters, and setters
}