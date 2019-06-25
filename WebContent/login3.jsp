<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>


<body>

	<center>
		<div id="login">
			<form action="/CoffeShop/action/login" method="post">
				<fieldset>
					<legend>Logovanje</legend>
					<table>
						<tr>
							<td>Korisnicko ime</td>
							<td><input type="text" name="txt_username"
								placeholder="enter username" required></td>
						</tr>
						<tr>
							<td>Password</td>
							<td><input type="text" name="txt_password"
								placeholder="enter password" required></td>
						</tr>
						<tr>

							<td><input type="submit" name="submit" value="login"></td>
						</tr>
					</table>
			</form>
			</fieldset>
		</div>
	</center>

	<center>
		<div id="registration">
			<form action="/CoffeShop/action/registration" method="post">
				<fieldset>
					<legend>Registracija</legend>
					Username :<input type="text" name="user1"
						placeholder="enter username" required=><br> Ime :<input
						type="text" name="name" placeholder="enter name" required><br>
					Prezime :<input type="text" name="surname"
						placeholder="enter surname" required><br> Password :<input
						type="password" name="pass1" placeholder="enter password" required><br>
					Password :<input type="password" name="pass2"
						placeholder="repeat password" required><br>
					<br> <input type="submit" name="submit" value="registration">
			</form>

			<%
				String msg = (String) request.getAttribute("msg"); //ispisivanje poruke o uspesnom logovanju koja stize sa servera
				if (msg != null) {
			%>
			<p style="background-color: teal" width="400">
				<%=msg%>
				<%
					}
				%>
			
			</fieldset>
		</div>
	</center>
</body>
</html>