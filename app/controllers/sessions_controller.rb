class SessionsController < ApplicationController
	def new
		redirect_to new_user_session_path
	end
end