
class PersonalController < ApplicationController

	def home
		if session[:logged]
			@user = User.find_by(id: session[:user_id])
			render :home
		else
			redirect_to '/login'
		end
	end

end
