class GamesController < ApplicationController
    


    def show_games
        render :games
    end


    def choose_game
        
        if game[:chosen]
            games = ["lol", "plants vs zombies", "csgo"]
            Games.find(params[:id])
            redirect_to '/listar_coaches'
        end
    end

end


