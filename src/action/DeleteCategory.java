package action;

import javax.servlet.http.HttpServletRequest;

import constants.WebConstants;
import service.ServiceDeleteCategory;
import service.imp.ServiceDeleteCategoryImp;

public class DeleteCategory extends AbstractAction{

	@Override
	public String execute(HttpServletRequest request) {
		String view = WebConstants.PAGE_ADMIN;
		String id= request.getParameter("id");
		System.out.println("Zahtev za brisanje kategorije sa id-em: "+id);
		ServiceDeleteCategory sdk= new ServiceDeleteCategoryImp();
		sdk.deleteCategory(Integer.parseInt(id));
		System.out.println("Uspesno brisanje kategorije"+id);
		view = WebConstants.PAGE_ADMIN;
		return view;
	}
 
	
	
}
