package action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import constants.WebConstants;
import domen.Category;
import domen.Material;
import domen.Product;
import service.ServiceGetCategoryList;
import service.ServiceProduct;
import service.imp.ServiceGetCategoryListImp;
import service.imp.ServiceProductImp;
@MultipartConfig( /*location = "C:\\Users\\Marko Eror\\eclipse-workspace-JEE\\CoffeShop\\WebContent\\images\\",*/
maxFileSize = 1024*1024*10)
public class ProductCreate extends AbstractAction {

	@Override
	public String execute(HttpServletRequest request) throws IOException, ServletException {
		ServiceGetCategoryList gcl= new ServiceGetCategoryListImp();
		List<Category> listC= gcl.listCategory();
		String nameCat=request.getParameter("id");;
		String priceP= request.getParameter("price");
		String nameP=request.getParameter("name");
		String mat1=request.getParameter("mat1h");
		String mat2=request.getParameter("mat2h");
		String quanMat1=request.getParameter("mat1");
		String quanMat2=request.getParameter("mat2");
		int idCat=0;
		System.out.println("nameCat je "+nameCat);
		System.out.println("name je "+nameP);	
		System.out.println("cena je "+priceP);
		System.out.println("mat1 je "+mat1);
		System.out.println("mat2 je "+mat2);
		
		for(Category c:listC) {
			if(c.getName_Category().equals(nameCat)) {
				idCat=c.getId_Category();
			}
		}
		
		Part part= request.getPart("file");
		String fileName=GetFile(part);
		int a=fileName.lastIndexOf("\\");
		fileName=fileName.substring(a+1);
		
		String uploadFile="C:\\Users\\Marko Eror\\eclipse-workspace-JEE\\CoffeShop\\WebContent\\images\\"+nameCat+"\\";
		 
	/*	String uploadFile="\\"+nameCat+"\\";
		String uploadFile1="/WebContent/images/"+nameCat+"/";*/
		
		File f= new File(uploadFile);
		if(!f.exists()) {
			f.mkdir();
		}		
		String name= uploadFile+fileName;
		System.out.println(name);
		part.write(name);
		System.out.println("snimljena slika "+ fileName);
		
		Product product= new Product();
		product.setName(nameP);
		product.setPrice(Double.parseDouble(priceP));
		product.setIdCategory(idCat);
		product.setFileName(fileName);
		Material mater1= new Material();
		mater1.setIdMaterial(Integer.parseInt(mat1));
		mater1.setQuantity(Double.parseDouble(quanMat1));
		Material mater2= new Material();
		mater2.setIdMaterial(Integer.parseInt(mat2));
		mater2.setQuantity(Double.parseDouble(quanMat2));
		
		ServiceProduct sp= new ServiceProductImp();
		sp.createProduct(product,mater1,mater2);
		String view= WebConstants.PAGE_ADMIN;
		return view;
	}

	private String GetFile(Part part) {
		for(String content :  part.getHeader("content-disposition").split(";")) {
			if(content.trim().startsWith("filename")) {
				return content.substring(content.indexOf("=")+2, content.length()-1);
			}		
		}
		return null;
	}
}
