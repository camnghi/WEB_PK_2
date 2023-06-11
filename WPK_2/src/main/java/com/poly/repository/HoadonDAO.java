package com.poly.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.HoaDon;


public interface HoadonDAO extends JpaRepository<HoaDon, Integer> {
//	Page<HoaDon> findAllByNameLike(String keywords, Pageable pageable);
	

}
