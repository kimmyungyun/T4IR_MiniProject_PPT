package com.ppt.model;

import java.sql.Date;

public class Transaction {
	private int transactionId;
	private Date transactionDate;
	private int transactionPrice;
	private int auctionId;
	private int userUid;
	public int getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}
	public Date getTransactionDate() {
		return transactionDate;
	}
	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}
	public int getTransactionPrice() {
		return transactionPrice;
	}
	public void setTransactionPrice(int transactionPrice) {
		this.transactionPrice = transactionPrice;
	}
	public int getAuctionId() {
		return auctionId;
	}
	public void setAuctionId(int auctionId) {
		this.auctionId = auctionId;
	}
	public int getUserUid() {
		return userUid;
	}
	public void setUserUid(int userUid) {
		this.userUid = userUid;
	}
	
}
