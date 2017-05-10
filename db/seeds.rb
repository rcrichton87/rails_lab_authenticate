User.destroy_all
Playlist.destroy_all

user_one = User.create({email: "ross@somewhere.com", password: 'password2', password_confirmation: 'password2'})
user_two = User.create({email: "robb@somewhere.com", password: 'password1', password_confirmation: 'password1'})

playlist_one = user_one.playlists.create({name: 'Metal', numberofsongs: 666})

playlist_two = user_two.playlists.create({name: 'Ambient', numberofsongs: 42})

playlist_three = user_two.playlists.create({name: 'EDM', numberofsongs: 1})

FavouritePlaylist.create( { user_id: user_two[:id], playlist_id: playlist_two[:id] } )