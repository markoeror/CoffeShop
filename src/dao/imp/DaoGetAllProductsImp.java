package dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.DaoGetAllProducts;
import domen.Product;
import util.DB;

public class DaoGetAllProductsImp implements DaoGetAllProducts {

	@Override
	public List<Product> listAllProducts() {
		Connection con = DB.getInstanca().getConnection();
		List<Product> list= new ArrayList();
		String sqlListProducts="SELECT * FROM `product`";
		
		try {
			PreparedStatement ps = con.prepareStatement(sqlListProducts);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Product p= new Product();
				p.setIdProduct(rs.getInt("idProduct"));
				p.setName(rs.getString("name"));
				p.setPrice(rs.getDouble("price"));
				p.setQuantity(rs.getInt("quantity"));
				p.setFileName(rs.getString("fileName"));
				list.add(p);
			}
		} catch (SQLException e) {
			System.out.println("Greska pri vracanju svih produkta iz baze");
			e.printStackTrace();
		}finally {
			DB.getInstanca().putConnection(con);
		}
		
		
		return list;
	}

}
