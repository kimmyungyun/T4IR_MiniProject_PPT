package com.ppt.dao.item;

import com.ppt.model.Image;
import com.ppt.model.Items;

public interface IItemManageRepository {
	boolean registerItem(Items item);
	boolean deleteItem(Items item);
	boolean registerImg(Items item, Image img);
}
