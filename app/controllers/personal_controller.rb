
class PersonalController < ApplicationController

	include SessionHelper

	def home
		if is_logged?
			@user = current_user
			render :home
		else
			redirect_to '/login'
		end
	end

end
