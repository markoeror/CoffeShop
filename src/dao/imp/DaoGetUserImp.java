package dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.DaoGetUser;
import domen.User;
import util.DB;

public class DaoGetUserImp implements DaoGetUser {

	@Override
	public User getUser(User user) {
	
			Connection con=DB.getInstanca().getConnection();
			PreparedStatement  ps;
			ResultSet rs;
			User getUser = new User();	
			String sql= "select * from user where username = ? and password = ?";
			
			try {
				ps= con.prepareStatement(sql);
				ps.setString(1, user.getUsername());
				ps.setString(2, user.getPassword());
				rs= ps.executeQuery();
				
				if(rs.next()) {
					getUser.setId(rs.getInt("idUser"));
					getUser.setUsername(rs.getString("username"));
					getUser.setPassword(rs.getString("password"));
					getUser.setName(rs.getString("name"));
					getUser.setSurname(rs.getString("surname"));
					getUser.setStatus(rs.getInt("status"));
					System.out.println("User "+rs.getString("username")+" vracen.");
				}
			} catch (SQLException e) {
				System.out.println("Greska pri konekciji sa bazom za logovanje korisnika");
				e.printStackTrace();
			}finally {
				DB.getInstanca().putConnection(con);
			}
			
			return getUser;
	}

}
