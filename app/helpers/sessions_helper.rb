module SessionsHelper
  def sign_in(user)
    # "permanent" = expires: 20.years.from_now.utc
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end

end
