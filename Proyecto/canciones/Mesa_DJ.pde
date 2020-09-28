//Importar libreria oscP5, para la conexion con pure data
import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress direccion;
int puerto;
String ip;

//Importa la libreria TUI -> lectura de marcadores
import TUIO.*;
TuioProcessing tuio;

//Las canciones son representadas como un circulo
int n_elements;   //Cantidad de canciones
int [] X;
int [] Y;
int [] R;
int [] G;
int [] B;

void setup() {
  //size(800,800);
  fullScreen();
  
  tuio = new TuioProcessing(this);
  
  //conexion con LocalHost
  ip = "127.0.0.1";
  //Puerto de conexion
  puerto = 8080;

  oscP5 = new OscP5(this, puerto);
  direccion = new NetAddress(ip, puerto);
 
  n_elements = 12;
  X = new int [n_elements];
  Y = new int [n_elements];
  R = new int [n_elements];
  G = new int [n_elements];
  B = new int [n_elements];
  
  for(int i=0; i<n_elements;i++){
    X[i] = width;
    Y[i] = height;
    R[i] = 0;
    G[i] = 0;
    B[i] = 0;
  }
  
  
  drawTable();
}
 
void draw() {
  drawTable();
  drawElement(0,"song");
}

//Procedimiento que dibuja el tablero de control
void drawTable(){
  fill(86, 101, 115);
  rect(0,0,width,height);
  //100%
  noStroke();
  fill(21, 67, 96);
  rect(0,0,width,50);
  //90%
  noStroke();
  fill(26, 82, 118);
  rect(0,50,width,50);
  //80%
  noStroke();
  fill(31, 97, 141);
  rect(0,100,width,50);
  //70%
  noStroke();
  fill(36, 113, 163);
  rect(0,150,width,50);
  //60%
  noStroke();
  fill(41, 128, 185);
  rect(0,200,width,50);
  //50%
  noStroke();
  fill(93, 173, 226);
  rect(0,250,width,50);
  //40%
  noStroke();
  fill(133, 193, 233);
  rect(0,300,width,50);
  //30%
  noStroke();
  fill(169, 204, 227);
  rect(0,350,width,50);
  //20%
  noStroke();
  fill(212, 230, 241);
  rect(0,400,width,50);
  //10%
  noStroke();
  fill(234, 242, 248);
  rect(0,450,width,50);
}

//Procedimiento que dibuja una figura geometrica:
  //Type = song -> Dibuja un circulo
  //Type = effect -> Dibuja un cuadrado
  //Type = none -> No dibuja nada. En el terminal manda un mesaje
void drawElement(int id, String type){
  if(type.toLowerCase()=="song")
  {
    fill(R[id],G[id],B[id]);
    noStroke();
    ellipse(X[id],Y[id],50,50);
  }else if(type.toLowerCase()=="effect"){
    fill(R[id],G[id],B[id]);
    noStroke();
    rect(X[id],Y[id],50,50);
  }else if(type.toLowerCase()=="none")
  {
    println("se lee, pero no muestra");
  }
}

//Procedimiento que envia a pure data la informacion para el control de sonido
//El parametro id debe ser del elemento que desee controlar
void soundControl(int id)
{
  String messPlay = "/play"+id;
  OscMessage play = new OscMessage(messPlay);
  println(messPlay);
  
  String messPause = "/pause"+id;
  OscMessage pause = new OscMessage(messPause);
  println(messPause);
  
  String messVol = "/volumen"+id;
  OscMessage volumen = new OscMessage(messVol);
  println(messVol);
  
  
  if(Y[id]>=0 && Y[id]<50){
      play.add(1);
      oscP5.send(play, direccion);
      
      pause.add(0);
      oscP5.send(pause, direccion);
      
      volumen.add(1);
      oscP5.send(volumen, direccion);
      
    }else if(Y[id]>=50 && Y[id]<100){
      play.add(1);
      oscP5.send(play, direccion);
      
      pause.add(0);
      oscP5.send(pause, direccion);
      
      volumen.add(0.9);
      oscP5.send(volumen, direccion);
      
    }else if(Y[id]>=100 && Y[id]<150){
      play.add(1);
      oscP5.send(play, direccion);
      
      pause.add(0);
      oscP5.send(pause, direccion);
      
      volumen.add(0.8);
      oscP5.send(volumen, direccion);
    
  }else if(Y[id]>=150 && Y[id]<200){
      play.add(1);
      oscP5.send(play, direccion);
      
      pause.add(0);
      oscP5.send(pause, direccion);
      
      volumen.add(0.7);
      oscP5.send(volumen, direccion);
      
    }else if(Y[id]>=200 && Y[id]<250){
      play.add(1);
      oscP5.send(play, direccion);
      
      pause.add(0);
      oscP5.send(pause, direccion);
      
      volumen.add(0.6);
      oscP5.send(volumen, direccion);
      
    }else if(Y[id]>=250 && Y[id]<300){
      play.add(1);
      oscP5.send(play, direccion);
      
      pause.add(0);
      oscP5.send(pause, direccion);
      
      volumen.add(0.4);
      oscP5.send(volumen, direccion);
      
    }else if(Y[id]>=300 && Y[id]<350){
      play.add(1);
      oscP5.send(play, direccion);
      
      pause.add(0);
      oscP5.send(pause, direccion);
      
      volumen.add(0.3);
      oscP5.send(volumen, direccion);
      
    }else if(Y[id]>=350 && Y[id]<400){
      play.add(1);
      oscP5.send(play, direccion);
      
      pause.add(0);
      oscP5.send(pause, direccion);
      
      volumen.add(0.2);
      oscP5.send(volumen, direccion);
      
    }else if(Y[id]>=400 && Y[id]<450){
      play.add(1);
      oscP5.send(play, direccion);
      
      pause.add(0);
      oscP5.send(pause, direccion);
      
      volumen.add(0.1);
      oscP5.send(volumen, direccion);
    }else if(Y[id]>=450 && Y[id]<500){
      play.add(1);
      oscP5.send(play, direccion);
      
      pause.add(0);
      oscP5.send(pause, direccion);
      
      volumen.add(0);
      oscP5.send(volumen, direccion);
      
    }else if(Y[id]>500){
      play.add(0);
      oscP5.send(play, direccion);
      
      pause.add(1);
      oscP5.send(pause, direccion);
      
      volumen.add(0);
      oscP5.send(volumen, direccion);
    }
}

/*
//Solo muestra la informacion 1 vez
void addTuioObject(TuioObject objetoTuio){
  //retorna el ID del marcador
  println(objetoTuio.getSymbolID());
  //retorna la posicion en X
  println(objetoTuio.getX());
  //retorna la posicion en Y
  println(objetoTuio.getY());
  //retorna la cantidad de veces que el objeto apareció
  println(objetoTuio.getSessionID());
}
*/


void updateTuioObject(TuioObject objetoTuio){
  //Para normalizar las variables, es necesario multiplicarlo por el tamaño de la ventana del proyecto
  if(objetoTuio.getSymbolID() == 29){
    int id = 0;
    X[id] = int(objetoTuio.getX()*width);
    Y[id] = int(objetoTuio.getY()*height);
    R[id] = 255;
    G[id] = 255;
    B[id] = 255;
    soundControl(id);
  }
  /*if(objetoTuio.getSymbolID() == 33){
    int id = 1;
    X[id] = int(objetoTuio.getX()*width);
    Y[id] = int(objetoTuio.getY()*height);
    R[id] = 200; 
    G[id] = 200;
    B[id] = 200;
    soundControl(id);
  }*/
}
