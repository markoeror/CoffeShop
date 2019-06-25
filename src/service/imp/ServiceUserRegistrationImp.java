package service.imp;

import dao.DaoUserRegistration;
import dao.imp.DaoUserRegistrationImp;
import domen.User;
import service.ServiceUserRegistration;

public class ServiceUserRegistrationImp implements ServiceUserRegistration {

	@Override
	public void createUser(User u) {
		DaoUserRegistration ur= new DaoUserRegistrationImp();
		ur.createUser(u);
	}

}
