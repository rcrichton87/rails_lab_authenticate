class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :playlists
  has_many :favourite_playlists
  has_many :favourites, through: :favourite_playlists, source: :playlist 
end
