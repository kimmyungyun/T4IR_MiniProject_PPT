package com.ppt.dao.user;

import com.ppt.model.User;

public interface IUserManageRepository {
	boolean signupUser(User user);
	boolean updateUser(User user);
	boolean deleteUser(User user);
	boolean loginUser(User user);
	boolean logoutUser(User user);
}
