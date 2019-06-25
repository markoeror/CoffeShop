package dao.imp;

import java.net.ConnectException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import constants.Constants;
import constants.Constants_Domen;
import dao.DaoUserRegistration;
import domen.User;
import util.DB;

public class DaoUserRegistrationImp implements DaoUserRegistration {

	@Override
	public void createUser(User u) {
		Connection con = DB.getInstanca().getConnection();
		PreparedStatement ps;
		String sqlCreateUser = "Insert into user (username,password,name,surname) values (?,?,?,?)";

		try {
			ps = con.prepareStatement(sqlCreateUser);
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getName());
			ps.setString(4, u.getSurname());
			ps.execute();
			System.out.println("CREATED USER");
			u.setCreateUser(Constants_Domen.CREATE_USER_SUCCESSFUL);
		} catch (SQLException e) {
			u.setCreateUser(Constants_Domen.CREATE_USER_FAILED);
			System.out.println("Greska pri kreiranju usera, takav user mozda vec postoji");
			// e.printStackTrace();
		} finally {
			DB.getInstanca().putConnection(con);
		}

	}

}
