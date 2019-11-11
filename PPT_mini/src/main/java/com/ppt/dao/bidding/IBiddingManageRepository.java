package com.ppt.dao.bidding;

import com.ppt.model.Items;

public interface IBiddingManageRepository {
	void registerBidding(Items item);
	void deleteBidding(Items item);
}
