<?php
	include("includes/config.php");
	include("includes/classes/Account.php");
	include("includes/classes/Constants.php");

	$account = new Account($con);

	include("includes/handlers/register-handler.php");
	include("includes/handlers/login-handler.php");

	function getInputValue($name) {
		if(isset($_POST[$name])) {
			echo $_POST[$name];
		}
	}
?>

<html>
<head>
	<title>OnlineMusicService</title>
	<link rel="stylesheet" type="text/css" href="assets/css/normalize.css">
	<link rel="stylesheet" type="text/css" href="assets/css/register.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
	<script src="assets/js/register.js"></script>
</head>
<body>
	<?php

	if(isset($_POST['registerButton'])) {
		echo '<script>
				$(document).ready(function() {
					$("#loginForm").hide();
					$("#registerForm").show();
				});
			</script>';
	}
	else {
		echo '<script>
				$(document).ready(function() {
					$("#loginForm").show();
					$("#registerForm").hide();
				});
			</script>';
	}

	?>
	
	<canvas id="pixie"></canvas> 
	<div id="background">

		<div id="loginContainer">

			<div id="inputContainer">
				<form id="loginForm" action="register.php" method="POST">
					<h2>Вход в аккаунт</h2>
					<p>
						<label for="loginUsername">Логин пользователя</label>
						<input id="loginUsername" name="loginUsername" type="text" placeholder="DenisHannibal" value="<?php getInputValue('loginUsername') ?>" required autocomplete="off">
					</p>
					<p>
						<label for="loginPassword">Пароль</label>
						<input id="loginPassword" name="loginPassword" type="password" required>
					</p>
					<?php echo $account->getError(Constants::$loginFailed); ?>

					<button type="submit" name="loginButton">ВХОД</button>
					
					<div class="hasAccountText">
						<span id="hideLogin">У вас еще нет учетной записи? Зарегайтесь!</span>
					</div>
					
				</form>



				<form id="registerForm" action="register.php" method="POST">
					<h2>Создайте новый аккаунт!</h2> 
					<p>
						
						<label for="username">Логин пользователя</label>
						<input id="username" name="username" type="text" placeholder="DenisHannibal" value="<?php getInputValue('username') ?>" required>
					</p>
					<?php echo $account->getError(Constants::$usernameCharacters); ?>
						<?php echo $account->getError(Constants::$usernameTaken); ?>
					<p>
			
						<label for="firstName">Имя</label>
						<input id="firstName" name="firstName" type="text" value="<?php getInputValue('firstName') ?>" required>
					</p>
					<?php echo $account->getError(Constants::$firstNameCharacters); ?>
					<p>
						
						<label for="lastName">Фамилия</label>
						<input id="lastName" name="lastName" type="text" value="<?php getInputValue('lastName') ?>" required>
					</p>
					<?php echo $account->getError(Constants::$lastNameCharacters); ?>
					<p>
					
						<label for="email">Эл. адрес</label>
						<input id="email" name="email" type="email"  value="<?php getInputValue('email') ?>" required>
					</p>
					
					<p>
						<label for="email2">Подтвердите эл. адрес</label>
						<input id="email2" name="email2" type="email" value="<?php getInputValue('email2') ?>" required>
					</p>
					<?php echo $account->getError(Constants::$emailsDoNotMatch); ?>
						<?php echo $account->getError(Constants::$emailInvalid); ?>
						<?php echo $account->getError(Constants::$emailTaken); ?>
					<p>
						
						<label for="password">Пароль</label>
						<input id="password" name="password" type="password" required>
					</p>
					
					<p> 
						<label for="password2">Подтвердите пароль</label>
						<input id="password2" name="password2" type="password" required>
					</p>
					<?php echo $account->getError(Constants::$passwordsDoNoMatch); ?>
						<?php echo $account->getError(Constants::$passwordNotAlphanumeric); ?>
						<?php echo $account->getError(Constants::$passwordCharacters); ?>
					<button type="submit" name="registerButton">Сохранить</button>

					<div class="hasAccountText">
						<span id="hideRegister">У вас уже есть учетная запись?</span>
					</div>
					
				</form>


			</div> 

			<div id="loginText">
				<h1>Получите отличную музыку прямо сейчас!</h1>
				<h2>Слушайте множество бесплатных песен:</h2> 
				<ul>
					<li>- Откройте для себя любимую музыку!</li>
					<li>- Создайте свои собственные плейлисты!</li>
					<li>- Следите за новинками от музыкантов!</li>
				</ul>
			</div>

		</div>
	</div>

</body>
</html>