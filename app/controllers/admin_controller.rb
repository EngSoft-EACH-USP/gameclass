class AdminController < ApplicationController

  include SessionHelper

  def coaches
    unless is_logged?
      head 401
      return
    end
    unless current_user.kind == 'admin'
      head 403
      return
    end

    @coaches = Coach.includes(:user).all
    render :coaches
  end
end
