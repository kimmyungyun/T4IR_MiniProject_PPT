package com.ppt.service.transaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ppt.dao.transaction.ITransactionManageRepository;
import com.ppt.model.Auction;
import com.ppt.model.Items;
import com.ppt.model.Transaction;
import com.ppt.model.User;

@Service
public class TransactionManageService implements ITransactionManageService {
	@Autowired
	ITransactionManageRepository itransactionManageRepository;
	
	@Override
	public boolean registerTransaction(Auction auction, User user, int price) {
		// TODO Auto-generated method stub
		
		return itransactionManageRepository.registerTransaction(auction, user, price);
		
	}

	@Override
	public boolean deleteTransaction(Transaction transaction) {
		// TODO Auto-generated method stub
		return itransactionManageRepository.deleteTransaction(transaction);
	}


}