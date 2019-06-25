<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Prime - Kontakt</title>
  <meta name="description" content=".....">
  <meta name="keywords" content=".....">
  <meta name="author" content="Aleksandar Vilus | aleksandar.vilus.it.obuka@gmail.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta name="robots" content="index">
  <link rel="icon" href="http://primetimewatches.net/media/favicon/default/favicon.ico" type="image/x-icon">

  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/all.min.css" rel="stylesheet">
  <link href="css/mojstil.css" rel="stylesheet">
  <link href="css/kontakt.css" rel="stylesheet">
	<!-- bootstrap -->
	<!-- 	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">     -->  
		<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
		<link href="themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="themes/css/flexslider.css" rel="stylesheet"/>
		<link href="themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="themes/js/jquery-1.7.2.min.js"></script>
<!-- 		<script src="bootstrap/js/bootstrap.min.js"></script>				 -->
		<script src="themes/js/superfish.js"></script>	
		<script src="themes/js/jquery.scrolltotop.js"></script>

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
            <li><a href="login.jsp">LOGIN</a></li>

        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
    </nav>
    <!-- KRAJ NAVIGACIJE -->

    <!-- POČETAK NASLOVA STRANE -->
    <div class="page-header">
     

      <!-- KRAJ NASLOVA STRANE -->

     <div class="container" style="width: 600px">
 
  	<h4 class="title"><span class="text"><strong>Login</strong> Form</span></h4>
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading"></div>
      <div class="panel-body">
      <form action="/CoffeShop/action/login" method="post">
    <div class="form-group">
      <label for="username">Username:</label>
      <input type="text" class="form-control" id="username" placeholder="Enter username" name="txt_username">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="txt_password">
    </div>
    <!-- <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div> -->
    <button type="submit" class="btn btn-primary">Login</button>   
 	 </form>     
      </div>
    </div>
  </div>
</div>

  <div class="container" style="width: 600px" >

  	<h4 class="title"><span class="text"><strong>Register</strong> Form</span></h4>
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading"></div>
      <div class="panel-body">
    <div class="form-group">
  <form action="/CoffeShop/action/registration" >
    <div class="form-group">
      <label for="username">Username:</label>
      <input type="text" class="form-control" id="user1" placeholder="Enter username" name="user1">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pass1" placeholder="Enter password" name="pass1">
    </div>
     <div class="form-group">
      <label for="pwd">Password Repeat:</label>
      <input type="password" class="form-control" id="pass2" placeholder="Repeat password" name="pass2">
    </div>
    <div class="form-group">
      <label for="pwd">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
    </div>
      <div class="form-group">
      <label for="pwd">Surname:</label>
      <input type="text" class="form-control" id="Surname" placeholder="Enter name" name="Surname">
    </div>
    
 
    <button type="submit" class="btn btn-success">Register</button>
  </form>
      </div>
    </div>
  </div>
</div>
</div>

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
            <p class="text-right">Copyright &copy;  2019 Marko Eror</p>
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
  <script src="js/kontakt.js"></script>

</body>

</html>