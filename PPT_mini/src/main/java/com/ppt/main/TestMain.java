package com.ppt.main;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.ppt.model.User;
import com.ppt.service.user.IUserManageService;
import com.ppt.service.user.UserManageService;

public class TestMain {
	// static ScheduledExecutorService executor;
	public static void main(String[] args) {
		// TODO Auto-generated method stubAbstractApplicationContext context =
		AbstractApplicationContext context = new GenericXmlApplicationContext("application-config.xml");
		IUserManageService ww = context.getBean("userManageService", IUserManageService.class);
        
        //executor = new ScheduledThreadPoolExecutor(1);
		final long timeInterval = 1000;
		Runnable runnable = new Runnable() {
			public void run() {
				while (true) {
					// ------- code for task to run
					System.out.println("Hello !!");
					// ------- ends here
					try {
						Thread.sleep(timeInterval);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			}
		};
		Thread thread = new Thread(runnable);
		thread.start();
		
		User u1 = new User();
		u1.setId("anjin1100");
		u1.setPw("cjfwls225!");
		u1.setName("an");
		u1.setPhoneNum(123);
		u1.setAddress("serou");
		u1.setEmail("anjin@jjj");
		u1.printInfo();
		// ww.signupUser(u1);
		u1 = ww.loginUser("u_id 001", "u_password 001");
		
		/*
		 * System.out.println(" / "+u1.getUserId()+" / "+u1.getId()+" / "+u1.getPw()
		 * +" / "+u1.getEmail()+" / "
		 * +u1.getName()+" / "+u1.getPhoneNum()+" / "+u1.getBirth()+" / "+u1.getAddress(
		 * ));
		 */
		u1.printInfo();

	}

}
