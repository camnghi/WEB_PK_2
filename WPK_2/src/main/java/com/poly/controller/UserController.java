package com.poly.controller;

import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.poly.entities.User;
import com.poly.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("index")
public class UserController {
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpServletResponse response;
	
    @Autowired
    private UserService userService;
// Đăng nhập 
    @GetMapping("/DangNhap")//Gọi đến trang đăng nhập
    public String form() throws UnsupportedEncodingException { 
   	 request.setAttribute("title","Đăng nhập");
   	 request.setAttribute("view", "DangNhap"); 
   	 request.setCharacterEncoding("UTF-8");
   	  response.setCharacterEncoding("UTF-8"); 
   	  return "index_Main";  
   	 }
    @PostMapping("/DangNhap")//Xử lý click button Đăng nhập
    public String login(@RequestParam String username, @RequestParam String password, RedirectAttributes redirectAttributes) {
        try {
            userService.login(username, password);
            return "redirect:/index/form";//Nếu đúng user,pass quay về trang chủ
        } catch (Exception e) {
            redirectAttributes.addAttribute("error", "true");
            return "redirect:/index/DangNhap";//Nếu sai ở lại trang đăng nhập
        }
    }
//Đăng Xuất   
    @GetMapping("/DangXuat")//Đăng xuất tài khoản
    public String logout() {
        userService.logout();
        return "redirect:/index/form";
    }
//Đăng kí    
    @GetMapping("DangKi")//Gọi form đăng kí
    public String register(Model model) {
    	request.setAttribute("title", "Đăng ký");
		request.setAttribute("view", "DangKi");
//		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		return "index_Main";
    }
    
    @PostMapping("/DangKi")//Ấn button đăng kí
    public String register(@ModelAttribute("user") User user, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "/index/DangKi";
        }
        userService.register(user);
        return "redirect:/index/XacNhan";//Qua trang xác nhận pass
    }
 //Mã xác nhận  
    @GetMapping("/XacNhan")//Qua trang xác nhận
    public String verify(Model model) {
        model.addAttribute("code", "");
        request.setAttribute("title", "Xác Nhận");
		request.setAttribute("view", "nhapmaXN");
		response.setCharacterEncoding("UTF-8");
		return "index_Main";
    }
    
    @PostMapping("/XacNhan")//Xử lý button đăng nhập
    public String verify(@RequestParam("code") String code, Model model) {
        try {
            userService.verify(code);
            return "redirect:/index/XacNhanOk";
        } catch (Exception e) {
            model.addAttribute("error", e.getMessage());
            return "redirect:/index/XacNhan";
        }
    }
  //Xác nhận thành công
    @GetMapping("/XacNhanOk")//Qua trang xác nhận
    public String XacNhanOk() {
        request.setAttribute("title", "Xác Nhận Thành Công");
		request.setAttribute("view", "XacNhanOk");
		response.setCharacterEncoding("UTF-8");
		return "index_Main";
    }
}
