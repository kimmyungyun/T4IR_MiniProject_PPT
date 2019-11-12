package com.ppt.dao.item;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.ppt.model.Auction;
import com.ppt.model.Image;
import com.ppt.model.Items;

@Repository
public class ItemManageRepository implements IItemManageRepository {
	@Autowired
	JdbcTemplate jdbcTemplate;
	public class ItemMapper implements RowMapper<Items> {
		@Override
		public Items mapRow(ResultSet rs, int count) throws SQLException {
			Items item = new Items();
			item.setCategory(rs.getString("I_CATEGORY"));
			item.setItemId(rs.getInt("I_ID"));
			item.setName(rs.getString("I_NAME"));
			item.setUid(rs.getInt("U_UID"));
			
			return item;
		}
	}
	@Override
	public boolean registerItem(Items item) {
		// TODO Auto-generated method stub
		System.out.println(item.getCategory());
		System.out.println(item.getName());
		System.out.println(item.getUid());
		try {
		String sql = "INSERT INTO ITEMS " + "(I_CATEGORY, I_NAME, U_UID) "
				+ "VALUES (?, ?, ?)";
		jdbcTemplate.update(sql, item.getCategory(), item.getName(), item.getUid());
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("We can't insert items");
			return false;
		}

		return true;
		
	}

	@Override
	public boolean deleteItem(Items item) {
		// TODO Auto-generated method stub
		String sql="DELETE FROM items WHERE I_ID=?";
		try {
			jdbcTemplate.update(sql, item.getItemId());
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("We can't delete items");
			return false;
		}
		return true;
		
	}

	@Override
	public boolean registerImg(Items item, Image img) {
		// TODO Auto-generated method stub
		String sql = "";
		
		return false;
	}

}
