package com.ppt.user.service;

import org.springframework.stereotype.Service;

import com.ppt.model.User;

@Service
public class UserManageService implements IUserManageService{
	
	@Override
	public boolean signupUser(User user) {
		
		return true;
	}
	
	@Override
	public boolean updateUser(User user) {
		return true;
	}
	
	@Override
	public boolean deleteUser(User user) {
		return true;
	}
	
	@Override
	public boolean loginUser(User user) {
		return true;
	}
	
	@Override
	public boolean logoutUser(User user) {
		return true;
	}
}
