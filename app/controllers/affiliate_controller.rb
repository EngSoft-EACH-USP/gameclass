class AffiliateController < ApplicationController
  include SessionHelper

  def index
    if !is_logged?
      head :unauthorized
    elsif current_user.kind == "coach" || current_user.kind == "admin"
      head :forbidden
    end
  end

  def send_request
    if !is_logged?
      head :unauthorized
    elsif current_user.kind == "coach" || current_user.kind == "admin"
      head :forbidden
    else
      req = AffiliateRequest.new
      req.user = current_user
      req.description = params[:description]
      req.save
      redirect_to '/me'
    end
  end

  def show
    if !is_logged?
      head :unauthorized
    elsif current_user.kind != 'admin'
      head :forbidden
    else
      @affiliates = AffiliateRequest.where(status: :pending).all
    end
  end

  def update
    if !is_logged?
      head :unauthorized
    elsif current_user.kind != 'admin'
      head :forbidden
    else
      path = request.path
      new_status = path.include?('accept') ? :accepted : :rejected
      @affiliate = AffiliateRequest.find(params[:id])
      @affiliate.status = new_status
      @affiliate.save
      if new_status == :accepted
        @user = User.find_by(id: @affiliate.user_id)
        @user.kind = :coach
        @user.save
      end
      redirect_to admin_affiliate_path
    end
  end
end
