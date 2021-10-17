class CoachDetailsController < ApplicationController
  def show
    begin
      @coach = Coach.find(params[:id])

    rescue ActiveRecord::RecordNotFound => e
      false
    end
  end 
end
