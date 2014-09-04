  class RegistrationsController < Devise::RegistrationsController

    private

    def create
      @user = User.new(user_params)

      if @user.save
          redirect_to @user, notice: 'User was successfully created.'
      else
          render action: 'new'
      end
    end

    def sign_up_params
      user_params
    end

    def account_update_params
      user_params
    end

    def user_params
      params.require(:user).permit(arams.require(:user).permit(:avatar, :first_name, :last_name, :email, :password, :password_confirmation)
    end

  end