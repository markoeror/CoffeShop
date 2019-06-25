package service.imp;

import dao.DaoCreateProduct;
import dao.imp.DaoCreateProductImp;
import domen.Material;
import domen.Product;
import service.ServiceProduct;

public class ServiceProductImp implements ServiceProduct {

	@Override
	public void createProduct(Product p,Material m1,Material m2) {
		DaoCreateProduct dcp= new DaoCreateProductImp();
		dcp.createProduct(p,m1,m2);

	}

}
