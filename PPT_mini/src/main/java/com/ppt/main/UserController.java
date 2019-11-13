package com.ppt.main;

import java.sql.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ppt.model.User;
import com.ppt.service.user.IUserManageService;

@Controller
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(AuctionController.class);
	@Autowired
	IUserManageService userManageService;

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String sign() {
		System.out.println("회원가입창 진입");

		return "signup";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		System.out.println("로그인창 진입");

		return "login";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signPost(@RequestParam("Cid") String id, @RequestParam("Cpw") String pw,
			@RequestParam("Cname") String name, @RequestParam("Cbirth") Date birth,
			@RequestParam("Cemail") String email, @RequestParam("Ctel") int phone,
			@RequestParam("Caddress") String address) {
		System.out.println("회원가입 전송 컨트롤러 진입");
		AbstractApplicationContext context = new GenericXmlApplicationContext("application-config.xml");
		IUserManageService ums = context.getBean("userManageService", IUserManageService.class);

		User u1 = new User();
		u1.setId(id);
		u1.setPw(pw);
		u1.setName(name);
		u1.setBirth(birth);
		u1.setEmail(email);
		u1.setPhoneNum(phone);
		u1.setAddress(address);
		System.out.println(u1.getName());

		try {
			System.out.println("");
			ums.signupUser(u1);
		} catch (Exception e) {
			System.out.println("전송오류 : " + e);
		}

		return "/";
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(@RequestParam("Cid") String id, @RequestParam("Cpw") String pw) {
		System.out.println("로그인 전송 컨트롤러 진입");
		AbstractApplicationContext context = new GenericXmlApplicationContext("application-config.xml");
		IUserManageService ums = context.getBean("userManageService", IUserManageService.class);
		User u1 = null;
		try {
			System.out.println("");
			u1 = ums.loginUser(id, pw);
		} catch (Exception e) {
			System.out.println("전송오류 : " + e);
		}
		System.out.println(u1.getName()+"님 반갑습니다!");
		
		return "/";
	}
}
