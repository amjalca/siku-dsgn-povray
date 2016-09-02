//Version 3.7    

global_settings { assumed_gamma 1.0 } 

/*-- library --*/
#include "colors.inc" 

/*-- camera --*/
camera{
    location <8, 4, 8>         
    right     x*image_width/image_height
    look_at <0, 0.4, 0>   
    angle 35
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
  " x ",
  12, 0.0

  scale 0.26
  translate -0.5
  rotate 90*z
  translate 0.5
  translate 0.8*y
}

#declare Tex_Metal_A=
texture {
  pigment {
    gradient y
    color_map {
      [0.35 color rgb <0.65,0.2,0.1> ]
      [0.35 color rgb <0.15,0.2,0.4> ]
    }
    scale 2
  }
  finish {
    ambient 0.0
    diffuse 0.2
    specular 0.4
    roughness 0.1
    metallic

    reflection {
      0.8
      metallic
    }
  }
  normal {
    granite 0.05
    warp {turbulence 1}
    scale 0.1
  }
}

/*-- Column --*/
#declare Tex_Column=
texture {
  object {
    Text_Obj
    texture { TxraBase },
    texture { Tex_Metal_A }
  }

  warp { cylindrical }
}
 

/*-- Torus --*/ 

#declare Obj=
union {
  cylinder { 0, 2.1*y, 0.2 texture { Tex_Column } }
  torus { 0.2, 0.04 translate 0.04*y }
  torus { 0.2, 0.04 translate 2.06*y }
  texture { TxraBase }
}

//object { Obj }  


#macro Obj4(Angle)
  Obj
  rotate Angle*y
  scale 0.8
  //translate 1.2*x
#end

/*-- tube --*/
                
object { Obj4(260) rotate  20*y translate <0.5,0,0.4> }      
object { Obj4(260) rotate  20*y translate <0.7,0,0.2> }  
object { Obj4(260) rotate  20*y translate <0.9,0,0.0> }
object { Obj4(260) rotate  20*y translate <1.1,0,-0.2> }
object { Obj4(260) rotate  20*y translate <1.3,0,-0.4> } 
object { Obj4(260) rotate  20*y translate <1.5,0,-0.6> }
object { Obj4(260) rotate  20*y translate <1.7,0,-0.8> }         

object { Obj4(260) rotate  20*y translate <1.5,0,0.4> }      
object { Obj4(260) rotate  20*y translate <1.7,0,0.2> }  
object { Obj4(260) rotate  20*y translate <1.9,0,0.0> }
object { Obj4(260) rotate  20*y translate <2.1,0,-0.2> }
object { Obj4(260) rotate  20*y translate <2.3,0,-0.4> } 
object { Obj4(260) rotate  20*y translate <2.5,0,-0.6> }
object { Obj4(260) rotate  20*y translate <2.7,0,-0.8> } 
                                                                 
                                                                 
                                                              
                                                              


