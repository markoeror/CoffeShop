package action;

import javax.servlet.http.HttpServletRequest;

import domen.Material;
import service.ServiceCreateMaterial;
import service.imp.ServiceCreateMaterialImp;
import constants.WebConstants;
import domen.Category;

public class CreateMaterial extends AbstractAction{

	@Override
	public String execute(HttpServletRequest request) {
		
		String view = WebConstants.PAGE_ADMIN;
		String name = request.getParameter("txt_Material");
		double quantity=Double.parseDouble(request.getParameter("txt_quantity"));
		Material mat= new Material();
		mat.setMaterialName(name);
		mat.setQuantity(quantity);
		ServiceCreateMaterial scm= new ServiceCreateMaterialImp();
		scm.CreateMaterial(mat);
		view = WebConstants.PAGE_ADMIN;
		
		
		return view;
	}

}
