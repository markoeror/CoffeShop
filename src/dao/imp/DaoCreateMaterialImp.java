package dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import constants.Constants_Domen;
import dao.DaoCreateMaterial;
import domen.Material;
import util.DB;

public class DaoCreateMaterialImp implements DaoCreateMaterial {

	@Override
	public void CreateMaterial(Material m) {
		Connection con = DB.getInstanca().getConnection();
		PreparedStatement ps;
		String sqlCreateMaterial = "INSERT INTO `raw_materials` (name,quantity) VALUES (?,?)";

		try {
			ps = con.prepareStatement(sqlCreateMaterial);
			ps.setString(1, m.getMaterialName());
			ps.setDouble(2, m.getQuantity());
			ps.execute();
			System.out.println("MATERIAL CREATED");
			
		} catch (SQLException e) {
			System.out.println(" CREATE MATERIAL FAILED");
		
			e.printStackTrace();
		} finally {
			DB.getInstanca().putConnection(con);
		}

	}
	}


