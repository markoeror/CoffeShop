package dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import constants.Constants_Domen;
import dao.DaoServiceCreateCategory;
import domen.Category;
import util.DB;

public class DaoCreateCategoryImp implements DaoServiceCreateCategory {

	@Override
	public void createCategory(Category c) {
		Connection con = DB.getInstanca().getConnection();
		PreparedStatement ps;
		String sqlCreateCategory = "INSERT INTO `category` (name) VALUES (?)";

		try {
			ps = con.prepareStatement(sqlCreateCategory);
			ps.setString(1, c.getName_Category());
			ps.execute();
			System.out.println("CATEGORY CREATED");
			c.setCreateCategory(Constants_Domen.CREATE_CATEGORY_SUCCESSFUL);
		} catch (SQLException e) {
			System.out.println(" CREATE CATEGORY FAILED");
			c.setCreateCategory(Constants_Domen.CREATE_CATEGORY_FAILED);
			e.printStackTrace();
		} finally {
			DB.getInstanca().putConnection(con);
		}

	}

}
