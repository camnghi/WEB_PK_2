package com.poly.service;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.poly.entities.User;
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
    
    public void login(String username, String password) {
        User user = userRepository.findByUsernameAndPassword(username, password);
        if (user == null) {
            throw new RuntimeException("Tên đăng nhập hoặc mật khẩu không đúng");
        }
        httpSession.setAttribute("user", user); // lưu thông tin đăng nhập vào session
    }

    public void logout() {
        httpSession.removeAttribute("user"); // xóa thông tin đăng nhập khỏi session
    }

    public void register(User user) {
    		user.setAdmin(false);
    	    user.setTrangthai(false);
    	    String verificationCode = generateVerificationCode();
    	    user.setVerificationCode(verificationCode); // lưu mã xác nhận vào đối tượng User
    	    userRepository.save(user); // lưu đối tượng User vào cơ sở dữ liệu
    	    sendVerificationEmail(user, verificationCode);
    }
    
    @Transactional
    public void verify(String code) {
    	User user = userRepository.findByVerificationCode(code);
        if (user == null) {
            throw new RuntimeException("Mã xác nhận không hợp lệ");
        }
        if (user.isTrangthai()) {
            throw new RuntimeException("Tài khoản đã được xác nhận trước đó");
        }
        user.setTrangthai(true);
        user.setVerificationCode(null); // Xóa mã xác nhận khỏi đối tượng User
        userRepository.save(user);
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
    
    private void sendVerificationEmail(User user,String verificationCode) {
        SimpleMailMessage msg = new SimpleMailMessage();
        msg.setTo(user.getEmail());
        msg.setSubject("Vui lòng xác nhận tài khoản của bạn");
        msg.setText("Mã xác nhận được gửi đến tài khoản của bạn là: "
                + verificationCode);
        javaMailSender.send(msg);
    }
}
