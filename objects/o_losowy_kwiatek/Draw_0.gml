if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
stream+=0.05

draw_sprite_ext(jakagrafika,0,x,y+10,1+sin(stream*2)/30,1-sin(stream*2)/10,sin(stream/4)*20,c_white,1)
}

