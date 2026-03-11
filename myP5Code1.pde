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

var blackImage = loadImage("black-background-1365087945eJf.jpg");

var talkImage = loadImage("talkringo.PNG");

var pubImage = loadImage("pubringo.PNG");

var beatlesImage = loadImage("beatlesringo.PNG");

//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Ringo is leaving rehearsals. Where to?  [Press t for the street and \n   l for the river]";

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
      sceneText = "Ringo is leaving rehearsals. Where to?  [Press t for the street and \n   l for the river]";
    } 

  //road
  if(key == 'r'){
      sceneImage = roadImage;
      sceneText = "Ringo is walking.  [Press c to keep walking and x to finish up the \n walk and relax by the river]"; }

  //gettripped
    if(key == 'c'){
      sceneImage = tripImage;
      sceneText = "Oh no! A tire rolls along and trips him up. [Press g to get back up]";
    } 

//relax
if(key == 'x'){
      sceneImage = relaxImage;
      sceneText = "Ringo lays down by the river. He drifts off to sleep... [Click and \n  hold the screen]";
    };

//kid comes for tire
    if(key == 'g'){
      sceneImage = kidImage;
      sceneText = "Some kid was playing with the tire and wants it back! [Press k to \ntalk to the kid and p to leave and go to the pub]";
    } 

//fall asleep
if(mousePressed && sceneImage==relaxImage){
  sceneImage = blackImage;
}

//talk to kid (then to END)
if(key == 'k'){
      sceneImage = talkImage;
      sceneText = "He's a deserter, skipping school, like how Ringo is skipping work... \n[Press b to go back to the Beatles and p to go to the pub]";
    } 

//pub (then to END)
if(key == 'p'){
      sceneImage = pubImage;
      sceneText = "Ringo causes a bit of a scene at the pub. He'd really better get \n back to work... [Press b to go back to the Beatles]";
    } 

//go back to the Beatles (END, comes from either choice)
if(key == 'b'){
      sceneImage = beatlesImage;
      sceneText = "Back to the Beatles at long last! What a great show. [Click and \n hold the screen]";
    } 

if(mousePressed && sceneImage==beatlesImage){
  textSize(random(50, 145));
  fill(255, 58, 23);
  text("♫♪",random(0,550),random (0,350));

  textSize(random(50, 120));
  fill(33, 26, 112);
  text("♫♪",random(0,550),random (0,350));
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



