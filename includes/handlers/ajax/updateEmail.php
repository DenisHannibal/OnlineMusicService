<?php
include("../../config.php");

if(!isset($_POST['username'])) {
	echo "ОШИБКА: Не удалось установить имя пользователя";
	exit();
}

if(isset($_POST['email']) && $_POST['email'] != "") {

	$username = $_POST['username'];
	$email = $_POST['email'];

	if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		echo "Недействительный адрес электронной почты";
		exit();
	}

	$emailCheck = mysqli_query($con, "SELECT email FROM users WHERE email='$email' AND username != '$username'");
	if(mysqli_num_rows($emailCheck) > 0) {
		echo "Эл. адрец уже используется";
		exit();
	}

	$updateQuery = mysqli_query($con, "UPDATE users SET email = '$email' WHERE username='$username'");
	echo "Обновление прошло успешно";

}
else {
	echo "Вы должны предоставить электронное письмо";
}

?> 