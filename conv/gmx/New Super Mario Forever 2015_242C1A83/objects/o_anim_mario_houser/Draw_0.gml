if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 {
draw_sprite_ext(sprite_index,0,x,y,0.45+sin(koko)/80-sin(degtorad(efekter2))*efekter1/250,0.45-sin(koko)/80+sin(degtorad(efekter2))*efekter1/250,360+sin(koko/2)*5,c_white,1)
if random(100)>98 {part_particles_create(global.particle_sys_1,x+20,y-150,global.part_komin_smoke,1)}
// effecter wchodzenia mario

if efekter1>0 {efekter1=efekter1/1.1;efekter2+=30}

koko+=0.1}

