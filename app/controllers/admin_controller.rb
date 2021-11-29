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

  def remove
    unless is_logged?
      head 401
      return
    end
    unless current_user.kind == 'admin'
      head 403
      return
    end

    coach = Coach.find_by_id params[:id]
    user = User.find_by_id coach.user_id

    coach.destroy
    user.destroy

    redirect_to '/admin/coaches/'
  end
end
