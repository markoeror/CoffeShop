package service.imp;

import dao.DaoDeleteCategory;
import dao.imp.DaoDeleteCategoryImp;
import service.ServiceDeleteCategory;

public class ServiceDeleteCategoryImp implements ServiceDeleteCategory {

	@Override
	public void deleteCategory(int id) {
		DaoDeleteCategory ddk= new 	DaoDeleteCategoryImp();
		ddk.deleteCategory(id);
		
	}

}
