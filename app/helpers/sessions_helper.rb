module SessionsHelper
  def sign_in(user)
    # "permanent" = expires: 20.years.from_now.utc
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    return unless cookies[:remember_token]
    @current_user ||= User.find_by(remember_token: cookies[:remember_token])
  end
end