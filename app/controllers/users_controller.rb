class UsersController < ApplicationController
	def create
		@user = User.create(user_params)
	end

	private

	def user_params
		params.require(:user).permit(:avatar. :first_name, :last_name, :email, :password, :password_confirmation)
	end
	def index
	end
	def show
		@user=User.find(params[:id])
	end

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.
end