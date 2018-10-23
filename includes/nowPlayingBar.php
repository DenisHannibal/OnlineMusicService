
<?php

$songQuery = mysqli_query($con,"SELECT * FROM songs ORDER BY RAND() LIMIT 10");
$resultArray = array();
while($row = mysqli_fetch_array($songQuery)) {
array_push($resultArray,$row['id']); 
}
$jsonArray = json_encode($resultArray);
?> 
<script>
$(document).ready(function() {
 
currentPlaylist = <?php echo $jsonArray;?>; 
audioElement = new Audio();
setTrack(currentPlaylist[0],currentPlaylist,false); 

});
 
function setTrack(trackId,newPlaylist,play) {
  audioElement.setTrack("assets/music/1.mp3"); 
  if(play == true) {
    audioElement.play();
  }
  
}
function playSong() {
  $(".controlButton.play").hide();
  $(".controlButton.pause").show(); 
  audioElement.play();
} 
function pauseSong() {
  $(".controlButton.play").show();
  $(".controlButton.pause").hide(); 
  audioElement.pause();
}
</script>
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
               <img src="assets/image/player/shuffle.png" alt="Shuffle">
             </button>  
             <button class="controlButton previous" title=" Previous"> 
               <img src="assets/image/player/previous.png" alt=" Previous">
             </button>   
             <button class="controlButton play" title="Play" onclick="playSong()" > 
               <img src="assets/image/player/play.png" alt="Play">
             </button>   
             <button class="controlButton pause" title="Pause" onclick="pauseSong()" >  
               <img src="assets/image/player/pause.png" alt="Pause">   
             </button>    
             <button class="controlButton next" title="Next"> 
               <img src="assets/image/player/next.png" alt="Next">
             </button>  
             <button class="controlButton repeat" title="Repeat"> 
               <img src="assets/image/player/repeat.png" alt="Repeat"> 
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
            <img src="assets/image/player/volume.png" alt="Volume"> 
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