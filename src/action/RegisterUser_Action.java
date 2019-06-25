package action;

import javax.servlet.http.HttpServletRequest;
import constants.Constants;
import constants.Constants_Domen;
import constants.WebConstants;
import domen.User;
import service.ServiceUserRegistration;
import service.imp.ServiceUserRegistrationImp;

public class RegisterUser_Action extends AbstractAction{

	@Override
	public String execute(HttpServletRequest request) {
		String view = WebConstants.PAGE_LOGIN;
		String username= request.getParameter("user1");
		String name= request.getParameter("name");
		String surname= request.getParameter("surname");
		String pass1= request.getParameter("pass1");
		String pass2= request.getParameter("pass2");
		if(pass1.equals(pass2)){	// kreiramo objekat nad userom
			User u= new User();
			u.setName(name);
			u.setSurname(surname);
			u.setStatus(Constants.USER.getId());
			u.setUsername(username);
			u.setPassword(pass1);
			ServiceUserRegistration rs= new ServiceUserRegistrationImp();
			rs.createUser(u);
			if(u.getCreateUser().equals(Constants_Domen.CREATE_USER_SUCCESSFUL)) {
			request.setAttribute("msg", " Registration Successful");
			}else {
				request.setAttribute("msg", "Registration Failed");
			}
			view=WebConstants.PAGE_LOGIN;
		}
		return view;
	}

}
