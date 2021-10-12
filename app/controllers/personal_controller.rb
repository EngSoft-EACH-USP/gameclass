
class PersonalController < ApplicationController

	def home
		if session[:logged]
			render :home
		else
			redirect_to 'login'
		end
	end
	
end
