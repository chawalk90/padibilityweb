class UsersController < ApplicationController
	def index
	end
	def show
		@user=User.find(params[:id])
	end
	def create
  @user = User.create( user_params )
end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def user_params
  params.require(:user).permit(:avatar. :first_name, :last_name, :email)
end
end
