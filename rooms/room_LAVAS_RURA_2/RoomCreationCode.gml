script_keys_init()
global.last_level_played=6 // zmieniaj to dla kazdego etapu, zmienna dla check pointa
global.level_death_pit=room_height+80 // w jakim Y mario ma kusic od dziury
global.is_subplatforms=1
global.level_music=19
global.time=600
global.notime=0 // wlacz na 1 jak etap nie ma miec czasu (do etapow bonusowych)
global.coins_red_time=0
global.get_lives_by_jumping_on_enemies=0
global.background_kind=75
global.scroll_kind=1100
global.szybciej_aktywuj_scrool_y=-222
global.fog=0
global.przetransferuj_czas=1


// stworz koniec etapu jezeli nie istnieje
if instance_number(o_koniec_etapu)=0 {instance_create(-10000,-10000,o_koniec_etapu)}
global.pauza=0


// SKROT
global.change_position_on_map=173642