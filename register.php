<?php 
  include("includes/config.php") ;  
  include("includes/classes/Account.php") ; 
  include("includes/classes/Constants.php") ;  
  $account = new Account($con);    
  include("includes/handlers/register-handler.php") ;
  include("includes/handlers/login-handler.php") ;
  function getInputValue($name) {
    if(isset($_POST[$name])) {
      echo $_POST[$name]; 
    }
  }
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" type="text/css" href="assets/css/normalize.css">
  <link rel="stylesheet" type="text/css" href="assets/css/register/register.css">       
  <link rel="stylesheet" type="text/css" href="assets/css/register/placeholder.css">     
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
  <script src="assets/js/register.js"></script>  
  <title>Register</title>  
</head>
<body>
   <canvas id="pixie"></canvas>
<?php 
if(isset($_POST['registerButton'])) {
  echo '<script>
    $(document).ready(function () {
     $("#loginForm").hide();
     $("#registerForm").show(); 
    });
  </script>'; 
}
else {
  echo '<script>
    $(document).ready(function () {
     $("#loginForm").show();
     $("#registerForm").hide(); 
    });
  </script>'; 
}
?>

<main class="main">
  <div id="loginContainer">
    <div id="inputContainer"> 
      <form id="loginForm" action="register.php" method="POST">
        <h2>Login to your account!</h2>
        <p>   
          <label for="loginUsername">Username:</label>
          <input id="loginUsername" name="loginUsername" type="text" value="<?php getInputValue('loginUsername') ?>" placeholder="Denis" required> 
        </p>  
        <p> 
          <label for="loginPassword">Password:</label>
          <input id="loginPassword" name="loginPassword" type="password" placeholder="Your password" required> 
        </p>
          <?php echo $account->getError(Constants::$loginFailed); ?>
          <button type="submit"name="loginButton">LOG IN</button> 
          <div class="hasAccountText"> 
            <span id="hideLogin">Don't have an account yet? Signup here.</span>
          </div>
      </form>
      <form id="registerForm" action="register.php" method="POST">
        <h2>Create your free account!</h2> 
        <p> 
          <label for="username">Username:</label>
          <input id="username"  name="username" type="text" placeholder="Denis" value="<?php getInputValue('username') ?>" required>
        </p> 
        <?php echo $account->getError(Constants::$usernameCharacters); ?>
        <?php echo $account->getError(Constants::$usernameTaken); ?> 
        <p>         
          <label for="firstName">First name:</label>
          <input id="firstName" name="firstName" type="text" value="<?php getInputValue('firstName') ?>" placeholder="Hannibal" required>
        </p> 
        <?php echo $account->getError(Constants::$firstNameCharacters); ?>
        <p>
          <label for="lastName">Last name:</label> 
          <input id="lastName" name="lastName" type="text" value="<?php getInputValue('lastName') ?>" placeholder="GitHub" required>
        </p> 
        <?php echo $account->getError(Constants::$lastNameCharacters); ?> 
        <p>   
          <label for="email">Email:</label>
          <input id="email" name="email" type="email" value="<?php getInputValue('email') ?>" placeholder="denis@gmail.com" required>
        </p> 
        <p> 
          <label for="email2">Confirm email:</label>
          <input id="email2" name="email2" type="email" value="<?php getInputValue('email2') ?>" placeholder="denis@gmail.com" required> 
        </p> 
        <?php echo $account->getError(Constants::$emailsDoNoMatch); ?>
        <?php echo $account->getError(Constants::$emailInvalid); ?>  
        <?php echo $account->getError( Constants::$emailTaken); ?> 
        <p>     
          <label for="password">Password:</label>
          <input id="password" name="password" type="password" placeholder="Your password" required> 
        </p> 
        <p> 
         <label for="password2">Confirm password:</label> 
         <input id="password2" name="password2" type="password" placeholder="Your password"  required> 
        </p>
        <?php echo $account->getError(Constants::$passwordsDoNoMatch); ?>
        <?php echo $account->getError(Constants::$passwordNotAlphanumeric); ?>
        <?php echo $account->getError(Constants::$passwordCharacters); ?>  
        <button type="submit"name="registerButton">SIGN UP</button>  
        <div class="hasAccountText"> 
         <span id="hideRegister">Already have an account? Log in here.</span> 
        </div> 
      </form>
    </div>   
    <div id="loginText">
      <h1>Get great music,right now</h1>
      <h2>Listen to loads of songs for free</h2>
      <ul>
        <li>Discover music you'll fall in love with</li>
        <li>Create your own playlists</li>
        <li>Follow artists to keep up to date</li> 
      </ul>
    </div>  
  </div>
</main>
   <script src="assets/js/parallaxsoon3.js" type="text/javascript"></script>
</body>
</html>