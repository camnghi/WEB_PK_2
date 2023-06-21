package com.poly.DAO;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entities.Chitietgiohang;
import com.poly.entities.Giohang;
import com.poly.entities.Khachhang;
import com.poly.entities.Sanpham;

public interface ChitietgiohangRepository extends JpaRepository<Chitietgiohang, Long> {
    Optional<Chitietgiohang> findByGiohangAndSanpham(Giohang giohang, Sanpham sanpham);
    List<Chitietgiohang> findByGiohang(Giohang giohang);
    
    @Query("SELECT ctgh FROM Chitietgiohang ctgh JOIN ctgh.giohang gh WHERE gh.taiKhoan = :khachhang")
    List<Chitietgiohang> findByKhachhang(@Param("khachhang") Khachhang khachhang);
}