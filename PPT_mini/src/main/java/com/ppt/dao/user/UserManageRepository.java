package com.ppt.dao.user;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.ppt.model.User;

@Repository
public class UserManageRepository implements IUserManageRepository {
	@Autowired
	JdbcTemplate jdbcTemplate;

	private class UsrMapper implements RowMapper<User> {
		@Override
		public User mapRow(ResultSet rs, int count) throws SQLException {
			User usr = new User();
			//usr.setUserId(rs.getInt("u_uid"));
			//usr.setId(rs.getString("u_id"));
			//usr.setPw(rs.getString("u_password"));
			usr.setName(rs.getString("u_name"));
			//usr.setEmail(rs.getString("u_email"));
			//usr.setBirth(rs.getDate("u_birth"));
			//usr.setPhoneNum(rs.getInt("u_phone"));
			//usr.setAddress(rs.getString("u_adress"));
			return usr;
		}
	}
	@Override
	public boolean signupUser(User usr) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO users " + "(u_id, u_password, u_name, u_email, u_birth, u_phone, u_address) "
				+ "VALUES (?, ?, ?, ?, sysdate, ?, ?)";
		jdbcTemplate.update(sql, usr.getId(), usr.getPw(), usr.getName(), usr.getEmail(), usr.getPhoneNum(),
				usr.getAddress());
		return true;
	}

	@Override
	public boolean deleteUser(User usr) {
		String sql = "DELETE FROM users WHERE u_id=? AND u_password=?";
		jdbcTemplate.update(sql,usr.getId(),usr.getPw());
		return true;
	}

	@Override
	public boolean loginUser(User usr) {
		// usr.getId()
		// usr.getPw()
		System.out.println("repository_loginUser_execute");
		String sql = "select u_name from users";
		System.out.println(jdbcTemplate.query(sql, new UsrMapper()).get(0).toString());
		return true;
	}
}
