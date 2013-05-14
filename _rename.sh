## remove the prefixes
#for file in *.png ; do mv $file `echo $file | sed 's/-/_/'` ; done
#for file in *.png ; do mv $file `echo $file | sed 's/^ic_//'` ; done
#for file in *.png ; do mv $file `echo $file | sed 's/^but_//'` ; done
#
## fix the postfixes (can only be run once!)
#for file in *.png ; do mv $file `echo $file | sed 's/.png$/_normal.png/'` ; done
#for file in *.png ; do mv $file `echo $file | sed 's/_o_normal.png$/_highlighted.png/'` ; done

# Icon
cp Icon_1024.png Icon-72.png
cp Icon_1024.png Icon-Small-50.png
cp Icon_1024.png Icon-Small.png
cp Icon_1024.png Icon.png

# player screen
for file in *.png ; do mv $file `echo $file | sed 's/^favourite_sml_normal/player_star_selected/'` ; done
for file in *.png ; do mv $file `echo $file | sed 's/^favourites_sml_off_normal/player_star_normal/'` ; done

# home  screen
for file in *.png ; do mv $file `echo $file | sed 's/^playlist_/home_playlists_/'` ; done
for file in *.png ; do mv $file `echo $file | sed 's/^latest/home_latest/'` ; done
for file in *.png ; do mv $file `echo $file | sed 's/^favourites/home_favourites/'` ; done
for file in *.png ; do mv $file `echo $file | sed 's/^stations/home_stations/'` ; done
for file in *.png ; do cp $file `echo $file | sed 's/^radio_normal/home_myradio_normal/'` ; done
for file in *.png ; do cp $file `echo $file | sed 's/^radio_highlighted/home_myradio_highlighted/'` ; done
for file in *.png ; do mv $file `echo $file | sed 's/^saved_normal/home_saved_normal/'` ; done
for file in *.png ; do mv $file `echo $file | sed 's/^saved_highlighted/home_saved_highlighted/'` ; done
for file in *.png ; do mv $file `echo $file | sed 's/^saved_update/home_saved_update/'` ; done
for file in *.png ; do mv $file `echo $file | sed 's/^settings_sml_normal/home_settings_normal/'` ; done 

#player screen
for file in *.png ; do mv $file `echo $file | sed 's/^heart_highlighted/player_like_highlighted/'` ; done 
for file in *.png ; do mv $file `echo $file | sed 's/^heart_off_normal/player_like_normal/'` ; done 
for file in *.png ; do mv $file `echo $file | sed 's/^heart_on_normal/player_like_selected/'` ; done 

for file in *.png ; do mv $file `echo $file | sed 's/^dislike_highlighted/player_dislike_highlighted/'` ; done 
for file in *.png ; do mv $file `echo $file | sed 's/^dislike_normal/player_dislike_normal/'` ; done 
for file in *.png ; do mv $file `echo $file | sed 's/^dislike_on_normal/player_dislike_selected/'` ; done 

for file in *.png ; do cp $file `echo $file | sed 's/^share2_normal/player_info_view_share/'` ; done 

for file in *.png ; do cp $file `echo $file | sed 's/^saved_sml_normal/player_btn_save/'` ; done 
for file in *.png ; do cp $file `echo $file | sed 's/^share2_blk_normal/player_btn_share/'` ; done 


for file in *.png ; do mv $file `echo $file | sed 's/^white/button_bg/'` ; done
for file in *.png ; do mv $file `echo $file | sed 's/^fbook/button_facebook_bg/'` ; done  

# table view screen
for file in *.png ; do cp $file `echo $file | sed 's/^play_1_highlighted/programme_play/'` ; done  
for file in *.png ; do cp $file `echo $file | sed 's/^preview_highlighted/programme_preview/'` ; done  
for file in *.png ; do cp $file `echo $file | sed 's/^nowPlaying_highlighted/programme_playing/'` ; done  

# browse collection controller
for file in *.png ; do mv $file `echo $file | sed 's/^add_normal/options_add/'` ; done 
for file in *.png ; do mv $file `echo $file | sed 's/^save_offline_normal/options_download/'` ; done 
for file in *.png ; do mv $file `echo $file | sed 's/^edit_normal/options_edit/'` ; done 
for file in *.png ; do mv $file `echo $file | sed 's/^moby_ios1_normal/options_phone/'` ; done 
for file in *.png ; do mv $file `echo $file | sed 's/^share_normal/options_share/'` ; done 
for file in *.png ; do mv $file `echo $file | sed 's/^tick2_normal/options_tick/'` ; done 

# options screen
for file in *.png ; do cp $file `echo $file | sed 's/^options_add/player_option_add/'` ; done 
for file in *.png ; do mv $file `echo $file | sed 's/^repeat_normal/player_option_repeat/'` ; done 
for file in *.png ; do mv $file `echo $file | sed 's/^shuffle_normal/player_option_shuffle/'` ; done 
for file in *.png ; do mv $file `echo $file | sed 's/^album2_blk_normal/player_option_album/'` ; done 
for file in *.png ; do mv $file `echo $file | sed 's/^artist2_blk_normal/player_option_artist/'` ; done 

# my radio screen
for file in *.png ; do mv $file `echo $file | sed 's/^play_2_/myradio_play_/'` ; done 
for file in *.png ; do mv $file `echo $file | sed 's/^pause_/myradio_pause_/'` ; done 