//Version 3.7    

global_settings { assumed_gamma 1.0 } 

/*-- library --*/
#include "colors.inc" 

/*-- camera --*/
camera{
    location <8, 4, 8>         
    right     x*image_width/image_height
    look_at <0, 0.4, 0>   
    angle 30
}

/*-- light --*/
light_source {
  <-3, 10, 18>
  color rgb <1.0, 0.9, 0.8>*2.4
}      

/*-- base --*/ 
#declare TxraBase=
texture {
  pigment {
    color rgb 0.6
  }
  finish {
    ambient 0.0
    diffuse 0.6
    specular 0.15
  }
}  

plane {
  y, 0
  texture { TxraBase }
} 

#declare Text_Obj=
text {
  ttf
  "timrom.ttf",
  " Ann 3.7",
  12, 0.0

  scale 0.26
  translate -0.5
  rotate -90*z
  translate 0.5
  translate 0.8*y
} 

#declare Obj=
union {
  //cylinder { 0, 2.1*y, 0.2 texture { Tex_Column } }
  torus { 0.2, 0.04 translate 0.04*y }
  torus { 0.2, 0.04 translate 2.06*y }
  texture { TxraBase }
}

object { Obj }

/*-- tube --*/
                
                


