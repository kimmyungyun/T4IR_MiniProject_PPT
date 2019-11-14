package com.ppt.dao.user;

import com.ppt.model.User;

public interface IUserManageRepository {
	boolean signupUser(User user);
	boolean deleteUser(User user);
	User loginUser(String id, String pw);
}
