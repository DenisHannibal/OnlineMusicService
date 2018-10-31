<div id="navBarContainer">
	
     

	<nav class="navBar">
	<span role="link" tabindex="0" onclick="openPage('index.php')" class="logo">
			<img src="assets/images/icons/logo.png">
		</span>  
		<div 	class="menu-trigger">
		<img src="assets/images/menu/icon-menu.svg" class="icon2" alt="Menu">   
					</div> 
		<div class="group "> 
		
			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('browse.php')" class="navItemLink">Главная</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('yourMusic.php')" class="navItemLink">Моя музыка</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('settings.php')" class="navItemLink"><?php echo $userLoggedIn->getFirstAndLastName(); ?></span>
			</div>

			<div class="navItem">
	<span role='link' tabindex='0' onclick='openPage("search.php")' class="navItemLink">
	Поиск 
	</span>  
	<span role='link' tabindex='0' onclick='openPage("search.php")' class="navItemLink">
	<img src="assets/images/icons/search.png" class="icon" alt="Search"> 
	</span> 
</div> 

		</div>
		
		<script> 
	$(document).ready(function() {
  $('.menu-trigger').click(function() {
    $('.group').slideToggle(720);
  });
   
  $(window).resize(function() {		
		if (  $(window).width() > 720 ) {			
			$('.group').removeAttr('style');
		 }
	});
}); 
	</script> 

	</nav>
</div>