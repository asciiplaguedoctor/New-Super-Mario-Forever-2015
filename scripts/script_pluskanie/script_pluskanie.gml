function script_pluskanie() {
	    if !place_meeting(x,y,o_water_define) && plusknie=0 {SXMS_SFX_PlayExt(93+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);plusknie=1; part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[0],3);part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[1],3)}
	    if place_meeting(x,y,o_water_define) && plusknie=1 {SXMS_SFX_PlayExt(93+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);plusknie=0; part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[0],3);part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[1],3)}
    



}
