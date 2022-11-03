Particle [] stars;

void setup()
{
  size(500,500); 
  stars = new Particle[500];
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Particle(); 
  stars[0] = new OddballParticle(); 
  }
}
void draw()
{ 
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].move(); 
    stars[i].show(); 
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle; 
  int myColor; 
  Particle()//constructor
  {
   myX = 250; 
   myY = 250;
   myAngle = Math.random()*2*Math.PI; 
   mySpeed = (Math.random() * 10); 
   myColor = color(255, 255, 255); 
  }
  void move(){
   myX = myX + (double)(Math.cos(myAngle) * mySpeed);
   myY = myY + (double)(Math.sin(myAngle) * mySpeed); 
  }    
  void show(){
   fill(myColor);  
   triangle((float)myX - 20, (float)myY, (float)myX - 10, (float)myY + 30, (float)myX, (float)myY); // (bottom) 
   triangle((float)myX - 10, (float)myY - 30, (float)myX - 20, (float)myY + 5, (float)myX, (float)myY + 5);  // (top)
   triangle((float)myX - 5, (float)myY - 10, (float)myX - 5, (float)myY + 10, (float)myX + 15, (float)myY - 2); // (right)
   triangle((float)myX - 15, (float)myY - 10, (float)myX - 15, (float)myY + 10, (float)myX - 35, (float)myY - 2);  // (left) 
  }
}

class OddballParticle extends Particle
{
  OddballParticle(){
    myX = 250;
    myY = 250;
    myColor = color(255,246,142); 
  }
  void move(){
    myX = myX + (double)((Math.random() * 10) - 5); 
    myY = myY + (double)((Math.random() * 10) - 5); 
  }
  void show(){
    fill(myColor); 
    noStroke();
    ellipse((float)myX, (float)myY, 150, 150);
    
  }
}
