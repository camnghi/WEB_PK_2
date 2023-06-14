package com.poly.service;

import java.util.Random;
import java.util.UUID;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.data.crossstore.ChangeSetPersister.NotFoundException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.poly.entities.KhachHang;
import com.poly.interfaces.UserRepository;

import jakarta.mail.MessagingException;
import jakarta.servlet.http.HttpSession;
import jakarta.transaction.Transactional;

@Service
public class UserService {
	@Autowired
	private HttpSession httpSession;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private JavaMailSender javaMailSender;
	
	
	public void login(String taiKhoan, String matKhau) {
		KhachHang khachhang = userRepository.findByTaiKhoanAndMatKhau(taiKhoan, matKhau);
		if (khachhang == null) {
			throw new RuntimeException("Tên đăng nhập hoặc mật khẩu không đúng");
		}
		httpSession.setAttribute("khachhang", khachhang); // lưu thông tin đăng nhập vào session
	}

	public void logout() {
		httpSession.removeAttribute("khachhang"); // xóa thông tin đăng nhập khỏi session
	}

	public void register(KhachHang khachhang) {
		khachhang.setAdmin(false);
		khachhang.setTrangThai(false);
		String maXacNhan = generateVerificationCode();
		khachhang.setMaXacNhan(maXacNhan); // lưu mã xác nhận vào đối tượng User
		userRepository.save(khachhang); // lưu đối tượng User vào cơ sở dữ liệu
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
	
	//Quen Mat Khau
	public void resetPassword(String email) {
		KhachHang khachHang = userRepository.findByEmail(email);
		if (khachHang == null) {
			throw new IllegalArgumentException("Không tìm thấy khách hàng với email " + email);
		}
//		String newPassword = UUID.randomUUID().toString();
		String newPassword = "";
		Random random = new Random();
		for (int i = 0; i < 5; i++) {
		int randomNumber = random.nextInt(10);
		newPassword += Integer.toString(randomNumber);
		}
		khachHang.setMatKhau(newPassword);
		userRepository.save(khachHang);
		// TODO: Gửi email thông báo về mật khẩu mới cho khách hàng
		String subject = "Thông báo mật khẩu mới cho tài khoản "+ khachHang.getTaiKhoan();
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
