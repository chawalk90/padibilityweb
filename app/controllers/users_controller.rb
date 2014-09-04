class UsersController < ApplicationController
	def create(user)
  	end

	def index
	end

	before_action :authenticate_user!
	def show
		@user = User.find(params[:id])
	end

	private

	def user_params
		params.require(:user).permit(:avatar, :first_name, :last_name, :email, :password, :password_confirmation)
	end

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.
end