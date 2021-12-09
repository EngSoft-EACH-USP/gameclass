class CoachDetailsController < ApplicationController
  def show
    begin
      @coach = Coach.find(params[:id])
      @game = params[:game]

    rescue ActiveRecord::RecordNotFound => e
      false
    end
  end 
end
