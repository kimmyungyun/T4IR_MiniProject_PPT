package com.ppt.main;

import java.util.Date;

//import java.sql.Date;


import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.ppt.model.Auction;
import com.ppt.model.Items;
import com.ppt.model.User;
import com.ppt.service.auction.IAuctionManageService;
import com.ppt.service.item.IItemManageService;
import com.ppt.service.user.IUserManageService;
import com.ppt.service.user.UserManageService;

public class TestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stubAbstractApplicationContext context =
		
		AbstractApplicationContext context = new GenericXmlApplicationContext("application-config.xml");
		IUserManageService ww = context.getBean("userManageService", IUserManageService.class);
		
//		User u1 = new User();
//		u1.setId("anjin1100");
//		u1.setPw("cjfwls225!");
//		u1.setName("an");
//		u1.setPhoneNum(123);
//		u1.setAddress("serou");
//		u1.setEmail("anjin@jjj");
//
//		ww.signupUser(u1);
//		ww.loginUser(u1);
//		
		
		IItemManageService aa = context.getBean("itemManageService", IItemManageService.class);
		IAuctionManageService bb = context.getBean("auctionManageService", IAuctionManageService.class);
		Items it = new Items();
		it.setCategory("이어폰");
		it.setName("아이팟2");
		it.setUid(123);

		aa.registerItem(it);
		
//		Auction act = new Auction();
//		//System.out.println(new java.sql.Date(new Date().getTime()));
//		
////		System.out.println(act.getEndTime());
//		act.setItemid(49);
//		act.setType((byte)'S');
//		act.setUserId(123);
		
		
		aa.deleteItem(it);
//		bb.registerAuction(act);
		bb.sortNewAuction();
	}

}
