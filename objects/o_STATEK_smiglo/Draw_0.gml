if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu
    {
    draw_sprite_ext(global.gfx_smiglo,0,x,y,koko1,koko2,sin(degtorad(koko3/20))*2+360,c_white,1)
    draw_sprite_ext(global.gfx_smiglo,0,x,y,koko4,koko2,sin(degtorad(koko3/20))*2+360,c_white,1)
    
    
    draw_sprite_ext(s_swing_hit,0,x-80,y-20+sin(degtorad(koko3/20))*2,2,-3,90,c_white,0.5*sin(degtorad(koko3*50)))
    draw_sprite_ext(s_swing_hit,0,x+110,y+20-sin(degtorad(koko3/20))*2,2,-3,-90,c_white,0.5*sin(degtorad(koko3*50)))
    
    
    
    if global.pauza=0 {koko1=abs(sin(degtorad(koko3*1.2)))/1.2+0.2;koko4=abs(sin(degtorad(koko3*1.2+90)))/1.2+0.2;koko3+=20}
    }



