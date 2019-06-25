<%@page import="service.imp.ServiceGetAllProductsImp"%>
<%@page import="service.ServiceGetAllProducts"%>
<%@page import="domen.Product"%>
<%@page import="domen.Category"%>
<%@page import="java.util.List"%>
<%@page import="service.imp.ServiceGetCategoryListImp"%>
<%@page import="service.ServiceGetCategoryList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%-- <%@include file="redirekcija.jsp" %> --%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Prime - Haemmer</title>
  <meta name="description" content=".....">
  <meta name="keywords" content=".....">
  <meta name="author" content="Eror Marko erormarko.84@gmail.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="robots" content="index">
  <link rel="icon" href="http://primetimewatches.net/media/favicon/default/favicon.ico" type="image/x-icon">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/all.min.css" rel="stylesheet">
  <link href="css/mojstil.css" rel="stylesheet">
  <link href="css/mojstil_galerija.css" rel="stylesheet">

</head>

<body>
<form action="ServletWebshop" method="post" >
<!-- KREIRAMO DVA SKRIVENA POLJA U KOJA CEMO DODELJIVATI VREDNOST ID-A I UNETE KOLICINE PROIZVODA POMOCU JAVA SCRIPTA -->
    <input type="hidden" id="idartikla1"name ="idartikla">
	<input type="hidden" id= "kolicina1" name ="kolicina">
	<input type="hidden" id= "cena1" name ="cenaA">
	
<% 
ServiceGetCategoryList sgcl= new ServiceGetCategoryListImp();
List<Category> listCategory=sgcl.listCategory();

List<Product>list=(List<Product>) request.getAttribute("list");

ServiceGetAllProducts sgap= new ServiceGetAllProductsImp();
List<Product> listAllProducts=sgap.listAllProducts();



