package com.poly.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entities.Chitietgiohang;

public interface ChitietgiohangDAO extends JpaRepository<Chitietgiohang, Integer> {
//	List<Chitietgiohang> findByKhachHang(String khachhang);

    @Query("SELECT SUM(ct.soLuong) FROM Chitietgiohang ct WHERE ct.giohang.idGh = :giohangId GROUP BY ct.giohang.idGh")
    Integer sumSoLuongByIdGh(@Param("giohangId") Integer giohangId);
}
