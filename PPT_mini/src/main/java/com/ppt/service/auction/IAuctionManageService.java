package com.ppt.service.auction;

import java.util.List;

import com.ppt.model.Auction;

public interface IAuctionManageService {
	boolean registerAuction(Auction auction);
	boolean deleteAuction(int auctionNum);
	List<Auction> searchAuctionbyitemName(String name);
	List<Auction> searchAuctionbyitemCategory(String category);
	void sortNewAuction();
	void announcementHotdeal();
	void announcementEndtime();
	void endAuction();
	
}
