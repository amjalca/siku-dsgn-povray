//Version 3.7    

#include "colors.inc"
global_settings { assumed_gamma 1.0 }  
#declare Move = 3.00 * clock;   

background { White}

/*-- library --*/
#include "colors.inc" 

#declare Jump_Start  = 0.5;
#declare Jump_Height = 7;
#if (clock < Jump_Start )
 #declare Camera_Y = 1.00;
#else
 #declare Camera_Y = 1.00
   + Jump_Height*
     0.5*(1-cos(4*pi*(clock-Jump_Start)));
#end

/*-- camera --*/
camera{
    location <8, Camera_Y, 8>         
    right     x*image_width/image_height
    look_at <0, 0.4, 0>   
    angle 35   
    rotate <0, -360*(clock+0.10), 0>
}

/*-- light --*/
light_source {
  <-3, 10, 18>
  color rgb <1.0, 0.9, 0.8>*2.4
}      

/*-- base plano --*/ 
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

 
/*-- base siku ika--*/ 
#declare TxraBaseIka=
texture {
  pigment {
    color rgb <0.60, 0.30, 0.18> 
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
  "",
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
    texture { TxraBaseIka }
    texture { Tex_Metal_A }
  }

  warp { cylindrical }
}
 

/*-- Torus --*/ 

#declare Obj=
union {  
      cylinder { 0, 2.1*y, 0.2 texture { Tex_Column } }
      torus { 0.2, 0.04 translate 0.04*y }
      //torus { 0.2, 0.04 translate 2.06*y }
      texture { TxraBaseIka }
}

//object { Obj }  


#macro Obj4(Angle)
  Obj
  rotate Angle*y
  scale 0.8
  //translate 1.2*x
#end

/*-- tube --*/ 

//#for (Cntr, 0.1, 7, 0.1) 
  //  object { Obj4(260) rotate  Cntr*y translate <0.5,0,0.4> scale <0,Cntr, 0> }  
    //cylinder { 0, Cntr*y, 0.2 texture { Tex_Column } }
//#end 
                
object { Obj4(260) rotate  20*y translate <0.5,0,0.4> scale <0,1,0>}      
object { Obj4(260) rotate  20*y translate <0.7,0,0.2> scale <0,1.1,0>}  
object { Obj4(260) rotate  20*y translate <0.9,0,0.0> scale <0,1.2,0>}
object { Obj4(260) rotate  20*y translate <1.1,0,-0.2> scale <0,1.3,0>}
object { Obj4(260) rotate  20*y translate <1.3,0,-0.4> scale <0,1.4,0>} 
object { Obj4(260) rotate  20*y translate <1.5,0,-0.6> scale <0,1.5,0>}
object { Obj4(260) rotate  20*y translate <1.7,0,-0.8> scale <0,1.6,0>}         

object { Obj4(260) rotate  20*y translate <1.5,0,0.4> scale <0,1,0>}      
object { Obj4(260) rotate  20*y translate <1.7,0,0.2> scale <0,1.1,0>}  
object { Obj4(260) rotate  20*y translate <1.9,0,0.0> scale <0,1.2,0>}
object { Obj4(260) rotate  20*y translate <2.1,0,-0.2> scale <0,1.3,0>}
object { Obj4(260) rotate  20*y translate <2.3,0,-0.4> scale <0,1.4,0>} 
object { Obj4(260) rotate  20*y translate <2.5,0,-0.6> scale <0,1.5,0>}
object { Obj4(260) rotate  20*y translate <2.7,0,-0.8> scale <0,1.6,0>} 
                                                                 
                                                                 
                                                              
                                                              


