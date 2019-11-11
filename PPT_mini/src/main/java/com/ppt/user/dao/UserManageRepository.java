package com.ppt.user.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.ppt.model.User;

@Repository
public class UserManageRepository implements IUserManageRepository {
	@Autowired
	JdbcTemplate JdbcTemplate;
	@Override
	public boolean signupUser(User user) {
		// TODO Auto-generated method stub
		String sql = "";
		return true;
	}

	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean deleteUser(User user) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean loginUser(User user) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean logoutUser(User user) {
		// TODO Auto-generated method stub
		return true;
	}

}
