if global.pauza=0
    {

    kat+=0.20
    for(i=0;i<8;i+=1)
        {
        dodo[i].doceluj_x=x+sin(degtorad(kat+i*45))*odleglosc
        dodo[i].doceluj_y=y+cos(degtorad(kat+i*45))*odleglosc
        
        
        }
    
    
    
    
    
    }





/*kat=0
odleglosc=0
for (i=0;i<4;i+=1)
    {
    dodo[i]=instance_create(x,y,obj_lift)
    dodo[i].rodzaj=100
    }

/* */
/*  */
