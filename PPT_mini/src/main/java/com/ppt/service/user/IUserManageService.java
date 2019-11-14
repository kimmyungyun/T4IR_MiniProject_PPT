package com.ppt.service.user;

import com.ppt.model.User;

public interface IUserManageService {
	boolean signupUser(User user);
	boolean deleteUser(User user);
	User loginUser(String id, String pw);
}
