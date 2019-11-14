package com.ppt.dao.transaction;

import com.ppt.model.Auction;
import com.ppt.model.Items;
import com.ppt.model.Transaction;
import com.ppt.model.User;

public interface ITransactionManageRepository {
	boolean registerTransaction(Auction auction, User user, int price);
	boolean deleteTransaction(Transaction transaction);
}