%>
  <!-- POÄETAK OMOTAÄA -->
  <div class="container">

    <!-- POÄETAK HEDER-A -->
    <div class="page-header">
      <img src="images/primetime/primetime-head-inv.png">
    </div>
    <!-- KRAJ HEDER-A -->

    <!-- OVO JE POCETAK NAVIGACIJE -->
    <nav class="navbar navbar-default" data-spy="affix">
      <!--afix FIKSIRANJE NAVIGACIJE-->
      <h2>Glavna navigacija</h2>
      <div class="container-fluid">

        <!-- POÄETAK DELA KOJI KREIRA BURGER -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.jsp">
            PRIME
          </a>
        </div>
        <!-- KRAJ DELA KOJI KREIRA BURGER -->

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
			<!-- RAD SA KATEGORIJAMA -->
            <!-- POÄETAK PADAJUÄEG MENIJA -->
            <li class="dropdown">
              <a href="galerija.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false">PRODUCT CATEGORY <span class="caret"></span></a>
              <ul class="dropdown-menu">
               <%for(Category c: listCategory){ %>
            <%--   <li><a href="/CetvrtiProjekatSesije/ServletKategorijePrikaz?id=<%=c.getId_Category()%>"><%=c.getName_Category() %></a></li> --%>
                <li><a href="/CoffeShop/action/categoryview?id=<%=c.getId_Category()%>"><%=c.getName_Category() %></a></li>
                 
              <%} %>
              </ul>
            </li>
            <!-- KRAJ PADAJUÄEG MENIJA -->

            <li><a href="webshop.jsp">Shop</a></li>
            <li><a href="aboutUs.jsp">About us</a></li>
            <li><a href="login.jsp">LOGIN</a></li>

        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
    </nav>
    <!-- KRAJ NAVIGACIJE -->

    <!-- POÄETAK NASLOVA STRANE -->
    <div class="page-header">
      <h1><em>HAEMMER Germany</em></h1>

    </div>
    <!-- KRAJ NASLOVA STRANE -->

    <div class="page-header">

      <!-- POÄETAK BOKSEVA -->
      <div class="row">
        <div class="col-md-6">
          <img id="HaGe" src="images/primetime/header-haemmer-L.jpg" class="img-responsive" alt="Haemmer Germany">
        </div>
       
      </div>
	
      <div class="row">

        <!-- BOÄNI SEGMENT KOJI SLUÅ½I SAMO ZA ODVAJANJE -->
        <div class="col-xs-2 col-md-1">
        </div>

        <!-- GLAVNI SEGMENT -->
        <div class="col-xs-8 col-md-10">
        
		<!-- RAD SA ARTIKLIMA -->
          <!-- POÄETAK DELA SA FOTOGRAFIJAMA PROIZVODA -->
          <div class="okvir0">

            <!-- FOTOGRAFIJA 1 -->
             <%if(listAllProducts!=null){
             for(Product p: listAllProducts){ %>
              <div class="okvir1">
              
                <div>
                  <p>
                    <h3>
                      <strong>DHC-12 Zeno</strong>/
                    </h3>
                  
                  <a>
                    <img src="images/<%=p.getFileName() %>" alt="DHC-12 Zeno">
                  </a>
                </div>
                <input type="hidden" name="idArtikla" value="<%=p.getIdProduct()%>">
                <p>
                  <strong><%=p.getPrice() %> RSD</strong>
                </p>
                <p>
                  Order <label for="<%=p.getIdProduct()%>"></label>
                  <input type="number" id="<%=p.getIdProduct()%>" name="<%=p.getIdProduct() %>"  placeholder="0"> komada
                </p>
                <p>
                  <input type="submit" value="Add in basket" onclick="poziv(<%=p.getIdProduct()%>,<%=p.getPrice()%>)">
                </p>
             
              </div>
              
	<%}} %>

        </div>
 				
      </div>


      <!-- KRAJ BOKSEVA -->

    </div>
  <div class="page-header">

        <div id="krajodabira">
          <div class="row">
            <div class="col-md-12">
              <h2>
                Detalji narudzbenice
              </h2>

              <div class="grupaizracunavanje">
                <p>
                  <label for="btn-izracunaj">

                  </label>
                <li>
            <!--     <a class="btn btn-primary btn-lg" href="/CetvrtiProjekatSesije/ServletKupovina" role="button">Kupi</a> -->
               <!--  <a href="/CetvrtiProjekatSesije/ServletKupovina">Kupi</a></li> -->
               <%   HttpSession sesija = request.getSession();
                		  double korpa=0;
                	if(sesija.getAttribute("korpa")!=null){	  
 					 korpa=(double)sesija.getAttribute("korpa");}%>
 					 
                   <input type="text" id="txt-izracunaj" value="<%=korpa %>" name="" disabled="disabled">
                    <a class="btn btn-primary btn-lg" href="/CetvrtiProjekatSesije/ServletKupovina" role="button">Kupi</a>
                </p>
                
                <div id="rezultati">
                </div>
                <br>
                <div id="rezultati1">
                </div>
                <p>
                  <a class="btn btn-primary btn-lg" href="kontakt.jsp" role="button">Prijavite se</a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

    <!-- POÄETAK FOOTER-A -->
    <footer>
      <div class="row">

        <div class="col-md-12">

          <ul id="SoNet" class="list-inline">
            <li><a href="http://facebook.com/"><i class="fab fa-facebook-f fa-3x"></i></a></li>
            <li><a href="http://instagram.com/"><i class="fab fa-instagram fa-3x"></i></a></li>
            <li><a href="http://twitter.com/"><i class="fab fa-twitter fa-3x"></i></a></li>
          </ul>
        </div>
      </div>
      <!-- kraj gornjeg dela footer-a -->
      <!-- donji deo footer-a -->
      <div class="panel-footer">
        <div class="row">

          <div class="col-md-12">
            <p class="text-right">Copyright &copy; 2019 Aleksandar Vilus &#64; CODE</p>
          </div>
        </div>
      </div>
      <!-- kraj donjeg dela footer-a -->
    </footer>
    <!-- KRAJ FOOTER-A -->
  </div>
  <!-- KRAJ OMOTAÄA -->
</form>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/mojjs.js"></script>
  
  JAVA SCRIPT FUNKCIJA POMOCU KOJE DODELJUJEMO VREDNOSTI UNETE KOLICINE I ID-A ZA ODABRANI PROIZVOD I DODELJUJEMO IH SKRIVENIM POLJIMA
  <script>
	function poziv(vrednost,cena) {
		var id = vrednost;
		var kolicina = document.getElementById(vrednost).value;
		/* var cena=cena; */
		document.getElementById("idartikla1").value=id;
		document.getElementById("kolicina1").value=kolicina;
		document.getElementById("cena1").value=cena;
		alert(kolicina);
		alert(id); 
		alert(cena);
		}
  </script>
</body>

</html>