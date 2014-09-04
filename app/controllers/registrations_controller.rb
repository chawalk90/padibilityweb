  class RegistrationsController < Devise::RegistrationsController

    def create
      @user = User.new(user_params)
    end

    private

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