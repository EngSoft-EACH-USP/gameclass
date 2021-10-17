
class PersonalController < ApplicationController

	include SessionManager

	def home
		if isLogged?
			@user = current_user
			render :home
		else
			redirect_to '/login'
		end
	end

end
