package action;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import constants.Constants_Domen;
import constants.WebConstants;
import domen.Category;
import service.ServiceCreateCategory;
import service.imp.ServiceCreateCategoryImp;

public class CreateCategory extends AbstractAction {

	@Override
	public String execute(HttpServletRequest request) {
		
		String view = WebConstants.PAGE_ADMIN;
		String name = request.getParameter("txt_Category");
		Category c = new Category();
		c.setName_Category(name);
		String uploadFile = "C:\\Users\\Marko Eror\\eclipse-workspace-JEE\\CoffeShop\\WebContent\\images\\" + name
				+ "\\";
		File f = new File(uploadFile);
		if (!f.exists()) {
			f.mkdir();
		}

		ServiceCreateCategory cc = new ServiceCreateCategoryImp();
		cc.CreateCategory(c);

		if (c.getCreateCategory().equals(Constants_Domen.CREATE_CATEGORY_SUCCESSFUL)) {
			request.setAttribute("msg", " Create Category Successful");
		} else {
			request.setAttribute("msg", "Create Category Failed");
		}
		view = WebConstants.PAGE_ADMIN;

		return view;
	}

}
