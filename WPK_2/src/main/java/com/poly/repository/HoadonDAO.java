package com.poly.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entities.HoaDon;

public interface HoadonDAO extends JpaRepository<HoaDon, Integer> {

	@Query("SELECT o FROM HoaDon o WHERE  o.khachhang.taiKhoan = ?1")

	Page<HoaDon> findAllBytaiKhoanLike(String keywords, Pageable pageable);

}