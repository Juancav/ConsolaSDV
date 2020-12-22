<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0" />
  <title>Inicio de session</title>
	<!-- Manifest JS -->
	<link rel="manifest" href="<?php echo base_url('Public/Manifest/manifest.json')?>">

	 <!--Icon page-->
	 <link href="<?php echo base_url('Public/Img/favicon.png')?>" rel="icon">

<!--===============================================================================================-->
<!--ESTILOS DE LOGIN-->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/util.css')?>">
	<!-- <link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/main.css')?>"> -->
<!--===============================================================================================-->
<!--ESTILOS DE MENU Y BODY-->
<link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/style.css')?>">
<link rel="stylesheet" type="text/css" href="<?php echo base_url('Public/Css/Css.css')?>">
<!--===============================================================================================-->

</head>
<!-- <body background="<?php echo base_url('Uploads/fondologin.jpg')?>" width="100%" height="100%"> -->

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" method="POST" action='index.php/Login/Logueo'>
				<?php
					if(isset($errorLogin)){
						echo $errorLogin;
					}
					?>
					<span class="login100-form-title p-b-26">
						Bienvenido
					</span>
					<center>
					<img src="<?php echo base_url('Public/Img/bocadeli.jpg" width="300px" height="150px')?>">
					</center>
					<br>
					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<input class="input100" type="text" name="username" required>
						<span class="focus-input100" data-placeholder="Usuario"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
						</span>
						<input class="input100" type="password" name="password" required>
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>
					<br>
					<br>
					<div class="container-login100-form-btn">					
						<div class="wrap-login100-form-btn">

							<div class="login100-form-bgbtn"></div>
					
							<button type="submit" class="login100-form-btn">
								Iniciar Sesion
							</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	

<!--===============================================================================================-->
	<script src="<?php echo base_url('Public/js/App.js')?>"></script>

</body>
</html>