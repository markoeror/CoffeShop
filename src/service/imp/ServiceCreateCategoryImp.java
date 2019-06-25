package service.imp;

import dao.DaoServiceCreateCategory;
import dao.imp.DaoCreateCategoryImp;
import domen.Category;
import service.ServiceCreateCategory;

public class ServiceCreateCategoryImp implements ServiceCreateCategory {

	@Override
	public void CreateCategory(Category c) {
		DaoServiceCreateCategory dcc= new DaoCreateCategoryImp();
		dcc.createCategory(c);
	}

}
