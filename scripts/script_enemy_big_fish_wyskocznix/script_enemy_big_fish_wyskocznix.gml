function script_enemy_big_fish_wyskocznix() {
	if global.pauza=0{
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu || seened>0 {

	seened=1
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.2 {instance_destroy()}

	if x>obj_mario.x {kierunek=-1}
	if x<obj_mario.x {kierunek=1}


	if sekwencja=0
	    {
	    direction=direction/1.01
	    if y>obj_mario.y && x<obj_mario.x+150 && x>obj_mario.x-150
	        {
	        sekwencja=1
	        iyor-=wysokosc_skoku
	        }
	    }
	if sekwencja=1
	    {
	    if !place_meeting(x,y,o_water_define) && plusknie=0 {SXMS_SFX_PlayExt(93+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);plusknie=1; part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[0],3);part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[1],3)}
	    if place_meeting(x,y,o_water_define) && plusknie=1 {SXMS_SFX_PlayExt(93+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);plusknie=0; part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[0],3);part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[1],3)}
    
	    if kierunek=-1 {direction=iyor*5}
	    if kierunek=1 {direction=-iyor*5}
	    y+=iyor
	    iyor+=0.1
	    if y>ystart {y=ystart;iyor=0;sekwencja=0}
	    }
    
	// obrywanie
	if energy<=0 {kill=10}

	if kill=10
	    {
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_kill);
	    lolo.kierunek_idzie=kierunek
	    lolo.wodne_spadanie=2
	    lolo.specjalny_kill=5
	    instance_destroy()
	    }
	if kill=1000
	    {
	    obj_mario.power_star_combo+=1
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_kill);
	    lolo.kierunek_idzie=kierunek
	    lolo.wodne_spadanie=2
	    lolo.specjalny_kill=5
	    instance_destroy()
	    } 
	// gfx
	stream+=0.1
	}}


	if image_index=0{
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
	    {
	    draw_sprite_ext(global.gfx_enemy_big_fish_1,0,x,y,-kierunek-sin(stream/2)/50,1+sin(stream/2)/50,sin(stream/4)*10+direction,c_white,1)
	    draw_sprite_ext(global.gfx_enemy_big_fish_2,0,x-15*kierunek,y,-kierunek-sin(stream/2)/20,1+sin(stream/2)/20,sin(stream/2)*40+direction,c_white,1)
    
	    if oberwal>0
	        {
	        draw_set_blend_mode(bm_add)
	        draw_sprite_ext(global.gfx_enemy_big_fish_1,0,x,y,1-sin(stream/2)/10,1+sin(stream/2)/10,sin(stream/4)*10,c_white,oberwal)
	        draw_set_blend_mode(bm_normal)
	        oberwal-=0.1    
	        }
	    }}




}