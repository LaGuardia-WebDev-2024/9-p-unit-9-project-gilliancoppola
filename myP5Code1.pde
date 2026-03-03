setup = function() {
    size(600, 400);
};

//Background Images
var caveSceneImage = loadImage("startringo.PNG");

var streetImage = loadImage("streetringo.PNG");

var waterImage = loadImage("waterringo.PNG");

var storeImage = loadImage("storeringo.PNG");

var roadImage = loadImage("roadringo.PNG");

var tripImage = loadImage("tripringo.PNG");

var relaxImage = loadImage("relaxringo.PNG");

var kidImage = loadImage("kidringo.PNG");

//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Ringo is leaving. Where to?  [Press t for street and l for the river]";

draw = function(){
    
   drawScene();

//street
   if(keyPressed){
     if(key == 't'){
       sceneImage = streetImage;   
       sceneText = "He's walking, but he gets chased by fans!  [Press e to escape]";
     } 
   }

//store
if(keyPressed){
   if(key == 'e'){
       sceneImage = storeImage;   
       sceneText = "Ringo got to the store, and got a disguise. [Press l to go to \nthe river]";
}

//water
     if(key == 'l'){
      sceneImage = waterImage;
      sceneText = "He tried to take a photo by the river. Didn't work. \n[Press r to go to the road]";
    } 
}
  
  //restart
  if(key == ' '){
      sceneImage = caveSceneImage;
      sceneText = "Ringo is leaving. Where to?  [Press t for street and l for water]";
    } 

  //road
  if(key == 'r'){
      sceneImage = roadImage;
      sceneText = "Ringo is walking.  [Press c to keep walking and x to finish up the \n walk and relax by the river]"; }

  //gettripped
    if(key == 'c'){
      sceneImage = tripImage;
      sceneText = "A tire rolls along and trips him up! [Press g to get back up]";
    } 

//relax
if(key == 'x'){
      sceneImage = relaxImage;
      sceneText = "Ringo lays down by the river. He drifts off to sleep...";
    } 

//kid comes for tire
    if(key == 'g'){
      sceneImage = kidImage;
      sceneText = "Some kid was playing with the tire and wants it back! [Press k to \ntalk to the kid and d to leave and go to the diner]";
    } 

//talk to kid (then to END)

//diner (then to END)

//go back to the Beatles (END, comes from either choice)

};




var drawScene = function(){
    image(sceneImage, 0, 0, 600, 400);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 375);
};



