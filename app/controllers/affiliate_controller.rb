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
      @affiliates = AffiliateRequest.all
    end
  end
end
