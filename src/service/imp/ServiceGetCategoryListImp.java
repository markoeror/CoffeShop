package service.imp;

import java.util.List;

import dao.DaoGetCategoryList;
import dao.imp.DaoGetCategoryListImp;
import domen.Category;
import service.ServiceGetCategoryList;

public class ServiceGetCategoryListImp implements ServiceGetCategoryList {

	@Override
	public List<Category> listCategory() {
		DaoGetCategoryList gcl= new DaoGetCategoryListImp();
		List<Category> listCategory= gcl.listCategory();
		return listCategory;
	}

}
