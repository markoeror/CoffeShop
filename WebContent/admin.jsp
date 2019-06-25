
<%@page import="dao.imp.DaoGetProductImp"%>
<%@page import="dao.DaoGetProductList"%>
<%@page import="domen.Product"%>
<%@page import="domen.ProductMaterial"%>
<%@page import="dao.imp.DaoGetProductMaterialImp"%>
<%@page import="dao.DaoGetProductMaterial"%>
<%@page import="domen.Material"%>
<%@page import="service.imp.ServiceGetMaterialImp"%>
<%@page import="service.ServiceGetMaterialList"%>
<%@page import="action.CreateCategory"%>
<%@page import="service.imp.ServiceGetCategoryListImp"%>
<%@page import="service.ServiceGetCategoryList"%>
<%@page import="java.util.List"%>
<%@page import="domen.Category"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/admin.css">
<title>AdmiN</title>
</head>
<body>
	<% ServiceGetCategoryList gc= new ServiceGetCategoryListImp();   // OVDE PISEMO JAVIN KOD DA POZOVEMO BROKER ZA VRACANJE LISTE KATEGORIJA, 
	List<Category> listCategory=gc.listCategory();	// IMPLEMENTACIJA LISTE KATEGORIJA IZ BAZE PREKO SERVLETA U HTML
	ServiceGetMaterialList gm= new ServiceGetMaterialImp();
	List<Material> listMaterial= gm.listMaterial();
	/* DaoGetProductMaterial dgpm= new DaoGetProductMaterialImp();
	List<ProductMaterial> listPM=dgpm.listPM();	  */
	DaoGetProductList dgpl= new DaoGetProductImp();
	List<Product> listProduct= dgpl.listP();
	
%>
	<div id="Category" >
	<fieldset>
	<legend>Create Category</legend>
		<form action="/CoffeShop/action/createCategory" method="post">
			
			Category : <input type="text" name="txt_Category"
				placeholder="name category" required><br> <br> <input
				type="submit" name="submit" value="Create Category"  >
		</form>
		<%
			String msg = (String) request.getAttribute("msg"); //ispisivanje poruke o uspesnom logovanju koja stize sa servera
			if (msg != null) {
		%>
		<p style="background-color: teal">
			<%=msg%>
			<%
				}
			%>
		</fieldset>
	</div>

	<div class="Category">
		
	<fieldset>
	<legend>List Category</legend>
		<form action="FrontControler" method="post">
		<table id="tableCategory" >
	<tbody>
	<%request.setAttribute("view", "updateCategory"); %>
	<!-- OVDE PROLAZIMO KROZ LISTU KATEGORIJA KOJU SMO GORE POZVALI PREKO SERVLETA IZ BAZE I KREIRAMO LABELU I 2 DUGMETA ZA SVAKU KATEGORIJU -->
	<% if(listCategory != null){
		for(Category c : listCategory){
			String name=c.getName_Category();
			int id= c.getId_Category();
			
			%>		
		<tr>
			
			<td id="name"><label style=""><%=c.getName_Category() %> :</label></td>
			<td><a href="/CoffeShop/action/updateCategory?id=<%=c.getId_Category()%>&name=<%=c.getName_Category()%>">Update</a></td>
			<td><a href="/CoffeShop/action/deleteCategory?id=<%=c.getId_Category()%>">Delete</a></td>
		
		</tr>
	<% 
	}
}
	
	%>
	</table>
		</form>
		</fieldset>
		</tbody>
	</div>
<div class="material" >
	<div id="insertRawMaterial">
	<fieldset>
	<legend>Create Raw Materials</legend>
	<form action="/CoffeShop/action/createMaterial" method="post">
			Category : <input type="text" name="txt_Material"
				placeholder="name material" required><br> 
			Quantity : <input type="text" name="txt_quantity"
				placeholder="quantity" required><br> <br> 
			<input	type="submit" name="submit" value="Create Material">
		</form>
	</fieldset>	
	</div>

	<div id="listMaterial" >
	<fieldset>
	<legend>List Materials</legend>
		<form action="FrontControler" method="post">
		<table id="tableMaterial" >
	
	
	<!-- OVDE PROLAZIMO KROZ LISTU KATEGORIJA KOJU SMO GORE POZVALI PREKO SERVLETA IZ BAZE I KREIRAMO LABELU I 2 DUGMETA ZA SVAKU KATEGORIJU -->
	<% if(listMaterial != null){
		for(Material m : listMaterial){
			String name=m.getMaterialName();
			int idMaterial= m.getIdMaterial();
			
			%>		
		<tr>
			
			<td id="name"><label style=""><%=m.getMaterialName()%> :</label></td>
			<td><a href="/CoffeShop/action/updateMaterial?id=<%=m.getIdMaterial()%>&nameMaterial=<%=m.getMaterialName()%>">Update</a></td>
			<td><a href="/CoffeShop/action/deleteMaterial?id=<%=m.getIdMaterial()%>">Delete</a></td>
		
		</tr>
	<% }}%>
	</table>
		</form>
		</fieldset>
		
		</div>
	</div>
	
	<div id="product">
			<input type="text" name="a" value="Create Product ==>" disabled="disabled">
			<a href="/CoffeShop/productCreate.jsp">Create product</a>
		

		<fieldset>
		<legend> Add Product</legend>
		<form action="/CoffeShop/action/AddProduct" method="post" >
		<input type="hidden" id="idProd" name="idProd" value="1" >
		<select  id="productComboBox" name="product"onchange="findIdComboP() ">	
		<%	for (Product p : listProduct) {	%>	
		<option value="<%=p.getIdProduct() %>" ><%=p.getName()%>		
		</option>
		<%}%>
		</select>	
		<br>	
		<input type="text" name="quantityP" placeholder="enter quantity">
		<input type="submit" value="Insert">


		</form>
</div>
		
		
		</fieldset>



	<%-- <div class="product">
		<div id="insertProduct">
			<fieldset>
				<legend>Product</legend>
				<form action="/CoffeShop/action/createProduct" method="post" enctype="multipart/form-data">
	<!-- pravimo hidden polje koje nije vidljivo Useru ali je vidljivo u programu -->
		<input type="hidden" id="idCategory" name="idCategory">
		<!-- combobox koji pri odabiru polja poziva js metodu za vracanje id-a odabrane kategorije -->	
		<select id="categoryComobox" name="category"onchange="findIdCombo()">	
		<!-- Preko listeKategorija popunjavamo ComboBox	 -->	
		<%	for (Category c : listCategory) {	%>	
		<option value="<%=c.getId_Category()%>"><%=c.getName_Category()%></option>
	
		<%}%>
		</select>		
		<br><br>
		<input type="text" name="nameP" placeholder="enter name">		
		<input type="text" name="priceP" placeholder="enter price">
		<input type="file" name="file">
		<input type="submit" value="insert product">
		
	
	</form>
				
				
			</fieldset>
		
		</div>

	</div> --%>

</body>

<script type="text/javascript">
function findIdCombo() {
	var id = document.getElementById("categoryComobox");
	var idCategory = id.options[id.selectedIndex].value;
	document.getElementById("idCategory").value += idCategory;
	console.log(idCategory);
	/* alert(idCategory); */
	
}
function findIdComboP() {
	var id = document.getElementById("productComboBox");
	var idProduct = id.options[id.selectedIndex].value;
	document.getElementById("idProd").value = idProduct;
	console.log(idProduct);
	/*  alert(idProduct);  */
	
}
</script>
</html>