package dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.DaoGetProductList;
import domen.Product;
import domen.ProductMaterial;
import util.DB;

public class DaoGetProductImp implements DaoGetProductList {

	@Override
	public List<Product> listP() {
		Connection con= DB.getInstanca().getConnection();
		PreparedStatement ps;
		List<Product> list=new ArrayList();
	/*
	 *String
	 * sqlGetProductMateria l="SELECT `idProduct`, `id_Materials`, `quantity` FROM `product_materials` WHERE idProduct= ?"
	 * ;
	 */
		String sqlGetProductMaterial="SELECT * FROM `product` WHERE 1";
		try {
			ps=con.prepareStatement(sqlGetProductMaterial);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Product p= new Product();
				p.setIdProduct(rs.getInt("idProduct"));
				p.setName(rs.getString("name"));
				p.setQuantity(rs.getInt("quantity"));;
				list.add(p);
				
			}
			System.out.println("lista producta je vracena");
		} catch (SQLException e) {
			System.out.println("greska pri vracanju liste produkta");
			e.printStackTrace();
		}
	
	
	
	

	return list;
	}

}
