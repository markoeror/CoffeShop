<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Black Coffee</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="#">Shop</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
  


<div class="container">
  <h2>Login</h2>
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

  <div class="container">
  <h2>Register</h2>
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



</body>
</html>
