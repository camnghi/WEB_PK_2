package com.poly.service;

import java.io.IOException;
import java.util.Random;
import java.net.URLEncoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.poly.entities.KhachHang;
import com.poly.interfaces.UserRepository;
import com.poly.repository.KhachhangDAO;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.transaction.Transactional;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	@Autowired
	KhachhangDAO KHdao;
	@Autowired
	HttpSession session;
	@Autowired
	private JavaMailSender javaMailSender;
	
	public void update(KhachHang khachhang) {
		KHdao.save(khachhang);
	}
	
	public String login(String taiKhoan, String matKhau, boolean ghiNho, Model model, HttpServletResponse response) throws IOException {
	    KhachHang khachHang = userRepository.findByTaiKhoanAndMatKhau(taiKhoan, matKhau);
	    if (khachHang == null) {
	        throw new RuntimeException("Tên đăng nhập hoặc mật khẩu không đúng");
	    }
	    if (!khachHang.isTrangThai()) {
	        throw new RuntimeException("Tài khoản của bạn đã chưa được xác minh, vui lòng kiểm tra mail hoặc chọn vào quên mật khẩu");
	    }

	    // Lưu thông tin đăng nhập vào session
	    session.setAttribute("khachhang", khachHang);

	    // Lưu tài khoản vào cookie nếu người dùng chọn checkbox "Ghi nhớ tôi"
	 // Mã hóa tài khoản trước khi lưu vào cookie nếu checkbox "Ghi nhớ tôi" được chọn
	    if (ghiNho) {
	        String encodedTaiKhoan = URLEncoder.encode(khachHang.getTaiKhoan(), "UTF-8");
	        Cookie cookie = new Cookie("taiKhoan", encodedTaiKhoan);
	        System.out.println(encodedTaiKhoan);
	        cookie.setMaxAge(120);
	        cookie.setPath("/");
	        response.addCookie(cookie);
	    } else {
	        Cookie cookie = new Cookie("taiKhoan", null);
	        cookie.setMaxAge(0);
	        cookie.setPath("/");
	        response.addCookie(cookie);
	    }
	    
	 // Kiểm tra nếu tài khoản là admin, chuyển hướng đến giao diện admin
	    if (khachHang.isAdmin()) {
	        model.addAttribute("khachHang", khachHang);
	        // Trả về tên của view cho giao diện admin
	        return "indexAD/form";
	    }

	    // Trả về tên của view cho giao diện khách hàng
	    return "index/form";
	}
//login cũ ko có cookie
//	public void login(String taiKhoan, String matKhau,Model model)  throws IOException { 
//		KhachHang khachhang = userRepository.findByTaiKhoanAndMatKhau(taiKhoan, matKhau);
//		   if (khachhang == null) {
//			   throw new RuntimeException("Tên đăng nhập hoặc mật khẩu không đúng");
//		    }
//		    if (!khachhang.isTrangThai()) {
//		    	 throw new RuntimeException("Tài khoản của bạn đã chưa được xác minh,vui lòng kiểm tra mail hoặc chọn vào quên mật khẩu");
//		    }
//		session.setAttribute("khachhang", khachhang); // lưu thông tin đăng nhập vào session
//	}

	public void logout() {
		session.removeAttribute("khachhang"); // xóa thông tin đăng nhập khỏi session
	}
	

//	public void register(KhachHang khachhang) {
//		khachhang.setAdmin(false);
//		khachhang.setTrangThai(false);
//		String maXacNhan = generateVerificationCode();
//		khachhang.setMaXacNhan(maXacNhan); // lưu mã xác nhận vào đối tượng User
//		userRepository.save(khachhang); // lưu đối tượng User vào cơ sở dữ liệu
//		sendVerificationEmail(khachhang, maXacNhan);
//	}
	
	public void register(KhachHang khachhang) {
	    // Kiểm tra tên tài khoản đã tồn tại trong cơ sở dữ liệu chưa
	    if (userRepository.findByTaiKhoan(khachhang.getTaiKhoan()) != null) {
	        throw new RuntimeException("Tên tài khoản đã tồn tại.");
	    }
	    
	    // Kiểm tra email đã tồn tại trong cơ sở dữ liệu chưa
	    if (userRepository.findByEmail(khachhang.getEmail()) != null) {
	        throw new RuntimeException("Email đã tồn tại.");
	    }
	    
	    // Kiểm tra trường mật khẩu và xác nhận mật khẩu có khớp nhau không
	    String matKhau = khachhang.getMatKhau();
	    String xacNhanMatKhau = khachhang.getXacNhanMatKhau();
	    if (!matKhau.equals(xacNhanMatKhau)) {
	        throw new RuntimeException("Mật khẩu và xác nhận mật khẩu không khớp.");
	    }
	    
	    // Set giá trị mặc định cho khách hàng
	    khachhang.setAdmin(false);
	    khachhang.setTrangThai(false);
	    String maXacNhan = generateVerificationCode();
	    khachhang.setMaXacNhan(maXacNhan);
	    
	    // Lưu khách hàng vào cơ sở dữ liệu
	    userRepository.save(khachhang);
	    
	    // Gửi email xác nhận đến khách hàng
	    sendVerificationEmail(khachhang, maXacNhan);
	}
	


	@Transactional
	public void verify(String code) {
		KhachHang khachhang = userRepository.findBymaXacNhan(code);
		if (khachhang == null) {
			throw new RuntimeException("Mã xác nhận không hợp lệ");
		}
		if (khachhang.isTrangThai()) {
			throw new RuntimeException("Tài khoản đã được xác nhận trước đó");
		}
		khachhang.setTrangThai(true);
		khachhang.setMaXacNhan(null); // Xóa mã xác nhận khỏi đối tượng User
		userRepository.save(khachhang);
	}

	private String generateVerificationCode() {
		String chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
		StringBuilder sb = new StringBuilder();
		Random random = new Random();
		for (int i = 0; i < 6; i++) {
			sb.append(chars.charAt(random.nextInt(chars.length())));
		}
		return sb.toString();
	}

	private void sendVerificationEmail(KhachHang khachhang, String maXacNhan) {
		SimpleMailMessage msg = new SimpleMailMessage();
		msg.setTo(khachhang.getEmail());
		msg.setSubject("Vui lòng xác nhận tài khoản của bạn");
		msg.setText("Mã xác nhận được gửi đến tài khoản của bạn là: " + maXacNhan);
		javaMailSender.send(msg);
	}

	// Quen Mat Khau
	public void resetPassword(String email) {
		KhachHang khachHang = userRepository.findByEmail(email);
		khachHang.setTrangThai(true);
		if (khachHang == null) {
			throw new RuntimeException("Không tìm thấy khách hàng với email " + email);
		}
		String newPassword = "";
		Random random = new Random();
		for (int i = 0; i < 5; i++) {
			int randomNumber = random.nextInt(10);
			newPassword += Integer.toString(randomNumber);
		}
		khachHang.setMatKhau(newPassword);
		userRepository.save(khachHang);
		// TODO: Gửi email thông báo về mật khẩu mới cho khách hàng
		String subject = "Thông báo mật khẩu mới cho tài khoản " + khachHang.getTaiKhoan();
		String text = "Mật khẩu mới của bạn là: " + newPassword;
		sendNewPass(email, subject, text);
	}

	private void sendNewPass(String to, String subject, String text) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject(subject);
		message.setText(text);
		javaMailSender.send(message);
	}
}
