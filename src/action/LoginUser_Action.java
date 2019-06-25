package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import constants.WebConstants;
import domen.User;
import service.ServiceGetUser;
import service.imp.ServiceGetUserImp;

public class LoginUser_Action extends AbstractAction {

	@Override
	public String execute(HttpServletRequest request) {
		String view = WebConstants.PAGE_LOGIN;
		String user = request.getParameter("txt_username");
		String password = request.getParameter("txt_password");
		User us = new User();
		us.setUsername(user);
		us.setPassword(password);
		ServiceGetUser sv = new ServiceGetUserImp();
		User userDB = sv.getVrati(us);
		if (userDB.getId() == 0) {
			request.setAttribute("msg", "Los username i password");
			view = WebConstants.PAGE_LOGIN;

		} else if (userDB.getId() != 0 && userDB.getStatus() == 0) {
			
			System.out.println("Trazi se admin (prvi uslov)");
			if (userDB.getUsername().equalsIgnoreCase(user) && userDB.getPassword().equals(password)) {
				System.out.println("Trazi se admin (drugi uslov)");
				String userBaza = userDB.getUsername();
				String passBaza = userDB.getPassword();
				String userZahtev = user;
				String passZahtev = password;
				System.out.println("Zahtev sa usernameom: " + user + " i sifrom: " + password);
				// SESIJE! sluze da kada se krecemo izmedju stranica da se zadrzavaju podaci bez
				// njihovog gubljenja
				// Objekti sesije se cuvaju na serveru
				// request.getSession na serveru se kreira objekat session
				HttpSession sesija = request.getSession();
				sesija.setAttribute("loggedInUser", userDB);
				view= WebConstants.PAGE_ADMIN;

			}
		} else if (userDB.getId() != 0 && userDB.getStatus() == 1) {
			
			System.out.println("Trazi se korisnik");
			if (userDB.getUsername().equalsIgnoreCase(user) && userDB.getPassword().equals(password)) {
				System.out.println("Trazi se korisnik (drugi uslov)");
				String userBaza = userDB.getUsername();
				String passBaza = userDB.getPassword();
				String userZahtev = user;
				String passZahtev = password;
				System.out.println("zahtev sa usernameom " + user + " i sifrom " + password);
				HttpSession sesija = request.getSession();
				sesija.setAttribute("loggedInUser", userDB);
				view=WebConstants.PAGE_INDEX;

			}
		}

		return view;
	}

}
