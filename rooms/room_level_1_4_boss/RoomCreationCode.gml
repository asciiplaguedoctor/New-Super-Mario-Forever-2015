script_keys_init()
global.last_level_played=4 // zmieniaj to dla kazdego etapu, zmienna dla check pointa
global.level_death_pit=1230 // w jakim Y mario ma kusic od dziury
global.is_subplatforms=1
global.level_music=4
global.time=500
global.notime=0 // wlacz na 1 jak etap nie ma miec czasu (do etapow bonusowych)
global.coins_red_time=0
global.get_lives_by_jumping_on_enemies=0
global.background_kind=6
global.scroll_kind=1000
global.szybciej_aktywuj_scrool_y=0
global.fog=0
global.przetransferuj_czas=0


// stworz koniec etapu jezeli nie istnieje
if instance_number(o_koniec_etapu)=0 {instance_create(-10000,-10000,o_koniec_etapu)}
global.pauza=0



// USTAW PARAMETRY KLUCZA
global.map_key_level_id=171675
global.map_key_level_collected=1
global.game_over=1000