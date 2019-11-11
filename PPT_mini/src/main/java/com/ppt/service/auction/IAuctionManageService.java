package com.ppt.service.auction;

public interface IAuctionManageService {
	boolean registerAuction();
	boolean deleteAuction();
	boolean modifyAuction();
	boolean searchAuction(String name);
	boolean serachAuction(String category);
	void sortAuction();
	void announcementHoteal();
	void announcementEndtime();
	void endAuction();
}
