
class InfosController < ApplicationController
  include SessionHelper
  
  def show
    if is_logged?
      @user = User.find(params[:id])
      @username = @user.username
      @name = @user.name
      render :forms
    else
      redirect_to '/login'
    end
  end

  def update
    unless is_logged?
      head 401
    end
    unless params[:id] == current_user.id
      head 403
    end

    @user = User.find(params[:id])
    @username = params[:username]
    @name = params[:name]
    password = params[:password]
    @password = password

    if password != params[:check_password]
      @different_passwords = true
      render :forms

    elsif User.find_by(username: @username)
      @username_unavaliable = true
      render :forms

    else
      if @password != ''
        @user.password = @password
      end

      if @username != ''
        @user.username = @username
      end

      if @name != ''
        @user.name = @name
      end

      @user.save
      redirect_to '/me'
    end
  end
end
