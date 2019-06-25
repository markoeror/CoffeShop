package service.imp;

import dao.DaoUpdateCategory;
import dao.imp.DaoUpdateCategoryImp;
import domen.Category;
import service.ServiceUpdateCategory;

public class ServiceUpdateCategoryImp implements ServiceUpdateCategory {

	@Override
	public void updateCategory(Category c) {
		DaoUpdateCategory duc= new DaoUpdateCategoryImp();
		duc.updateCategory(c);
		
	}

}
