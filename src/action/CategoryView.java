package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import constants.WebConstants;
import domen.Product;
import service.ServiceGetProductCategory;
import service.imp.ServiceGetProductCategoryImp;

public class CategoryView extends AbstractAction{

	@Override
	public String execute(HttpServletRequest request) throws IOException, ServletException {
		String view= WebConstants.PAGE_INDEX;
		int id= Integer.parseInt(request.getParameter("id"));
		ServiceGetProductCategory sgpc= new ServiceGetProductCategoryImp();
		List<Product> list=sgpc.getListProduct(id);
		request.setAttribute("list", list);
		view=WebConstants.PAGE_WEBSHOP;
		
		
		return view;
	}

}
