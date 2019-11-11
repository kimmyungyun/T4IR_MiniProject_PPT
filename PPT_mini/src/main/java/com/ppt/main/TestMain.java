package com.ppt.main;

import com.ppt.model.User;
import com.ppt.service.user.UserManageService;

public class TestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UserManageService ww = new UserManageService();
		
		User u1 = new User();
		u1.setId("anjin1100");
		u1.setPw("cjfwls225!");
		u1.setName("an");
		u1.setPhoneNum(123);
		u1.setAddress("serou");
		u1.setEmail("anjin@jjj");
		
		ww.signupUser(u1);
		
		
	}

}
