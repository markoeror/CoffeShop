package action;

import javax.servlet.http.HttpServletRequest;

import constants.WebConstants;
import domen.Category;
import service.ServiceUpdateCategory;
import service.imp.ServiceUpdateCategoryImp;

public class UpdateCategory1 extends AbstractAction{

	@Override
	public String execute(HttpServletRequest request) {
		String view=WebConstants.PAGE_ADMIN;
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		request.setAttribute("id", id);
		request.setAttribute("name", name);
		Category c = new Category();
		c.setId_Category(Integer.parseInt(id));
		c.setName_Category(name);
		ServiceUpdateCategory cuc = new ServiceUpdateCategoryImp();
		cuc.updateCategory(c);
		view = WebConstants.PAGE_ADMIN;
		return view;
	}

}
