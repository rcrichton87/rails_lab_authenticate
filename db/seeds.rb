User.destroy_all
Playlist.destroy_all

user_one = User.create({email: "ross@somewhere.com", password: 'password2', password_confirmation: 'password2'})
user_two = User.create({email: "robb@somewhere.com", password: 'password1', password_confirmation: 'password1'})

user_one.playlists.create({name: 'Metal', numberofsongs: 666})
user_two.playlists.create({name: 'Ambient', numberofsongs: 42})
user_two.playlists.create({name: 'EDM', numberofsongs: 1})
