package com.ppt.main;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.ppt.model.User;
import com.ppt.service.user.IUserManageService;
import com.ppt.service.user.UserManageService;

public class TestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stubAbstractApplicationContext context =
		AbstractApplicationContext context = new GenericXmlApplicationContext("application-config.xml");
		IUserManageService ww = context.getBean("userManageService", IUserManageService.class);
//
		User u1 = new User();
//		u1.setId("anjin1100");
//		u1.setPw("cjfwls225!");
//		u1.setName("an");
//		u1.setPhoneNum(123);
//		u1.setAddress("serou");
//		u1.setEmail("anjin@jjj");
//
//		ww.signupUser(u1);
		ww.loginUser(u1);
	}

}
