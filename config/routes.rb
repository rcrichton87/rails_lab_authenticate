Rails.application.routes.draw do
  
  devise_for :users
  get 'playlists' => 'playlists#index'

end
