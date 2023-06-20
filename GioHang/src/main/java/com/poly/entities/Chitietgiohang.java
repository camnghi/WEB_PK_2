package com.poly.entities;

import javax.persistence.*;

import lombok.Data;
@Data
@Entity
@Table(name = "Chitietgiohangs")
public class Chitietgiohang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_ctgh;
    
    @ManyToOne
    @JoinColumn(name = "id_sp")
    private Sanpham sanpham;
    
    private int so_luong;
    
    @ManyToOne
    @JoinColumn(name = "id_gh")
    private Giohang giohang;
    
    // Constructors, getters, and setters
}