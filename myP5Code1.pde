setup = function() {
    size(600, 400);
};

//Background Images
var flattershyImage = loadImage("bg.png/flattershy/download.jpg"); //flattershy image
var pinkiepieImage = loadImage("bg.png/pinkiepie/download (2).jpg"); //pinkiepie image 
var twilightImage = loadImage("twilight/Princess Twilight Sparkle (My Little Pony_ Friendship Is Magic).jpg"); //twilight image 
var rainbowdashImage = loadImage("bg.png/flattershy/rainbowdash/Rainbowdash.jpg"); //rainbowdash image 
var rarityImage = loadImage("rarity/RARITY.jpg"); //rarity image
var applejackImage = loadImage("applejack/download (3).jpg"); //applejack image 
var cityImage = loadImage("city/Canterlot_library_exterior_shot_S5E12.webp"); //city image 

var boxR = 0;
var boxG = 0;
var boxB = 0; 

//Variable Declarations
var sceneImage = cityImage;
var sceneText = "Welcome to Canterlot! Look around and see who lives here. [Press f to see the first pony]"; //start

draw = function(){
   drawScene(); 


   if(keyPressed){
    boxR = random(140, 2200); //text box colors 
    boxG = random(140, 220); 
    boxB = random(180, 255); 
    
    if(key == 'f'){
       sceneImage = flattershyImage;   
       sceneText = "It's Fluttershy! 💛 [Press p next]";
       }
       if(key == 'p'){
       sceneImage = pinkiepieImage;   
       sceneText = "It's Pinkiepie! 🩷 [Press t next]";
       }
       if(key == 't'){
       sceneImage = twilightImage;   
       sceneText = "It's Twilight! 💜 [Press r next]"; 
       }
    if(key == 'r'){
      sceneImage = rainbowdashImage;
      sceneText = "It's Rainbowdash! 💙 [Press y next]";
      } 
      if(key == 'y'){
       sceneImage = rarityImage;   
       sceneText = "It's Rarity! 🤍 [Press a next]"; 
       } 
      if(key == 'a'){
       sceneImage = applejackImage;   
       sceneText = "It's Applejack! 🧡 [Press s to restart]"; 
       } 
      if(key == 's'){
       sceneImage = cityImage;   
       sceneText = "Welcome to Canterlot! Look around and see who lives here. [Press f to see the first pony]";
    } 
   } 
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400); 
    
    fill(boxR, boxG, boxB); 
    rect(0, 350, 600, 140);
      
    fill(160, 100, 200);
    textSize(17);
   
    text(sceneText, 10, 358, 580, 120);
};

mouseClicked = function(){
  sceneText = "Let's go 𓏲ּ𝄢...............................................................................................";
  }; 
