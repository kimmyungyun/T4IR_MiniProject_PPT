package com.ppt.dao.auction;

import java.util.List;
import java.util.Set;

import com.ppt.model.Auction;
import com.ppt.model.Items;

public interface IAuctionManageRepository {
	boolean registerAuction(Auction auction);
	boolean deleteAuction(int auctionNum);
	List<Auction> searchAuctionbyitemName(String name);
	List<Auction> searchAuctionbyitemCategory(String category);
	List<Auction> sortNewAuction();
	void announcementHotdeal();
	void announcementEndtime();
	void endAuction();
	
	Set<Integer> getListItemid(List<Items> items);
}
