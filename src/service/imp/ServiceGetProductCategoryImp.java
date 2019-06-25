package service.imp;

import java.util.List;

import dao.DaoGetProductCategory;
import dao.imp.DaoGetProductCategoryImp;
import domen.Product;
import service.ServiceGetProductCategory;

public class ServiceGetProductCategoryImp implements ServiceGetProductCategory {

	@Override
	public List<Product> getListProduct(int id) {
		DaoGetProductCategory dgpc= new DaoGetProductCategoryImp();
		List<Product> listProductCategory= dgpc.listProductCategory(id);
		return listProductCategory;
	}

}
