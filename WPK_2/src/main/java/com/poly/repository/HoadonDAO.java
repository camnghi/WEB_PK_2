package com.poly.repository;



import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entities.HoaDon;


public interface HoadonDAO extends JpaRepository<HoaDon, Integer> {
	
	
	
	@Query("SELECT o FROM HoaDon o WHERE  o.khachhang.taiKhoan LIKE ?1")
//	Page<HoaDon> findByKeywords(String keywords, Pageable pageable);
  Page<HoaDon> findAllBytaiKhoanLike(String keywords, Pageable pageable);

//	@Query("select sp.ten_sp from Hoadons hd \r\n"
//			+ "join Hoadonchitiets hdct \r\n"
//			+ "on hd.id_hd = hdct.id_hd\r\n"
//			+ "join Sanphams sp on hdct.id_sp = sp.id_sp")
//	List<HoaDon> getList
//	@Query("SELECT Sanphams.ten_sp, Sanphams.gia_sp, Sanphams.anh_sp\r\n"
//			+ "FROM Sanphams\r\n"
//			+ "INNER JOIN Chitietgiohangs ON Sanphams.id_sp = Chitietgiohangs.id_sp\r\n"
//			+ "INNER JOIN Giohangs ON Chitietgiohangs.id_gio_hang = Giohangs.id_gio_hang\r\n"
//			+ "WHERE Giohangs.id_gio_hang = '1'")
	
	}
