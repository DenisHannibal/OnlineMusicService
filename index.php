<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge"> 
  <link rel="stylesheet" type="text/css" href="assets/css/normalize.css"> 
  <link rel="stylesheet" type="text/css" href="assets/css/index/index.css"> 
  <title>Hello</title> 
</head>
<body>
  <footer class="footer"> 
  <div id="nowPlayingBarContainer">
   <div id="nowPlayingBar">
      <div id="nowPlayingLeft">
        <div class="content">
          <span class="albumLink">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtk5zRf_58M0FNX0-dSwH3UyOEBk7TJ5ZD1ww5nojzaTQECGS9" class="albumArtwork">
          </span> 
          <div class="trackInfo">
          <span class="trackName">
            <span>Hannibal Lector</span> 
          </span> 
          <span class="artistName">
            <span>Denis Gribovitch</span>  
          </span> 
          </div>
        </div>
      </div>
      <div id="nowPlayingCenter">
        <div class="content playerControls">
          <div class="buttons"> 
            <button class="controlButton shuffle" title="Shuffle"> 
              <img src="assets/image/player/icons8_Shuffle_25px.png" alt="Shuffle">
            </button>  
            <button class="controlButton previous" title=" Previous"> 
              <img src="assets/image/player/icons8_Skip_to_Start_25px.png" alt=" Previous">
            </button>   
            <button class="controlButton play" title="Play"> 
              <img src="assets/image/player/icons8_Play_Button_Circled_32px.png" alt="Play">
            </button>   
            <button class="controlButton pause" title="Pause">  
              <img src="assets/image/player/icons8_Pause_Button_32px.png" alt="Pause">   
            </button>   
            <button class="controlButton next" title="Next"> 
              <img src="assets/image/player/icons8_End_25px.png" alt="Next">
            </button>  
            <button class="controlButton repeat" title="Repeat"> 
              <img src="assets/image/player/icons8_Repeat_25px.png" alt="Repeat"> 
            </button>   
          </div>
          <div class="playbackBar">
            <span class="progressTime current">0.00</span>
            <div class="progressBar">
              <div class="progressBarBg">
                <div class="progress"></div>
              </div>
            </div> 
            <span class="progressTime remaining">0.00</span> 
          </div>
        </div>
      </div>
      <div id="nowPlayingRight"> 
        <div class="volumeBar">
          <button class="controlButton volume" title="Volume">
          <img src="assets/image/player/icons8_Speaker_25px.png" alt="Volume">
          </button>  
          <div class="progressBar">
              <div class="progressBarBg">
                <div class="progress"></div>
              </div>
          </div> 
        </div>
      </div>
   </div>
  </div>
  </footer>
</body>
</html>