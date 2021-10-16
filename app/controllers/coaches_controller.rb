class CoachesController < ApplicationController
  # GET /coaches or /coaches.json
  def index
    @users = User.all
  end
end
