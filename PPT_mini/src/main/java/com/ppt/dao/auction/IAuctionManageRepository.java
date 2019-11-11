package com.ppt.dao.auction;

public interface IAuctionManageRepository {
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
