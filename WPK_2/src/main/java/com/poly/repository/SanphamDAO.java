package com.poly.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.SanPham;

public interface SanphamDAO extends JpaRepository<SanPham, Integer> {
	Page<SanPham> findAllBytenSpLike(String keywords, Pageable pageable);

//	Page<SanPham> findAllBytenSpLikeAndidLoai(String tenSp, Integer idLoai, Pageable pageable);
//	
//	Page<SanPham> findAllByLoaiSp_IdLoai(Integer idLoai, Pageable pageable);
	Page<SanPham> findAllByTenSpContainingAndLoaisanpham_IdLoai(String tenSp, int idLoai, Pageable pageable);
    Page<SanPham> findAllByLoaisanpham_IdLoai(int idLoai, Pageable pageable);
}
