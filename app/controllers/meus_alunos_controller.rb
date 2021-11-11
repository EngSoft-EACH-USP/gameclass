class   MeusAunosController < ApplicationController
    include SessionHelper
def index
    if !is_logged?
      head :unauthorized
    elsif current_user.kind == "coach"
      head :forbidden
    end
  end