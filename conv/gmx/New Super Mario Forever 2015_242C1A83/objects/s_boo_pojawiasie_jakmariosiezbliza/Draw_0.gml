if global.pauza=0{

y+=sin(degtorad(stream*5))/10
koko=point_distance(xstart,ystart,obj_mario.x,obj_mario.y)
if koko>250 {x=-1000;oddalony_za_ekran=1}
if koko<250 {x=xstart;oddalony_za_ekran=0}

if x>obj_mario.x {kierunek=-1}
if x<obj_mario.x {kierunek=1}
        
    
// gfx
stream+=0.25

}


if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<global.odleglosc_ekranu*1.1 {

draw_sprite_ext(s_boo_glow,0,x+18,y+18+sin(degtorad(stream*10))*5,1,1,0,c_white,(250-(koko))/200)
draw_sprite_ext(s_shy_boo_2,stream,x+18,y+18+sin(degtorad(stream*10))*5,kierunek,1,0,c_white,(250-(koko))/200)


}

