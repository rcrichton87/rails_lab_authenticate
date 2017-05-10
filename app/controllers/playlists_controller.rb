class PlaylistsController < ApplicationController

  before_action :authenticate_user!

  def index 
    playlists = current_user.playlists
    render json: playlists
  end

  def favourites
    favourites = current_user.favourites
    render json: favourites
  end

end