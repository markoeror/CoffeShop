<%@page import="domen.ProductMaterial"%>
<%@page import="dao.imp.DaoGetProductMaterialImp"%>
<%@page import="dao.DaoGetProductMaterial"%>
<%@page import="domen.Material"%>
<%@page import="service.imp.ServiceGetMaterialImp"%>
<%@page import="service.ServiceGetMaterialList"%>
<%@page import="domen.Category"%>
<%@page import="java.util.List"%>
<%@page import="service.imp.ServiceGetCategoryListImp"%>

<%@page import="service.ServiceGetCategoryList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="ISO-8859-1">

<title>Product Create</title>

<script type="text/javascript">
	function findIdCombo() {
		var id = document.getElementById("categoryComboBox");
		var idCategory = id.options[id.selectedIndex].value;
		document.getElementById("id").value = idCategory;
		console.log(idCategory);}	
	function findIdComboM1() {
		var id = document.getElementById("materialComboBox1");
		var idCategory1 = id.options[id.selectedIndex].value;
		document.getElementById("mat1h").value = idCategory1;
		console.log(idCategory1);}
	function findIdComboM2() {
		var id = document.getElementById("materialComboBox2");
		var idCategory2 = id.options[id.selectedIndex].value;
		document.getElementById("mat2h").value = idCategory2;
		console.log(idCategory2);}
	function adding() {
		var q1= document.getElementById("mat1");
		var q2= document.getElementById("mat2");
		if(q1+q2>100 && q1+q2<100){
			alert("Quantityes together must be 100")
		}
		
	}
</script>
</head>

<body>
<% ServiceGetCategoryList gc= new ServiceGetCategoryListImp();   // OVDE PISEMO JAVIN KOD DA POZOVEMO BROKER ZA VRACANJE LISTE KATEGORIJA, 
	List<Category> listCategory=gc.listCategory();
	HttpSession sessionP= request.getSession();
	ServiceGetMaterialList sgml= new ServiceGetMaterialImp();
	List<Material> listMaterial=sgml.listMaterial();
	/* DaoGetProductMaterial dgpm= new DaoGetProductMaterialImp();
	List<ProductMaterial> listPM=dgpm.listPM(); */
	
	%>
	<a href="admin.jsp">Back to Admin</a> <br><br>


<div id="ProductCreate">

	<form action="/CoffeShop/action/ProductCreate" method="post" enctype="multipart/form-data" >
		<input type="hidden" id="id" name="id" value="5 star" >
		<input type="hidden" id="mat1h" name="mat1h" value="1">
		<input type="hidden" id="mat2h" name="mat2h" value="2">
		<select  id="categoryComboBox" name="category"onchange="findIdCombo() ">	
		<%	for (Category c : listCategory) {	%>	
		<option value="<%=c.getName_Category()%>" ><%=c.getName_Category()%>		
		</option>
		<%}%>
		</select>	
		<br>
		<input type="hidden" id="idM1" name="idM1"  >
		<select  id="materialComboBox1" name="material2"onchange="findIdComboM1() ">	
		<%	for (Material m:listMaterial) {	%>	
		<option value="<%=m.getIdMaterial()%>" ><%=m.getMaterialName()%>			
		</option>
		<%}%>
		</select>	<input type="text" id="mat1" name="mat1" placeholder="enter quantity">
		<br>	<br>	
		<br>
		<input type="hidden" id="idM2" name="idM2"  >
		<select  id="materialComboBox2" name="material2"onchange="findIdComboM1() ">	
		<%	for (Material m:listMaterial) {	%>	
		<option value="<%=m.getIdMaterial()%>" ><%=m.getMaterialName()%>			
		</option>
		<%}%>
		</select>	<input type="text" id="mat2" name="mat2" placeholder="enter quantity">
		<p>Ukupan odnos materijala ne sme biti veci od 100</p>
		<br>	<br>			
		<input type="text" name="name" placeholder="enter name">		
		<input type="text" name="price" placeholder="enter price">
		<input type="file" name="file">
		<input type="submit" value="Insert" onclick="adding()">


	</form>
</div>	
</body>
</html>