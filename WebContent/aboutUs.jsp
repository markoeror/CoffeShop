<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Prime - O nama</title>
  <meta name="description" content=".....">
  <meta name="keywords" content=".....">
  <meta name="author" content="Aleksandar Vilus | aleksandar.vilus.it.obuka@gmail.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="robots" content="index">
  <link rel="icon" href="http://primetimewatches.net/media/favicon/default/favicon.ico" type="image/x-icon">

  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/all.min.css" rel="stylesheet">
  <link href="css/mojstil.css" rel="stylesheet">


</head>

<body>
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
            <li><a href="kontakt.html">LOGIN</a></li>

        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
    </nav>
    <!-- KRAJ NAVIGACIJE -->
    <!-- POČETAK NASLOVA STRANE -->
    <div class="page-header">
      <h1><em>About us</em></h1>
      <p>
        18-year-old Modenese, Giuseppe Molinari, opened a small shop near Piazza Grande in 1804. The shop, named "Ditta Giuseppe Molinari", sold spices and cured meats, cheeses, and other groceries. The shop was popular with office workers, podestà, mayors, celebrities, and many others. 

The business took off, despite a fire in 1828. Ditta Giuseppe Molinari had such a rush of customers that Molinari sometimes had to borrow goods from other shops to keep up with the demand. Giuseppe eventually passed the business onto his son, Giovanni.
      </p>
      <p>
       Upon his death on May 26th, 1887, Giovanni left the shop to his sons, Achille and Guglielmo, who worked to expand the family business. 

In 1888, Ditta Giuseppe Molinari, now renamed Ditta Fratelli Molinari, became an official supplier for the Savoia house. It had previously gained "the right to put the Royal Stem on the shop" from the King. This was a prosperous period for Fratelli Molinari. It won the silver metal at the National General Exhibition in Palermo in 1892 for the quality of its balsamic vinegar. The brothers built a factory in which to craft their shop's products, and opened a restaurant under the porticoes in Via San Carlo.
      </p>
      <p>
       Bar Molinari opened its doors in 1911. This bar went on to serve as an irreplaceable 'piece' of the town center of Modena by night for the next fifty years. At this time, the Molinari family started their relationship with coffee. It cost 15 cents to enjoy a cup of coffee standing at the "new and very elegant" bar. Achille could be found opening the bar between 3 and 4 o'clock in the morning, ready to receive supplies.

Achille's son, Giuseppe Molinari, took over the company upon his father's death in 1917.
      </p>
   
    </div>
    <!-- KRAJ NASLOVA STRANE -->

    <div class="page-header">

      <!-- POČETAK BOKSEVA -->

      <div class="row">

        <!-- GLAVNI SEGMENT -->

        <div class="col-md-6">
          <div class="mapa">

            <h2 class="page-header">
              Where are we located
            </h2>
            <iframe class="lokacija"
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2830.9758022439064!2d20.41792461549795!3d44.80168177909877!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475a6fed108da8a7%3A0x9c662a8e931516fb!2sITS+-+Information+Technology+School!5e0!3m2!1sen!2srs!4v1549702265641"
              allowfullscreen></iframe>
          </div>
        </div>
        <div class="col-md-5">
          <div class="mapa">

            <h2 class="page-header">
              Contact
            </h2>
            <p><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i> Zadnja kuća 7, Novi Beograd 11090,
              Serbia </p>
            <p><i class="glyphicon glyphicon-phone-alt" aria-hidden="true"></i> +381 11 000 55 00</p>
            <p><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i> info@alobing.rs</p>
          </div>
        </div>


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
            <p class="text-right">Copyright &copy; 2019 Marko Eror </p>
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