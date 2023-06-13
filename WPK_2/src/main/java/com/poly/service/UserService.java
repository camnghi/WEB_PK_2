package com.poly.service;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.poly.entities.KhachHang;
import com.poly.interfaces.UserRepository;

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
		httpSession.removeAttribute("user"); // xóa thông tin đăng nhập khỏi session
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
}
