package com.ppt.main;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

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
			userManageService.signupUser(u1);
		} catch (Exception e) {
			System.out.println("Error : " + e);
		}

		return "/";
	}

//	@RequestMapping(value = "/login", method = RequestMethod.POST)
//	public String loginPost(@RequestParam("Cid") String id, @RequestParam("Cpw") String pw, Model model) {
//		System.out.println("/login POST");
//		
//		
//		User u1 = null;
//		try {
//			System.out.println("loginUser 전");
//			u1 = userManageService.loginUser(id, pw);
//			System.out.println("loginUser 후");
//			HomeController.commonUser = u1;
//			if (u1.getName() != null) {
//				System.out.println(HomeController.commonUser.getName() + "님이 로그인하셧씁니다.");
//				model.addAttribute("user", u1);
//			} else {
//				System.out.println("로그인에 실패하셨습니다.");
//			}
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//		
//
//		return "/";
//	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginPost(@RequestParam("Cid") String id, @RequestParam("Cpw") String pw, HttpServletRequest request) {
		System.out.println("/login POST");
		
		ModelAndView mav = new ModelAndView("/");
		User u1 = null;
		try {
			System.out.println("loginUser 전");
			u1 = userManageService.loginUser(id, pw);
			System.out.println("loginUser 후");
			HomeController.commonUser = u1;
			if (u1.getName() != null) {
				System.out.println(HomeController.commonUser.getName() + "님이 로그인하셧씁니다.");
				request.getSession().setAttribute("user", u1);
				request.getSession().setAttribute("loginFlag", true);
				request.getSession().setMaxInactiveInterval(60*30);
				
				mav.addObject("msg", "로그인에 성공하였습니다.");
			} else {
				System.out.println("로그인에 실패하셨습니다.");
			}
		} catch (EmptyResultDataAccessException e) {
			System.out.println(e);
			mav.setViewName("/login");
			request.getSession().setAttribute("loginFlag", false);
			System.out.println("로그인에 실패하셨습니다.");
		}
		

		return mav;
	}
}
