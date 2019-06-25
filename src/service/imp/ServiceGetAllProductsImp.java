package service.imp;

import java.util.List;

import dao.DaoGetAllProducts;
import dao.imp.DaoGetAllProductsImp;
import domen.Product;
import service.ServiceGetAllProducts;

public class ServiceGetAllProductsImp implements ServiceGetAllProducts {

	@Override
	public List<Product> listAllProducts() {
		DaoGetAllProducts dgap= new DaoGetAllProductsImp();
		List<Product> list=dgap.listAllProducts();
		return list;
	}

}
