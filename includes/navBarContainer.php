<div id="navBarContainer">
	<nav class="navBar">
		
		
		<div class="group">
		<span role="link" tabindex="0" onclick="openPage('index.php')" class="logo">
			<img src="assets/images/icons/logo.png">
		</span> 
			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('browse.php')" class="navItemLink">Главная</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('yourMusic.php')" class="navItemLink">Моя музыка</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('settings.php')" class="navItemLink"><?php echo $userLoggedIn->getFirstAndLastName(); ?></span>
			</div>
		</div>
			<div class="group">
<div class="navItem">
	<span role='link' tabindex='0' onclick='openPage("search.php")' class="navItemLink">
	Поиск 
	</span>  
	<span role='link' tabindex='0' onclick='openPage("search.php")' class="navItemLink">
	<img src="assets/images/icons/search.png" class="icon" alt="Search"> 
	</span> 
</div> 

</div>

	</nav>
</div>