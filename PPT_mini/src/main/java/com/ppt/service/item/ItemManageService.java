package com.ppt.service.item;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ppt.dao.item.IItemManageRepository;
import com.ppt.dao.item.ItemManageRepository;
import com.ppt.model.Image;
import com.ppt.model.Items;

@Service
public class ItemManageService implements IItemManageService{
	@Autowired
	IItemManageRepository itemMangerepository;
	@Override
	public boolean registerItem(Items item) {
		// TODO Auto-generated method stub
		
		return itemMangerepository.registerItem(item);
	}

	@Override
	public boolean deleteItem(Items item) {
		// TODO Auto-generated method stub
	
		return itemMangerepository.deleteItem(item);
	}

	@Override
	public boolean registerImg(Items item, Image img) {
		// TODO Auto-generated method stub
		return false;
	}

}
