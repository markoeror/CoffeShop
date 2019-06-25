package dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.DaoUpdateCategory;
import domen.Category;
import util.DB;

public class DaoUpdateCategoryImp implements DaoUpdateCategory {

	@Override
	public void updateCategory(Category c) {
			Connection con=DB.getInstanca().getConnection();
			PreparedStatement ps;
			String sqlUpdateCategory="UPDATE category SET name = ? WHERE idCategory = ? ";
			
			try {
				ps=con.prepareStatement(sqlUpdateCategory);
				ps.setString(1, c.getName_Category());
				ps.setInt(2, c.getId_Category());
				ps.execute();
				System.out.println("CATEGORY UPDATED");
			} catch (SQLException e) {
				System.out.println("ERROR IN CATEGORY UPDATE");
				e.printStackTrace();
			}finally {
				DB.getInstanca().putConnection(con);
			}
			

	}

}
