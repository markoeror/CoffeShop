<%@page import="domen.Category"%>
<%@page import="java.util.List"%>
<%@page import="service.imp.ServiceGetCategoryListImp"%>
<%@page import="service.ServiceGetCategoryList"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Prime - Home</title>
  <meta name="description" content=".....">
  <meta name="keywords" content=".....">
  <meta name="author" content="Marko Eror">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="robots" content="index">
  <link rel="icon" href="http://primetimewatches.net/media/favicon/default/favicon.ico" type="image/x-icon">

  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/all.min.css" rel="stylesheet" type="text/css">
  <link href="css/mojstil.css" rel="stylesheet" type="text/css">
  <link href="css/mojstil_index.css" rel="stylesheet" type="text/css">


</head>

<body onload="citati()">
<%ServiceGetCategoryList sgcl= new ServiceGetCategoryListImp();
	List<Category> listCategory=sgcl.listCategory();
%>


  <!-- POČETAK OMOTAČA -->
  <div class="container">

    <!-- POČETAK HEDER-A -->
    <div class="page-header" >
     <a  href="index.jsp">
      <img src="images/molinari.png">
    </div>

    <!-- KRAJ HEDER-A -->

    <!-- OVO JE POCETAK NAVIGACIJE -->
    <nav class="navbar navbar-default" data-spy="affix">
      <!--afix FIKSIRANJE NAVIGACIJE-->
      <h2>Glavna navigacija</h2>
      <div class="container-fluid">

        <!-- POČETAK DELA KOJI KREIRA BURGER -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.jsp">
        
          </a>
        </div>
        <!-- KRAJ DELA KOJI KREIRA BURGER -->

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
          
           <%--  <!-- POČETAK PADAJUĆEG MENIJA -->
            <li class="dropdown">
              <a href="#s" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false">BRENDOVI <span class="caret"></span></a>
              <ul class="dropdown-menu">
               <%
              if(listCategory!=null){
              for(Category c: listCategory){ %>
              <li><a href="/CoffeeShop/?id=<%=c.getId_Category()%>"><%=c.getName_Category() %></a></li>
              <%}} %>
              </ul>
            </li>          
            <!-- KRAJ PADAJUĆEG MENIJA --> --%>

            <li><a href="webshop.jsp">SHOP</a></li>
            <li><a href="aboutUs.jsp">ABOUT US</a></li>
            <li><a href="login.jsp">LOGIN</a></li>

        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
    </nav>
    <!-- KRAJ NAVIGACIJE -->

    <!-- POČETAK NASLOVA STRANE -->
    <div id="GlTxt" class="page-header">
      <h1><em>Enjoy in coffee heaven!</em></h1>
      <p>For Centuries the Name Molinari has been linked with Italian Espresso Coffee. Discover the taste of a wonderful Italian story, rich in flavour and satisfaction.</p>

      <p>Caffe Molinari Coffee is perfect for your Café, Restaurant or Hotel. With a range of products and machinery to suit every taste..</p>

    
    </div>
    <!-- KRAJ NASLOVA STRANE -->


    <!-- POČETAK KARUSELA -->
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

      <!-- MEHURIĆI -->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      </ol>

      <!-- FOTKE -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <a href="haemmer.html">
            <img src="images/RThpuP.jpg" alt="Welder by Italo Fontana">
          </a>
          <div class="carousel-caption">
          </div>
        </div>
        <div class="item">
          <a href="welder.html">
            <img src="images/R6cSpZ.jpg" alt="Haemmer - Germany">
          </a>
          <div class="carousel-caption">
          </div>
        </div>
        <div class="item">
          <a href="uboat.html">
            <img src="images/yUvntM.jpg" alt="U-Boat by Italo Fontana">
          </a>
          <div class="carousel-caption">
          </div>
        </div>
      </div>

      <!-- KONTROLE KARUSELA -->
      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <!-- KRAJ KARUSELA -->

    <div class="page-header">
      <!-- POČETAK BOKSEVA -->
      <div class="row">
        <!-- POČETAK LEVOG BOKSA -->
        <div class="col-md-8">
          <div class="jumbotron">
            <h2>Aktueno</h2>

            <p>Promotivna prodaja Haemmer satova.
              Ovog meseca cene snižene 40%. Prijavite se da bi ste dobili detaljnije informacije.
            </p>
            <br>
            <p><a class="btn btn-primary btn-lg" href="kontakt.html" role="button">Detaljnjije  <i
                  class="fas fa-arrow-alt-circle-right"></i></a></p>
          </div>

        </div>
        <!-- KRAJ LEVOG BOKSA -->

        <!-- POČETAK DESNOG BOKSA -->
        <div class="col-md-4">
          <div class="jumbotron">

            <h2>Rekli su</h2>
            <blockquote>
              <p id="citat"></p>
              <small><cite id="author"></cite></small>
            </blockquote>

          </div>
        </div>
        <!-- KRAJ DESNOG BOKSA -->
      </div>
      <!-- KRAJ BOKSEVA -->
    </div>


    <!-- POČETAK FOOTER-A -->
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
            <p class="text-right">Copyright &copy; 2019 Marko Eror</p>
          </div>
        </div>
      </div>
      <!-- kraj donjeg dela footer-a -->
    </footer>
    <!-- KRAJ FOOTER-A -->
  </div>
  <!-- KRAJ OMOTAČA -->


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/mojjs.js"></script>

</body>

</html>