class CoachDetailsController < ApplicationController
  def show
    begin
      @user = User.find(params[:id])

    rescue ActiveRecord::RecordNotFound => e
      false
    end
  end 
end
