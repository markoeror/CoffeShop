package dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.DaoGetMaterialList;

import domen.Material;
import util.DB;

public class DaoGetMaterialListImp implements DaoGetMaterialList {

	@Override
	public List<Material> listMaterial() {
		List<Material> listCategory = new ArrayList<Material>();
		Connection con = DB.getInstanca().getConnection();
		PreparedStatement ps;
		ResultSet rs;
		String sql = "select * from raw_materials";
		List<Material> list = new ArrayList<Material>();

		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Material m= new Material();
				m.setIdMaterial(rs.getInt("id_ Raw_Materials"));
				m.setMaterialName(rs.getString("name"));
				m.setQuantity(rs.getDouble("quantity"));
				list.add(m);
			}
			System.out.println("Lista materijala vracena");
		} catch (SQLException e) {
			System.out.println("GRESKA pri vracanju liste materijala iz baze");
			e.printStackTrace();
		} finally {
			DB.getInstanca().putConnection(con);
		}

		return list;
	}

}
