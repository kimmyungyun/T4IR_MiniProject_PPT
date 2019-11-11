package com.ppt.service.user;

import com.ppt.model.User;

public interface IUserManageService {
	boolean signupUser(User user);
	boolean updateUser(User user);
	boolean deleteUser(User user);
	boolean loginUser(User user);
	boolean logoutUser(User user);
}