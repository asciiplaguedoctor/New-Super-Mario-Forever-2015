if global.pauza=0{
x+=ixor
y+=iyor
iyor+=0.20
obracacz-=min(10,abs(ixor*3))*kierunek
efekt+=1


if ixor>0 {kierunek=1}
if ixor<0 {kierunek=-1}

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu {instance_destroy()}

    if place_meeting(x,y,obj_mario)
        {
        if efekt>4 {efekt=0;SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);instance_create(x,y,o_fireball_boom);}
        }
        
        
}



draw_sprite_ext(s_mario_hammers,0,x,y,kierunek,1,obracacz,c_white,1)
