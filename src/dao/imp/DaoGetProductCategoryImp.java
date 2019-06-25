package dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.PreparedQuery;
import com.mysql.cj.protocol.Resultset;

import dao.DaoGetProductCategory;
import domen.Product;
import util.DB;

public class DaoGetProductCategoryImp implements DaoGetProductCategory {

	@Override
	public List<Product> listProductCategory(int id) {
		Connection con = DB.getInstanca().getConnection();
		String sqlProductCategory=	"SELECT * FROM `product` WHERE idCategory = ?";
		List<Product> list= new ArrayList<>();
		
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sqlProductCategory);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
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
			System.out.println("Greska pri vracanju produkt kategorija");
			e.printStackTrace();
		}finally {
			DB.getInstanca().putConnection(con);
		}
		
		return list;
	}

}
