package com.poly.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entities.Hoadonchitiet;

public interface HoadonchitietDAO extends JpaRepository<Hoadonchitiet, Integer> {
	@Modifying
	@Query("UPDATE HoaDon o SET o.trangThai = false WHERE o.idHd = :idHd")
	void updateTrangThaiHoaDon(@Param("idHd") Integer idHd);
}
