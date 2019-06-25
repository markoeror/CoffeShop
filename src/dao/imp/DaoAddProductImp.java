package dao.imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.DaoAddProduct;
import domen.Material;
import domen.Product;
import domen.ProductMaterial;
import util.DB;

public class DaoAddProductImp implements DaoAddProduct {

	@Override
	public void addProduct(Product p) {
		Connection con= DB.getInstanca().getConnection();
		List<ProductMaterial> listPM=new ArrayList();
		List<Material> listM=new ArrayList();
		List<Product> listP= new ArrayList();
		Product p1= new Product();	
		try {
			con.setAutoCommit(false);
			PreparedStatement ps;
			
			String sqlGetProduct="SELECT `quantity` FROM `product` WHERE product.idProduct="+p.getIdProduct();
			ps=con.prepareStatement(sqlGetProduct);
			ResultSet rs3=ps.executeQuery();
			while(rs3.next()) {					
				p1.setQuantity(rs3.getInt("quantity"));			
			}
						
			String sqlUpdateProduct="UPDATE `product` SET `quantity`= ? WHERE product.idProduct= ?";
			ps=con.prepareStatement(sqlUpdateProduct);
			ps.setInt(1, p1.getQuantity()+p.getQuantity());
			ps.setInt(2, p.getIdProduct());
			ps.execute();
			System.out.println("kolicina producta uspesno dodata");
			
			String sqlProductMaterial="SELECT `id_Materials`, `quantity` FROM `product_materials` WHERE idProduct="+p.getIdProduct();
			ps=con.prepareStatement(sqlProductMaterial);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				ProductMaterial pm= new ProductMaterial();
				pm.setIdMaterial(rs.getInt("id_Materials"));
				pm.setQuantity(rs.getDouble("quantity"));
				listPM.add(pm);
			
			}
			
			String sqlMaterial="SELECT * FROM `raw_materials`";
			ps=con.prepareStatement(sqlMaterial);
			ResultSet rs1=ps.executeQuery();
			while(rs1.next()) {
				Material mat= new Material();
				mat.setIdMaterial(rs1.getInt("id_ Raw_Materials"));
				mat.setQuantity(rs1.getDouble("quantity"));
				listM.add(mat);
			}
			
			for(ProductMaterial pm:listPM) {
				for(Material m: listM) {
					if(pm.getIdMaterial()==m.getIdMaterial()) {
						if(m.getQuantity()>pm.getQuantity()*p.getQuantity()) {	
							double m1=m.getQuantity()-(pm.getQuantity()*p.getQuantity());
							m.setQuantity(m1);
							System.out.println(m1);
							
						}
					}
				}
			}
			
			String sqlUpdateMaterial="UPDATE `raw_materials` SET `quantity` = ? WHERE `raw_materials`.`id_ Raw_Materials` = ?";
			for(Material m2:listM) {
				ps=con.prepareStatement(sqlUpdateMaterial);
				ps.setDouble(1, m2.getQuantity());
				ps.setInt(2, m2.getIdMaterial());
				ps.execute();
			}
			
			con.commit();
			
		} catch (SQLException e) {
			try {
				con.rollback();
				System.out.println("greska pri updateu produkta");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		
		
		
	}

}
