package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import constants.WebConstants;
import dao.DaoAddProduct;
import dao.DaoGetProductMaterial;
import dao.imp.DaoAddProductImp;
import dao.imp.DaoGetProductMaterialImp;
import domen.Product;
import domen.ProductMaterial;

public class AddProduct extends AbstractAction{

	@Override
	public String execute(HttpServletRequest request) throws IOException, ServletException {
		String view=WebConstants.PAGE_ADMIN;
		int idProd=Integer.parseInt(request.getParameter("idProd"));
		System.out.println(idProd);
		String quantity= request.getParameter("quantityP");
		System.out.println(quantity);
		DaoGetProductMaterial dgpm= new DaoGetProductMaterialImp();
		List<ProductMaterial> list= dgpm.listPM();
		Product product= new Product();
		product.setIdProduct(idProd);
		product.setQuantity(Integer.parseInt(quantity));
	
		for(ProductMaterial pm: list) {
			if(pm.getIdProduct()==idProd) {
				DaoAddProduct dap= new DaoAddProductImp();
				dap.addProduct(product);
				break;
			}
		}
		
		
		
		return view;
	}

}
