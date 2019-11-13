package com.ppt.service.auction;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ppt.dao.auction.IAuctionManageRepository;
import com.ppt.model.Auction;

@Service
public class AuctionManageService implements IAuctionManageService{
	@Autowired
	IAuctionManageRepository iAuctionmanagerepository;
	@Override
	public boolean registerAuction(Auction auction) {
		// TODO Auto-generated method stub
		return iAuctionmanagerepository.registerAuction(auction);
	}

	@Override
	public boolean deleteAuction(int auctionNum) {
		// TODO Auto-generated method stub
		return iAuctionmanagerepository.deleteAuction(auctionNum);
	}

	@Override
	public List<Auction> searchAuctionbyitemName(String name) {
		// TODO Auto-generated method stub
		return iAuctionmanagerepository.searchAuctionbyitemName(name);
	}

	@Override
	public List<Auction> searchAuctionbyitemCategory(String category) {
		// TODO Auto-generated method stub
		return iAuctionmanagerepository.searchAuctionbyitemCategory(category);
	}

	@Override
	public List<Auction> sortNewAuction(char type){
		// TODO Auto-generated method stub
		return iAuctionmanagerepository.sortNewAuction(type);
	}

	@Override
	public void announcementHotdeal() {
		// TODO Auto-generated method stub
		iAuctionmanagerepository.announcementHotdeal();
	}

	@Override
	public void announcementEndtime() {
		// TODO Auto-generated method stub
		iAuctionmanagerepository.announcementEndtime();
	}

	@Override
	public void endAuction() {
		// TODO Auto-generated method stub
		
	}

}
