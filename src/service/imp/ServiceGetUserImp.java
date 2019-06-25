package service.imp;

import dao.DaoGetUser;
import dao.imp.DaoGetUserImp;
import domen.User;
import service.ServiceGetUser;

public class ServiceGetUserImp implements ServiceGetUser {

	@Override	
		public User getVrati(User user) {
			DaoGetUser gu= new DaoGetUserImp();
			return gu.getUser(user);
	}

}
