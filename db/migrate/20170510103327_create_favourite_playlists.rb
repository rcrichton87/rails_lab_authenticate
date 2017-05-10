class CreateFavouritePlaylists < ActiveRecord::Migration
  def change
    create_table :favourite_playlists do |t|
      t.references :user, index: true, foreign_key: true
      t.references :playlist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
