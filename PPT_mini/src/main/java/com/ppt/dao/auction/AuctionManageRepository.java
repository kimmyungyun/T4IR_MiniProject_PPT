package com.ppt.dao.auction;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.ppt.dao.item.ItemManageRepository.ItemMapper;
import com.ppt.model.Auction;
import com.ppt.model.Items;

@Repository
public class AuctionManageRepository implements IAuctionManageRepository {
	@Autowired
	JdbcTemplate jdbcTemplate;

	private class ItemMapper implements RowMapper<Items> {
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

	private class AuctionMapper implements RowMapper<Auction> {
		@Override
		public Auction mapRow(ResultSet rs, int count) throws SQLException {
			Auction auction = new Auction();

			auction.setAuctionId(rs.getInt("A_ID"));
			auction.setEndTime(rs.getDate("A_ENDTIME"));
			auction.setType((rs.getObject("A_TYPE").toString().charAt(0)));
			auction.setUserId(rs.getInt("U_UID"));
			auction.setItemid(rs.getInt("I_ID"));

			return auction;
		}
	}

	@Override
	public boolean registerAuction(Auction auction) {
		// TODO Auto-generated method stub

		java.sql.Date endTime = new java.sql.Date(new Date().getTime() + (long) (1000 * 60 * 60 * 24));

		String sql = "insert into auction (A_ENDTIME, A_TYPE, U_UID, I_ID) VALUES (?, ?, ?, ?)";
		try {
			jdbcTemplate.update(sql, endTime, auction.getType(), auction.getUserId(), auction.getItemid());
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("We can't register auction");
			return false;
		}
		return true;
	}

	@Override
	public boolean deleteAuction(int auctionNum) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM AUCTION WHERE A_ID=?";
		try {
			jdbcTemplate.update(sql, auctionNum);
		} catch (Exception e) {
			System.out.println("We can't delete auction");
			return false;
		}
		return true;
	}

	public Set<Integer> getListItemid(List<Items> items) {
		Set<Integer> itemIds = new LinkedHashSet<Integer>();
		for (Items item : items) {
			itemIds.add(item.getItemId());
		}
		return itemIds;
	}

	@Override
	public List<Auction> searchAuctionbyitemName(String name) {
		// TODO Auto-generated method stub
		List<Auction> resultAuctions = new ArrayList<Auction>();
		String itemSql = "SELECT * FROM ITEMS WHERE I_NAME=" + name;
		List<Items> items = jdbcTemplate.query(itemSql, new ItemMapper());

		for (Items item : items) {
			String auctionSql = "SELECT * FROM AUCTION WHERE I_ID=" + item.getItemId();
			List<Auction> findAuctions = jdbcTemplate.query(auctionSql, new AuctionMapper());
			resultAuctions.addAll(findAuctions);
		}

		return resultAuctions;
	}

	@Override
	public List<Auction> searchAuctionbyitemCategory(String category) {
		// TODO Auto-generated method stub
		List<Auction> resultAuctions = new ArrayList<Auction>();
		String itemSql = "SELECT * FROM ITEMS WHERE I_CATEGORY=" + category;
		try {
		List<Items> items = jdbcTemplate.query(itemSql, new ItemMapper());

		for (Items item : items) {
			String auctionSql = "SELECT * FROM AUCTION WHERE I_ID=" + item.getItemId();
			List<Auction> findAuctions = jdbcTemplate.query(auctionSql, new AuctionMapper());
			resultAuctions.addAll(findAuctions);
		}
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		return resultAuctions;
	}

	@Override
	public List<Auction> sortNewAuction(char type) {
		List<Auction> resultAuction = new ArrayList<Auction>();
		// 내림차순 정렬을 활용한 출력
		java.sql.Date today = new java.sql.Date(new Date().getTime());
		System.out.println(today);
		String sql = "SELECT * FROM AUCTION WHERE A_ENDTIME >= '" + today + "' AND A_TYPE='" + type
				+ "' ORDER BY A_ENDTIME DESC";

		try {
			List<Auction> findAuctions = jdbcTemplate.query(sql, new AuctionMapper());

			for (Auction auct : findAuctions) {
				resultAuction.add(auct);
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}

		return resultAuction;
	}

	@Override
	public void announcementHotdeal() {
		// TODO Auto-generated method stub
		// BETWEEN 방법을 활용하여 하루 사이의 입찰 횟수를 확인
		// 확인된 횟수를 정렬하여 출력
		String sql = "SELECT * FROM AUCTION WHERE DATE(post_date) BETWEEN " + "'2012-01-22' AND '2012-01-23'";
	}

	@Override
	public void announcementEndtime() {
		// TODO Auto-generated method stub

	}

	@Override
	public void endAuction() {
		// TODO Auto-generated method stub

	}

}
