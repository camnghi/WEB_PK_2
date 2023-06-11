package com.poly.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.servlet.http.HttpSession;
import lombok.Data;

@Data
@Entity
@Table(name = "KhachHang")
public class User {
	 	@Id	    
	 	@Column(nullable = false,unique = true)
	    private String username;
	 
	 	@Column(nullable = false)
	    private String password;
	 	
	 	@Column(nullable = false)
	    private String fullname;
	 	
	    @Column(nullable = false, unique = true)
	    private String email;
	    
	    @Column(nullable = false)
	    private boolean trangthai;
	    
	    @Column(nullable = false)
	    private boolean admin;

	    @Column(name = "verification_code")
	    private String verificationCode;

}
