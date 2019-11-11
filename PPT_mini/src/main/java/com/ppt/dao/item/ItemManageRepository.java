package com.ppt.dao.item;

import org.springframework.stereotype.Repository;

import com.ppt.model.Image;
import com.ppt.model.Items;

@Repository
public class ItemManageRepository implements IItemManageRepository {

	@Override
	public boolean registerItem(Items item) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteItem(Items item) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean registerImg(Items item, Image img) {
		// TODO Auto-generated method stub
		return false;
	}

}
