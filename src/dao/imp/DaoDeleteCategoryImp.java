package dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.DaoDeleteCategory;
import util.DB;

public class DaoDeleteCategoryImp implements DaoDeleteCategory {

	
	@Override
	public void deleteCategory(int id) {
		Connection con= DB.getInstanca().getInstanca().getConnection();
		String sqlDeleteCategory= "DELETE FROM category WHERE idCategory = ?";
		PreparedStatement ps;
		
		try {
			ps=con.prepareStatement(sqlDeleteCategory);
			ps.setInt(1, id);
			ps.execute();
		} catch (SQLException e) {
			System.out.println("Greska pri brisanju kategorije");
			e.printStackTrace();
		}
		finally {
			DB.getInstanca().putConnection(con);
		}

	}

}
