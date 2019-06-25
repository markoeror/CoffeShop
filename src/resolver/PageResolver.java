package resolver;

import constants.WebConstants;

public class PageResolver {

	public static String getPage(String view) {
		String page="index.jsp";
		
		switch (view) {
		case WebConstants.PAGE_INDEX:
			page="/index.jsp";
			break;
		case WebConstants.PAGE_LOGIN:
			page="/login.jsp";
			break;
		case WebConstants.PAGE_ADMIN:
			page="/admin.jsp";
			break;		
		case WebConstants.PAGE_UPDATE_CATEGORY:
			page="/updateCategory.jsp";
			break;	
		case WebConstants.PAGE_CREATE_PRODUCT:
			page="/productCreate.jsp";
			break;	
		case WebConstants.PAGE_WEBSHOP:
			page="/webshop.jsp";
			break;		
		default:
			break;
		}
		
		return page;
	}
}
