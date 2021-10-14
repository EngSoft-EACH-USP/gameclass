class GamesController < ApplicationController
    
    def show_games
        render :games
    end

    '''def show
        begin
          @game = Game.find(params[:id])
    
        rescue ActiveRecord::RecordNotFound => e
          false
        end
    end'''

   # def choose_game
    #    render :coaches
        # if game[:chosen]
        #    games = ["lol", "plants vs zombies", "csgo"]
        #   Games.find(params[:id])
        #  redirect_to abre aspas /listar_coaches fecha aspas
    #end    
end


