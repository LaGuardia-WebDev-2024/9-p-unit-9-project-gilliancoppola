setup = function() {
    size(600, 400);
};

//Background Images
var caveSceneImage = loadImage("startringo.PNG");

var streetImage = loadImage("streetringo.PNG");

var waterImage = loadImage("waterringo.PNG");

var storeImage = loadImage("storeringo.PNG");

//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "You are leaving. Where to?  [Press t for street and w for water]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 't'){
       sceneImage = streetImage;   
       sceneText = "You're walking, but you get chased by fans!  [Press e to escape]";
     } 
   }

if(keyPressed){
   if(key == 'e'){
       sceneImage = storeImage;   
       sceneText = "You got to the store, and got a disguise. [Press w to go to water]";
}

     if(key == 'w'){
      sceneImage = waterImage;
      sceneText = "You tried to take a photo by the water. Didn't work. [Press ]";
    } 
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 375);
};



