class CoachesController < ApplicationController
  # GET /coaches or /coaches.json
  def index
    @coaches = Coach.all
  end
end
