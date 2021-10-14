Rails.application.routes.draw do
  root 'rails/welcome#index'

  get "/games" => "games#show_games"
  #get "/coaches" => "coaches#choose_game"
end


