package dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.DaoGetProductMaterial;
import domen.ProductMaterial;
import util.DB;

public class DaoGetProductMaterialImp implements DaoGetProductMaterial {

	@Override
		public List<ProductMaterial> listPM() {
			Connection con= DB.getInstanca().getConnection();
			PreparedStatement ps;
			List<ProductMaterial> list=new ArrayList();
		/*
		 *String
		 * sqlGetProductMateria l="SELECT `idProduct`, `id_Materials`, `quantity` FROM `product_materials` WHERE idProduct= ?"
		 * ;
		 */
			String sqlGetProductMaterial="SELECT * FROM `product_materials` ";
			try {
				ps=con.prepareStatement(sqlGetProductMaterial);
				
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					ProductMaterial pm= new ProductMaterial();
					pm.setIdProduct(rs.getInt("idProduct"));
					pm.setIdMaterial(rs.getInt("id_Materials"));
					pm.setQuantity(rs.getDouble("quantity"));
					list.add(pm);
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
		
		
	
		return list;
	}

}
