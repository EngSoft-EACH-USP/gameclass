class CoachesController < ApplicationController
  # GET /coaches or /coaches.json
  def index
    game_name = params[:game]
    @coaches = Coach.where(game: game_name).all
  end
end
