package com.ppt.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ppt.dao.user.IUserManageRepository;
import com.ppt.model.User;

@Service
public class UserManageService implements IUserManageService {
	@Autowired
	IUserManageRepository repository;

	@Override
	public boolean signupUser(User user) {
		repository.signupUser(user);
		return true;
	}

	@Override
	public boolean deleteUser(User user) {
		return true;
	}

	@Override
	public User loginUser(String id, String pw) {
		System.out.println("service_loginUser_execute");
		return repository.loginUser(id, pw);
	}
	
}
