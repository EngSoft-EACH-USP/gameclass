class WhoamiController < ApplicationController
  def index
    if session[:logged]
      render plain: "You are logged as #{session[:user]}."
    else
      render plain: 'You are not logged in.'
    end
  end
end
