package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import constants.WebConstants;
import domen.Category;
import service.ServiceUpdateCategory;
import service.imp.ServiceUpdateCategoryImp;

public class UpdateCategory extends AbstractAction {

	@Override
	public String execute(HttpServletRequest request) {
		
		String view=WebConstants.PAGE_ADMIN;

	
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			request.setAttribute("id", id);
			request.setAttribute("name", name);
			
			view = WebConstants.PAGE_UPDATE_CATEGORY;
		

		return view;
	}

}
