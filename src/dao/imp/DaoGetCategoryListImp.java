package dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import dao.DaoGetCategoryList;
import domen.Category;
import util.DB;

public class DaoGetCategoryListImp implements DaoGetCategoryList {

	@Override
	public List<Category> listCategory() {
		List<Category> listCategory = new ArrayList<Category>();
		Connection con = DB.getInstanca().getConnection();
		PreparedStatement ps;
		ResultSet rs;
		String sql = "select * from category";
		List<Category> list = new ArrayList<Category>();

		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Category k = new Category();
				k.setId_Category(rs.getInt("idCategory"));
				k.setName_Category(rs.getString("name"));
				list.add(k);
			}
			System.out.println("Lista kategorija vracena");
		} catch (SQLException e) {
			System.out.println("GRESKA pri vracanju liste kategoriaj iz baze");
			e.printStackTrace();
		} finally {
			DB.getInstanca().putConnection(con);
		}

		return list;
	}

}
