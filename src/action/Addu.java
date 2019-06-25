package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import constants.WebConstants;

public class Addu extends AbstractAction {

	@Override
	public String execute(HttpServletRequest request) throws IOException, ServletException {
		String view = WebConstants.PAGE_INDEX;
		return view;
	}

}
