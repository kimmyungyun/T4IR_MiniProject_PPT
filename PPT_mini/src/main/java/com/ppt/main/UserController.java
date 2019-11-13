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
		System.out.println("회원가입 폼 진입");
		return "signup";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		System.out.println("/login GET");
		return "login";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signPost(@RequestParam("Cid") String id, @RequestParam("Cpw") String pw,
			@RequestParam("Cname") String name, @RequestParam("Cbirth") Date birth,
			@RequestParam("Cemail") String email, @RequestParam("Ctel") String phone,
			@RequestParam("Caddress") String address) {
		AbstractApplicationContext context = new GenericXmlApplicationContext("application-config.xml");
		IUserManageService ums = context.getBean("userManageService", IUserManageService.class);

		User u1 = new User();
		u1.setId(id);
		u1.setPw(pw);
		u1.setName(name);
		u1.setBirth(birth);
		u1.setEmail(email);
		u1.setPhoneNum(Integer.parseInt(phone));
		u1.setAddress(address);
		System.out.println(u1.getName());

		try {
			System.out.println("");
			ums.signupUser(u1);
		} catch (Exception e) {
			System.out.println("�쟾�넚�삤瑜� : " + e);
		}
		System.out.println("회원가입 폼 완료");
		return "/";
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(@RequestParam("Cid") String id, @RequestParam("Cpw") String pw) {
		System.out.println("/login POST");
		AbstractApplicationContext context = new GenericXmlApplicationContext("application-config.xml");
		IUserManageService ums = context.getBean("userManageService", IUserManageService.class);
		User u1 = null;
		try {
			u1 = ums.loginUser(id, pw);
			HomeController.commonUser = u1;
		} catch (Exception e) {
			System.out.println(e);
		}
		System.out.println(HomeController.commonUser.getName()+"님이 로그인하셧씁니다.");
		return "/";
	}
}
