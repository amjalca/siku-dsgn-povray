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

/*-- tube --*/


