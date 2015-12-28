//Full_Random_Color_Circle
//by Peter Dunham 12/28/2015
// Free to use and modify

myApplication myApp;
RndColorCircle myCir;

//myApplication 
class myApplication{
 int diameter=25;
 int spacing=7;
 int stroke=5;
 int delay=5000;
 int appWidth=750;
 int appHeight=750;
 int col_hghts[]={3,3,2,2,1,1,1,1,2,2,2,2,3,3,3,3,4,5,7,8,10,12,14}; 

 myApplication(){
  background(255,255,255);
   for (int c=1 ; ((diameter+spacing)*c-diameter/2 < width); c++)
   {
     //delay(delay);
     for (int r =1 ; ((diameter+spacing)*r-diameter/2 <height) & (r-1<col_hghts[c-1]) ; r++)
     {
        //delay(delay);
        //print(col_hghts[c-1]);
        myCir = new RndColorCircle(stroke,((diameter+spacing)*c-diameter/2),height-((diameter+spacing)*r-diameter/2),diameter);  
     }
   }
   //delay(delay);
 }
 
  
}

//RndColorCirlce
class RndColorCircle{
  RndColorCircle(int stroke, int xpos, int ypos, int diameter){
    strokeWeight(stroke); 
    fill(random(0,255),random(0,255),random(0,255));
    ellipse(xpos,ypos,diameter,diameter);  
  }
  
}



//1 of 2 PROCESSING "main" program
//This runs once and is for static intializations
void setup(){
   size (750,750);
   background(255,255,255);
   myApp=new myApplication();
   delay(5000);
}

//2 of 2 PROCESSING "main" program
//this is where the dynamic stuff happens
void draw(){  
   //myApp=new myApplication();
   
}