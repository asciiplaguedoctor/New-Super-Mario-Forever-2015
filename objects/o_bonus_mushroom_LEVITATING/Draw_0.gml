
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_set_blend_mode(bm_add)
draw_sprite_ext(s_bonus_efekter,1,x+15,y+5,1.5,1.5,stream/7,c_white,0.4)
draw_set_blend_mode(bm_normal)


draw_sprite_ext(global.gfx_bonus_1,1,x+13,y+9,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),0,c_white,1)
draw_sprite_ext(global.gfx_bonus_2,1,x+13,y+20,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie)))-abs(sin(degtorad(oczkowanie2))),0,c_white,1)
//draw_sprite_ext(s_bonus_marker,1,x,y,1,1,0,c_white,1)}

if global.pauza=0
    {
    y+=sin(degtorad(stream))*1.2
    if sounder<20 {sounder+=1}
    if sounder=15 {sounder=100;SXMS_SFX_PlayExt(40,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    
    animowanie+=5
    if oczkowanie<1010 {oczkowanie=random(1000)}
    if oczkowanie>=990 && oczkowanie<=1000 {oczkowanie=10000}
    if oczkowanie>=10000 {oczkowanie+=1;oczkowanie2+=10}
    if oczkowanie2>360 {oczkowanie2=0;oczkowanie=0}
    stream+=2

    
    
    
    
    
    
    }


    
    }

