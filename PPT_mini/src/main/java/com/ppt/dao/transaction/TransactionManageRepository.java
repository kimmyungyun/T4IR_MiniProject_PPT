package com.ppt.dao.transaction;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.ppt.model.Auction;
import com.ppt.model.Items;
import com.ppt.model.Transaction;
import com.ppt.model.User;

@Repository
public class TransactionManageRepository implements ITransactionManageRepository {
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
	public boolean registerTransaction(Auction auction, User user, int price) {
		// TODO Auto-generated method stub
		try {
		String itemSql = "SELECT * FROM ITEMS WHERE I_ID=" + auction.getItemid();
		List<Items> items = jdbcTemplate.query(itemSql, new ItemMapper());
		String sql = "INSERT INTO TRANSACTION " + "(T_DATE, T_PRICE, A_ID, U_UID) "
				+ "VALUES (?, ?, ?)";
		
		jdbcTemplate.update(sql, items.get(0).getCategory(), price, auction.getAuctionId(), user.getUserId());
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("We can't insert transaction");
			return false;
		}
		return true;
	}

	@Override
	public boolean deleteTransaction(Transaction transaction) {
		// TODO Auto-generated method stub
		return true;
	}

}