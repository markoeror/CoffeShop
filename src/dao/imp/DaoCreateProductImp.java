package dao.imp;

import java.awt.image.RescaleOp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dao.DaoCreateProduct;
import domen.Material;
import domen.Product;
import util.DB;

public class DaoCreateProductImp implements DaoCreateProduct {

	@Override
	public void createProduct(Product p,Material m1, Material m2) {
		Connection con= DB.getInstanca().getConnection();
	
		String sqlCreateProduct="INSERT INTO `product` (name, price, idCategory, fileName) VALUES (?,?,?,?)";
		
		try {
			con.setAutoCommit(false);
			PreparedStatement ps=con.prepareStatement(sqlCreateProduct);
			ps.setString(1, p.getName());
			ps.setDouble(2, p.getPrice());
			ps.setInt(3, p.getIdCategory());
			ps.setString(4, p.getFileName());
			ps.execute();
			System.out.println("produkt uspesno kreiran u bazi");
			
			String sqlVratiProdukt="SELECT * FROM product ORDER BY idProduct DESC LIMIT 1";
			ps= con.prepareStatement(sqlVratiProdukt);
			ResultSet rs=ps.executeQuery();
			int idProduct=0;
			if(rs.next()) {
				idProduct=rs.getInt("idProduct");
			}
			
			
			String sqlProductMaterial1="INSERT INTO `product_materials` (`idProduct`, `id_Materials`, `quantity`) VALUES (?,?,?)";
			ps= con.prepareStatement(sqlProductMaterial1);
			ps.setInt(1, idProduct);
			System.out.println(idProduct);
			ps.setInt(2, m1.getIdMaterial());
			System.out.println(m1.getIdMaterial());
			ps.setDouble(3,m1.getQuantity()/100);
			System.out.println(m1.getQuantity());
			ps.execute();
			
			String sqlProductMaterial2="INSERT INTO `product_materials` (`idProduct`, `id_Materials`, `quantity`) VALUES (?,?,?)";
			ps= con.prepareStatement(sqlProductMaterial2);
			ps.setInt(1, idProduct);
			System.out.println(idProduct);
			ps.setInt(2, m2.getIdMaterial());
			System.out.println(m2.getIdMaterial());
			ps.setDouble(3, m2.getQuantity()/100);
			System.out.println(m2.getQuantity());
			ps.execute();
			
			
			con.commit();
		} catch (SQLException e) {
			try {
				con.rollback();
				System.out.println("Greska pro kreiranju produkta u bazu");
				/* e.printStackTrace(); */
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		
		}finally {
			DB.getInstanca().putConnection(con);
		}
		
	}

}
