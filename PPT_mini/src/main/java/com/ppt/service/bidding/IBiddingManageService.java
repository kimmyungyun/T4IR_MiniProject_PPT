package com.ppt.service.bidding;

import com.ppt.model.Items;

public interface IBiddingManageService {
	void registerBidding(Items item);
	void deleteBidding(Items item);
}
